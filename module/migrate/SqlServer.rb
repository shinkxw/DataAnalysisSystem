#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#���ݿ��������ѯ
class SqlServer
  attr_accessor :connection, :data, :fields
  attr_reader :username, :password
  #��ʼ��
  def initialize(host, username = 'sa', password='123456')
    @host = host
    @username = username
    @password = password
    @connection = nil
    @data = nil
  end
  #������
  def open(database)
    connect_string = "Provider=sqloledb;"
    connect_string << "Data Source=#{@host};"
    connect_string << "Initial Catalog=#{database};"
    connect_string << "User ID=#{@username};" unless @host =~ /^\(local\)/
    connect_string << "password=#{@password};" unless @host =~ /^\(local\)/
    connect_string << "Persist Security Info=True;" unless @host =~ /^\(local\)/
    connect_string << "Network Library=dbmssocn;" unless @host =~ /^\(local\)/
    connect_string << "Integrated Security=SSPI;" if @host =~ /^\(local\)/
    @connection = WIN32OLE::new('ADODB.Connection')
    @connection.Open(connect_string)
  end
  #�����ѯ
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
  #�ر�����
  def close;@connection.Close end
end