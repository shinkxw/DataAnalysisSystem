#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#选择并返回与数据库实例的连接
class DBConnector
  attr_reader :host, :db_type, :username, :password
  #初始化
  def initialize(host, options = {})
    @host = case host
            when 'l' then '(local)'
            when 'le' then '(local)\sqlexpress'
            else host
            end
    @db_type = options[:db_type] ? options[:db_type] : 'ss'
    @username = options[:username] ? options[:username] : 'sa'
    @password = options[:password] ? options[:password] : '123456'
  end
  #返回与指定数据库实例的连接
  def open_database(database_name = nil)
    conn = WIN32OLE::new('ADODB.Connection')
    conn.Open(get_connect_string(database_name))
    conn
  end
  #获得连接字符串
  def get_connect_string(db_name = nil)
    provider = case @db_type
               when 'ss' then 'sqloledb'
               when 'ac' then 'Microsoft.Jet.OLEDB.4.0'
               end
    connect_string = "Provider=#{provider};"
    connect_string << "Data Source=#{@host};"
    connect_string << "Initial Catalog=#{db_name};" if db_name && is_ss?
    connect_string << "User ID=#{@username};" if is_remote? && is_ss?
    connect_string << "password=#{@password};" if is_remote? && is_ss?
    connect_string << "Persist Security Info=True;" if is_remote? && is_ss?
    connect_string << "Network Library=dbmssocn;" if is_remote? && is_ss?
    connect_string << "Integrated Security=SSPI;" if is_local? && is_ss?
    connect_string
  end
  #根据host判断是否本地
  def is_local?;@host =~ /^\(local\)/ end
  #根据host判断是否远程
  def is_remote?;!(@host =~ /^\(local\)/) end
  #根据db_type判断是否sql server数据库
  def is_ss?;@db_type == 'ss' end
end