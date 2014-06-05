#!/usr/bin/env ruby -w
# encoding: GBK
#数据库实体，可执行查询操作，并附带常用指令集
class DBEntityForQuery < DBEntity
  #初始化
  def initialize(conn,db_name)
    super(conn,db_name)
    db_init()
  end
  #初始化数据库表信息
  def db_init
    @table_hash = {}
    get_table_name_arr.each do |table_name|
      @table_hash[table_name.to_sym] = table_name
    end
  end
  #返回表对象
  def method_missing(method_symbol, *pars)
    table = @table_hash[method_symbol]
    return table if table
    super
  end
end