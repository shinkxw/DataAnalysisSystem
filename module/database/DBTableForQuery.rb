#!/usr/bin/env ruby -w
# encoding: GBK
#数据库实体，可执行查询操作，并附带常用指令集
class DBTableForQuery
  include Enumerable
  attr_reader :name#表名
  #初始化
  def initialize(table_name, db)
    @name, @db = table_name, db
    @field_hash, @data_arr = {}, nil
  end
  #获得表的说明信息
  def exp
    return @exp if @exp
    result = @db.query(Sql.get_table_exp(@name))
    @exp = result['value'] ? result['value'][0] : ''
  end
  #获得表的视图
  def view;@db.send("VIEW_#{@name}_DISP"); end
  
  #获取指定表的数据
  def get_data(table_name, sql = nil)
    data_hash = query(sql ? sql : Sql.get_tdata(table_name))
    field_name_arr = data_hash.keys
    data_arr = field_name_arr.map{|field_name| data_hash[field_name]}.transpose
    data_hash_arr = data_arr.map{|data| Hash[*field_name_arr.zip(data).flatten]}
    data_hash_arr.each_index {|index| data_hash_arr[index]['i'] = index}
  end
  
  #遍历字段
  def each_field
    get_field_from_db if @field_hash.empty?
    @field_hash.each_value{|field| yield(field)}
  end
  #从数据库加载表字段
  def get_field_from_db;DBAnalyzer.new.analyze_field(self, @db) end
  #增加字段
  def add_field(field);@field_hash[field.name.to_sym] = field end
  #遍历数据
  def each
    get_data_from_db if @data_arr == nil
    @data_arr.each{|data| yield(data)}
  end
  #从数据库加载表数据
  def get_data_from_db
    data_arr = @db.get_table_data(@name)
    data_arr.each{|data_hash| @data_arr << MDData.new(data_hash)}
  end
  #返回字段对象
  def method_missing(method_symbol, *pars)
    get_field_from_db if @field_hash.empty?
    field = @field_hash[method_symbol]
    return field if field
    super
  end
  def inspect;"DBTableForQuery: #{@name}" end
end