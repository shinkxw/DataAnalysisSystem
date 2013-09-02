#!/usr/bin/env ruby -w
# encoding: GBK
#数据库脚本输出类
class Sql
  def self.all_table_name
    "select name from sysobjects where xtype='U' and category=0"
  end
  
end