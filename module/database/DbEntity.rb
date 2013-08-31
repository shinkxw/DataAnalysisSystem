#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#数据库实体，可执行查询操作，并附带常用指令集
class DbEntity
  attr_reader :conn
  @@connector = nil
  #设置共用数据库连接器
  def self.set_connector(connector);@@connector = connector end
  #打开一个数据库实例并返回实体,如不输入数据库则只连接数据源
  def self.open(database_name = nil)
    if @@connector != nil
      conn = @@connector.open_database(database_name)
      if block_given?
        begin
          yield new(conn)
        ensure
          conn.close
        end
      end
    else
      puts '请先为DatabaseEntity配置共用数据库连接器！'
    end
  end
  #初始化
  def initialize(conn)
    @conn = conn
    @data = nil
  end
  #查询数据源中的数据库名
  def get_database_name;query("select name from sys.databases")['name'] end
  #查询当前数据库所有表的名字
  def get_table_name_arr
    sql = "select name from sysobjects where xtype='U' and category=0"
    query(sql)['name']
  end
  #获得指定表的字段名数组
  def get_table_fields_name(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    query(sql)['COLUMN_NAME']
  end
  #获得指定表的字段信息
  def get_table_fields_info(table_name)
    sql = "SELECT * FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    query(sql)
  end
  
  
  
  #请求查询并返回hash形式的查询结果
  def query(sql)
    recordset = WIN32OLE.new('ADODB.Recordset')
    recordset.Open(sql, @conn)
    begin
      fields = []
      recordset.Fields.each{|field| fields << field.Name}
      recordset.MoveFirst
      data = recordset.GetRows
    rescue
      data = []
    end
    recordset.Close
    
    data_hash = {}
    fields.each_index{|i| data_hash[fields[i]] = data[i]}
    data_hash
  end
end