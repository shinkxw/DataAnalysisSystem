#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#���ݿ�ʵ�壬��ִ�в�ѯ����������������ָ�
class DBEntity
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
    query(sql)['name'] ||= []
  end
  #���ָ������ֶ�������
  def get_table_fields_name(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    query(sql)['COLUMN_NAME']
  end
  #���ָ������ֶ���Ϣ
  def get_table_fields_info(table_name,key_arr = nil)
    sql = "SELECT * FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    key_arr ? get_need_info(query(sql),key_arr) : query(sql)
  end
  #���ָ���������������
  def get_table_pk_arr(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "
    sql << "WHERE TABLE_NAME='#{table_name}'"
    query(sql)['COLUMN_NAME'] ||= []
  end
  #���ָ���������������,����Ϊ��
  def get_table_idpk(table_name)
    sql = "select name from sys.columns where object_id=object_id("
    sql << "'#{table_name}') and is_identity=1"
    result = query(sql)
    result['name'] ? result['name'][0] : ''
  end
  #���ָ�����˵����Ϣ
  def get_table_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', default, default)"
    result = query(sql)
    result['value'] ? result['value'][0] : ''
  end
  #���ָ�������ֶε�˵����Ϣ(��ϣ����ʽ)
  def get_table_field_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', 'column', default)"
    result = query(sql)
    if result['value']
      alist = [result['objname'],result['value']].transpose
      Hash[*alist.flatten]
    else
      Hash.new([''])
    end
  end
  #�ڲ�ѯ����л������Ҫ��Ϊ������������Ϣ��key_arr��һ��Ԫ��Ϊ����
  def get_need_info(data_hash,key_arr)
    result = {}
    key_arr.map{|key| data_hash[key]}.transpose.each do |data|
      result[data[0]] = {}
      key_arr.each_index{|i| result[data[0]][key_arr[i]] = data[i]}
    end
    result
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