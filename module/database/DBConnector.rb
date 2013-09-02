#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#选择并返回与数据库实例的连接
class DBConnector
  attr_reader :host, :username, :password
  #初始化
  def initialize(host, username = 'sa', password = '123456')
    @host = host
    @username = username
    @password = password
  end
  #返回与指定数据库实例的连接
  def open_database(database_name = nil)
    conn = WIN32OLE::new('ADODB.Connection')
    conn.Open(get_connect_string(database_name))
    conn
  end
  #获得连接字符串
  def get_connect_string(database_name = nil)
    connect_string = "Provider=sqloledb;"
    connect_string << "Data Source=#{@host};"#'(local)\sqlexpress'
    connect_string << "Initial Catalog=#{database_name};" if database_name != nil
    connect_string << "User ID=#{@username};" unless @host =~ /^\(local\)/
    connect_string << "password=#{@password};" unless @host =~ /^\(local\)/
    connect_string << "Persist Security Info=True;" unless @host =~ /^\(local\)/
    connect_string << "Network Library=dbmssocn;" unless @host =~ /^\(local\)/
    connect_string << "Integrated Security=SSPI;" if @host =~ /^\(local\)/
    connect_string
  end
end