#!/usr/bin/env ruby -w
# encoding: GBK
#迁移数据类
class MigrateData
  attr_reader :database_name, :fields, :results
  #初始化
  def initialize(db_name,conn)
    @conn = conn
    open_database(db_name)
  end
  #打开数据库
  def open_database(db_name)
    @db_name = db_name
    @conn.open(@db_name)
  end
  #获得指定表的信息
  def get_table_info(table_name)
    sql = "select * from #{table_name}"
    @results = @conn.query(sql)
    @fields = @conn.fields
  end
  #向指定表中插入信息
  def 
    
  end
  
end






