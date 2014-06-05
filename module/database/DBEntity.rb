#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#���ݿ�ʵ�壬��ִ�в�ѯ����������������ָ�
class DBEntity
  attr_reader :conn
  @@connector = nil
  #���ù������ݿ�������
  def self.set_connector(connector);@@connector = connector end
  #������ݿ�����
  def self.get_conn(db_name)
    if @@connector
      return @@connector.open_database(db_name)
    else
      puts '����ΪDatabaseEntity���ù������ݿ���������'
    end
  end
  #��һ�����ݿ�ʵ��������ʵ��,�粻�������ݿ���ֻ��������Դ
  def self.open(db_name = nil,connector = nil)
    set_connector(connector) if connector
    conn = get_conn(db_name)
    begin; db = new(conn,db_name);yield db;ensure;db.close if db;end if conn && block_given?
  end
  #��ʼ��
  def initialize(conn,db_name);@conn,@db_name = conn,db_name end
  #��������
  def reset_conn
    close_conn
    @conn = self.class.get_conn(@db_name)
  end
  #�ر�����
  def close_conn;@conn.close end
  #�ر����ݿ�
  def close;close_conn end
  #��ѯ����Դ�е����ݿ���
  def get_db_name;query(Sql.get_db_name)['name'] end
  #��ѯ��ǰ���ݿ����б������
  def get_table_name_arr;query(Sql.get_all_tname)['name'] ||= [] end
  #��ѯ��ǰ���ݿ�������ͼ������
  def get_view_name_arr;query(Sql.get_all_vname)['name'] ||= [] end
  #���ָ������ֶ�������
  def get_table_fname(tn);query(Sql.get_tf_info(tn))['COLUMN_NAME'] end
  #���ָ������ֶ���Ϣ
  def get_table_fields_info(table_name,key_arr = nil)
    #puts "�����#{table_name}���ֶ���Ϣ"
    result = query(Sql.get_tf_info(table_name))
    #puts "��ñ�#{table_name}���ֶ���Ϣ"
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
  #�жϱ����Ƿ�������
  def has_data?(tn);query(Sql.get_tdata_num(tn))[''][0] > 0 end
  #ɾ��������ͼ
  def delete_all_view
    get_view_name_arr.each{|view_name| execute(Sql.delete_view(view_name))}
  end
  #����Ԫ���ݽ���
  def create_table(table);execute(Sql.create_table(table)) end
  #ɾ��ָ����
  def delete_table(table_name);execute(Sql.delete_table(table_name)) end
  #��ɾ���ٽ���
  def rebuild_table(table)
    execute(Sql.delete_table(table.name))
    execute(Sql.create_table(table))
  end
  #����ֶ�
  def add_field(field);execute(Sql.add_field(field)) end
  #ɾ���ֶ�
  def delete_field(field);execute(Sql.delete_field(field)) end
  #�޸��ֶ�����
  def update_ftype(field)
    if field.null == 'T'
      execute(Sql.update_ftype(field))#�ı�����
    else
      execute(Sql.field_not_null(field))
    end
  end
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
  def get_db_area(area_name = 'db_out');DBAnalyzer.new.analyze_db(self,area_name) end
  #ʹ�����ݿ�����ݴ����µĹ�����
  def get_work_area(area_name = 'db_out')
    MDWork_Area.new(get_db_area(area_name)).save_and_close_work_area
  end
  #ͨ���ؽ���ķ�ʽ��д��ṹ
  def rewrite_table(table)
    begin
      old_name = table.name
      table.rename('temporary_table')
      begin;transfer_data(old_name, table)
      ensure;table.rename(old_name)
      end#reset_conn
      transfer_data('temporary_table', table)
    rescue WIN32OLERuntimeError => e
      puts '�����޷�ת��,����������ɾ����������,�Ƿ����?(Y/N)'
      raise e unless KbInput.get_bool
      rebuild_table(table)#�ؽ���
    ensure
      delete_table('temporary_table')#ɾ��
    end
  end
  #����ת��ָ�����Ƶı����ݽ���
  def transfer_data(from_table_name,to_table)
    rebuild_table(to_table)#�ؽ���
    begin;execute(Sql.transfer_data(from_table_name,to_table))#ת������
    rescue WIN32OLERuntimeError => e
      if e.message.force_encoding('GBK').include?('�����ظ���')
        puts 'ԭ���������г�ͻ,����������ɾ����������,�Ƿ����?(Y/N)'
        raise e unless KbInput.get_bool
      else;raise e
      end
    end
    delete_table(from_table_name)#ɾ��
  end
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