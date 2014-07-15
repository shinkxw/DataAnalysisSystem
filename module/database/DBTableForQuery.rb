#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�ʵ�壬��ִ�в�ѯ����������������ָ�
class DBTableForQuery
  include Enumerable
  attr_reader :name#����
  #��ʼ��
  def initialize(table_name, db)
    @name, @db = table_name, db
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
  
  #��ȡָ���������
  def get_data(table_name, sql = nil)
    data_hash = query(sql ? sql : Sql.get_tdata(table_name))
    field_name_arr = data_hash.keys
    data_arr = field_name_arr.map{|field_name| data_hash[field_name]}.transpose
    data_hash_arr = data_arr.map{|data| Hash[*field_name_arr.zip(data).flatten]}
    data_hash_arr.each_index {|index| data_hash_arr[index]['i'] = index}
  end
  
  #�����ֶ�
  def each_field
    get_field_from_db if @field_hash.empty?
    @field_hash.each_value{|field| yield(field)}
  end
  #�����ݿ���ر��ֶ�
  def get_field_from_db;DBAnalyzer.new.analyze_field(self, @db) end
  #�����ֶ�
  def add_field(field);@field_hash[field.name.to_sym] = field end
  #��������
  def each
    get_data_from_db if @data_arr == nil
    @data_arr.each{|data| yield(data)}
  end
  #�����ݿ���ر�����
  def get_data_from_db
    data_arr = @db.get_table_data(@name)
    data_arr.each{|data_hash| @data_arr << MDData.new(data_hash)}
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