#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#数据库连接与查询
class SqlServer
  attr_accessor :connection, :data, :fields
  attr_reader :database_name, :username, :password
  #初始化
  def initialize(host, database_name, username = 'sa', password='123456')
    @host = host
    @database_name = database_name
    @username = username
    @password = password
    @connection = WIN32OLE::new('ADODB.Connection')
    @data = nil
  end
  #打开连接，将自己传给闭包
  def open
    @connection.Open(get_connect_string)
    if block_given?
      begin
        yield self
      ensure
        close
      end
    end
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
    @data_hash = {}
    @fields.each_index{|i| @data_hash[@fields[i]] = @data[i]}
    @data_hash
  end
  #获得连接字符串
  def get_connect_string
    connect_string = "Provider=sqloledb;"
    connect_string << "Data Source=#{@host};"#'(local)\sqlexpress'
    connect_string << "Initial Catalog=#{@database_name};"
    connect_string << "User ID=#{@username};" unless @host =~ /^\(local\)/
    connect_string << "password=#{@password};" unless @host =~ /^\(local\)/
    connect_string << "Persist Security Info=True;" unless @host =~ /^\(local\)/
    connect_string << "Network Library=dbmssocn;" unless @host =~ /^\(local\)/
    connect_string << "Integrated Security=SSPI;" if @host =~ /^\(local\)/
    connect_string
  end
  #关闭连接
  def close;@connection.Close end
end