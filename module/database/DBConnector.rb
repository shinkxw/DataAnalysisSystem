#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#ѡ�񲢷��������ݿ�ʵ��������
class DBConnector
  attr_reader :host, :db_type, :username, :password
  #��ʼ��
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
  #������ָ�����ݿ�ʵ��������
  def open_database(database_name = nil)
    conn = WIN32OLE::new('ADODB.Connection')
    conn.Open(get_connect_string(database_name))
    conn
  end
  #��������ַ���
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
  #����host�ж��Ƿ񱾵�
  def is_local?;@host =~ /^\(local\)/ end
  #����host�ж��Ƿ�Զ��
  def is_remote?;!(@host =~ /^\(local\)/) end
  #����db_type�ж��Ƿ�sql server���ݿ�
  def is_ss?;@db_type == 'ss' end
end