#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#数据库连接与查询
class SqlServer
  attr_accessor :connection, :data, :fields
  attr_reader :username, :password
  #初始化
  def initialize(host, username = 'sa', password='123456')
    @connection = nil
    @data = nil
    @host = host
    @username = username
    @password = password
  end
  #打开连接
  def open(database)
    connection_string = "Provider=sqloledb;"
    connection_string << "Persist Security Info=True;"
    connection_string << "User ID=#{@username};"
    connection_string << "password=#{@password};"
    connection_string << "Initial Catalog=#{database};"
    connection_string << "Data Source=#{@host};"
    connection_string << "Network Library=dbmssocn"
    @connection = WIN32OLE::new('ADODB.Connection')
    @connection.Open(connection_string)
  end
  #请求查询
  def query(sql)
    recordset = WIN32OLE.new('ADODB.Recordset')
    recordset.Open(sql, @connection)
    @fields = []
    recordset.Fields.each{|field| @fields << field.Name}
    begin
      recordset.MoveFirst
      @data = recordset.GetRows
    rescue
      @data = []
    end
    recordset.Close
    @data.transpose
  end
  #关闭连接
  def close;@connection.Close end
end