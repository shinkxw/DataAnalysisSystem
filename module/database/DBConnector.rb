#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#ѡ�񲢷��������ݿ�ʵ��������
class DBConnector
  attr_reader :host, :db_type, :username, :password
  @@support_db_type_arr = %w(ss ac mysql)
  #��ʼ��
  def initialize(host, options = {})
    @host = case host
            when 'b' then '(local)'
            when 'be' then '(local)\sqlexpress'
            else host
            end
    @db_type = options[:db_type] ? options[:db_type] : 'ss'
    puts "��֧����������Ϊ#{@db_type}�����ݿ⣡" unless @@support_db_type_arr.include?(@db_type)
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
    case @db_type
    when 'ss' then get_ss_connect_string(db_name)
    when 'ac' then get_ac_connect_string()
    when 'mysql' then get_mysql_connect_string(db_name)
    end
  end
  #���sql server�����ַ���
  def get_ss_connect_string(db_name = nil)
    connect_string = "Provider=sqloledb;Data Source=#{@host};"
    connect_string << "Initial Catalog=#{db_name};" if db_name
    connect_string << "User ID=#{@username};password=#{@password};" if is_remote?
    connect_string << "Persist Security Info=True;Network Library=dbmssocn;" if is_remote?
    connect_string << "Integrated Security=SSPI;" if is_local?
    connect_string
  end
  #���access�����ַ���
  def get_ac_connect_string(); "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=#{@host};" end
  def get_mysql_connect_string(db_name)
    connect_string = "Provider=MSDASQL.1;"
    connect_string << "Persist Security Info=True;" if is_remote?
    connect_string << 'Extended Properties="Driver=MySQL ODBC 5.3 ANSI Driver;'
    connect_string << "SERVER=#{@host};UID=#{@username};PWD=#{@password};DATABASE=#{db_name};"
    connect_string << 'PORT=3306"'#COLUMN_SIZE_S32=1
    connect_string
  end
  #����host�ж��Ƿ񱾵�
  def is_local?;@host =~ /^\(local\)/ end
  #����host�ж��Ƿ�Զ��
  def is_remote?;!(@host =~ /^\(local\)/) end
end