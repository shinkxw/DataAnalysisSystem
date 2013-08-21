#!/usr/bin/env ruby -w
# encoding: GBK
#迁移数据类
class MigrateData
  attr_reader :database_name
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
    results = @conn.query(sql)
    puts @conn.fields.join(" ")
    puts results.size
    results.each{|result| puts result.inspect}
  end
end






