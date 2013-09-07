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
  def self.open(database_name = nil,connector = nil)
    set_connector(connector) if connector
    if @@connector != nil
      conn = @@connector.open_database(database_name)
      if block_given?;begin;yield new(conn);ensure;conn.close;end;end
    else
      puts '����ΪDatabaseEntity���ù������ݿ���������'
    end
  end
  #��ʼ��
  def initialize(conn);@conn,@data = conn,nil end
  #��ѯ����Դ�е����ݿ���
  def get_db_name;query(Sql.get_db_name)['name'] end
  #��ѯ��ǰ���ݿ����б������
  def get_table_name_arr;query(Sql.get_all_tname)['name'] ||= [] end
  #���ָ������ֶ�������
  def get_table_fname(tn);query(Sql.get_tf_info(tn))['COLUMN_NAME'] end
  #���ָ������ֶ���Ϣ
  def get_table_fields_info(table_name,key_arr = nil)
    result = query(Sql.get_tf_info(table_name))
    key_arr ? get_need_info(result,key_arr) : result
  end
  #���ָ���������������
  def get_table_pk_arr(tn);query(Sql.get_table_pk(tn))['COLUMN_NAME'] ||= [] end
  #���ָ���������������,����Ϊ��
  def get_table_idpk(table_name)
    result = query(Sql.get_table_idpk(table_name))
    result['name'] ? result['name'][0] : ''
  end
  #���ָ�����˵����Ϣ
  def get_table_exp(table_name)
    result = query(Sql.get_table_exp(table_name))
    result['value'] ? result['value'][0] : ''
  end
  #���ָ�������ֶε�˵����Ϣ(��ϣ����ʽ)
  def get_table_field_exp(table_name)
    result = query(Sql.get_tfield_exp(table_name))
    if result['value']
      alist = [result['objname'],result['value']].transpose
      Hash[*alist.flatten]
    else
      Hash.new('')
    end
  end
  #��ȡָ���������
  def get_table_data(table_name);query(Sql.get_tdata(table_name)) end
  #����Ԫ���ݽ���
  def create_table(table);execute(Sql.create_table(table)) end
  #ɾ��ָ����
  def delete_table(table_name);execute(Sql.delete_table(table_name)) end
  #����ֶ�
  def add_field(field);execute(Sql.add_field(field)) end
  #ɾ���ֶ�
  def delete_field(field);execute(Sql.delete_field(field)) end
  #�޸��ֶ�����
  def update_ftype(field);execute(Sql.update_ftype(field)) end
  #���ֶο���Ϊ��
  def field_null(field);execute(Sql.field_null(field)) end
  #���ֶβ���Ϊ��
  def field_not_null(field);execute(Sql.field_not_null(field)) end
  #��ӱ�ע��
  def add_texp(table);execute(Sql.add_texp(table)) end
  #�޸ı�ע��
  def update_texp(table);execute(Sql.update_texp(table)) end
  #����ֶ�ע��
  def add_fexp(field);execute(Sql.add_fexp(field)) end
  #�޸��ֶ�ע��
  def update_fexp(field);execute(Sql.update_fexp(field)) end
  #������ݿ��Ԫ������
  def get_db_area;DBAnalyzer.new.analyze_db(self) end
  #�����ݿ�ִ��sql���
  def execute(sql);sql.split("\nGO\n").each{|part| @conn.Execute(part)} end
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
    data.each_index{|i| data_hash[fields[i]] = data[i]}
    data_hash
  end
end