#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#���ݿ�ʵ�壬��ִ�в�ѯ����������������ָ�
class DbEntity
  attr_reader :conn
  @@connector = nil
  #���ù������ݿ�������
  def self.set_connector(connector);@@connector = connector end
  #��һ�����ݿ�ʵ��������ʵ��,�粻�������ݿ���ֻ��������Դ
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
      puts '����ΪDatabaseEntity���ù������ݿ���������'
    end
  end
  #��ʼ��
  def initialize(conn)
    @conn = conn
    @data = nil
  end
  #��ѯ����Դ�е����ݿ���
  def get_database_name;query("select name from sys.databases")['name'] end
  #��ѯ��ǰ���ݿ����б������
  def get_table_name_arr
    sql = "select name from sysobjects where xtype='U' and category=0"
    query(sql)['name']
  end
  #���ָ������ֶ�������
  def get_table_fields_name(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    query(sql)['COLUMN_NAME']
  end
  #���ָ������ֶ���Ϣ
  def get_table_fields_info(table_name)
    sql = "SELECT * FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    query(sql)
  end
  
  
  
  #�����ѯ������hash��ʽ�Ĳ�ѯ���
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