#!/usr/bin/env ruby -w
# encoding: GBK
#数据库表查询实体
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
  #遍历字段
  def each_field
    get_field_from_db if @field_hash.empty?
    @field_hash.each_value{|field| yield(field)}
  end
  #从数据库加载表字段
  def get_field_from_db;DBAnalyzer.new.analyze_field(self, @db) end
  #增加字段
  def add_field(field);@field_hash[field.name.upcase] = field end
  #遍历数据
  def each
    get_data_from_db if @data_arr == nil
    @data_arr.each{|data| yield(data)}
  end
  #从数据库加载表数据
  def get_data_from_db
    @data_arr = []
    get_field_from_db if @field_hash.empty?
    field_arr = @field_hash.values
    data_hash = @db.query(Sql.get_tdata(@name))
    return if data_hash.empty?
    data_arr = field_arr.map{|field| data_hash[field.name]}.transpose
    data_arr.each{|value_arr| @data_arr << DBDataForQuery.new(field_arr, value_arr)}
  end
  #返回字段对象
  def method_missing(method_symbol, *pars)
    get_field_from_db if @field_hash.empty?
    field = @field_hash[method_symbol.to_s.upcase]
    return field if field
    super
  end
  def inspect;"DBTableForQuery: #{@name}" end
end