#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ���ѯʵ��
class DBTableForQuery
  include Enumerable
  attr_reader :name#����
  #��ʼ��
  def initialize(table_name, db)
    @name, @db, @data_class = table_name, db, nil
    @field_hash, @data_arr = {}, nil
  end
  #��ñ��˵����Ϣ
  def exp
    return @exp if @exp
    result = @db.query(Sql.get_table_exp(@name))
    @exp = result['value'] ? result['value'][0] : ''
  end
  #��ñ����ͼ
  def view;@db.send("VIEW_#{@name}_DISP"); end
  #��������ֶ���Ϣ
  def fields
    get_field_from_db if @field_hash.empty?
    @field_hash.values
  end
  #�����ֶ�
  def each_field
    get_field_from_db if @field_hash.empty?
    @field_hash.each_value{|field| yield(field)}
  end
  #�����ݿ���ر��ֶ�
  def get_field_from_db
    DBAnalyzer.new.analyze_field(self, @db)
    @data_class = Struct.new("DBData#{@name}", *@field_hash.keys)
  end
  #�����ֶ�
  def add_field(field);@field_hash[field.name.to_sym ] = field end
  #��������
  def each
    get_data_from_db if @data_arr == nil
    @data_arr.each{|data| yield(data)}
  end
  #�����ݿ���ر�����
  def get_data_from_db
    @data_arr = []
    get_field_from_db if @field_hash.empty?
    fname_sym_arr = @field_hash.keys
    data_hash = @db.query(Sql.get_tdata(@name))
    return if data_hash.empty?
    data_arr = fname_sym_arr.map{|fname| data_hash[fname.to_s]}.transpose
    data_arr.each{|value_arr| @data_arr << @data_class.new(*value_arr)}
  end
  #�����ֶζ���
  def method_missing(method_symbol, *pars)
    get_field_from_db if @field_hash.empty?
    field = @field_hash[method_symbol]
    return field if field
    super
  end
  def inspect;"DBTableForQuery: #{@name}" end
end