#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�ʵ�壬��ִ�в�ѯ����������������ָ�
class DBTableForQuery
  attr_reader :name#����
  #��ʼ��
  def initialize(table_name,db);@name,@db = table_name,db end
  #��ñ����ͼ
  def view;@db.send("VIEW_#{@name}_DISP"); end
  
  #���ָ������ֶ�������
  def get_fname(tn);query(Sql.get_tf_info(tn))['COLUMN_NAME'] end
  #���ָ������ֶ���Ϣ
  def get_fields_info(table_name,key_arr = nil)
    #puts "�����#{table_name}���ֶ���Ϣ"
    result = query(Sql.get_tf_info(table_name))
    #puts "��ñ�#{table_name}���ֶ���Ϣ"
    key_arr ? get_need_info(result,key_arr) : result
  end
  #���ָ���������������
  def get_pk_arr(tn);query(Sql.get_table_pk(tn))['COLUMN_NAME'] ||= [] end
  #���ָ���������������,����Ϊ��
  def get_idpk(table_name)
    result = query(Sql.get_table_idpk(table_name))
    result['name'] ? result['name'][0] : ''
  end
  #���ָ�����˵����Ϣ
  def get_exp(table_name)
    result = query(Sql.get_table_exp(table_name))
    result['value'] ? result['value'][0] : ''
  end
  #���ָ�������ֶε�˵����Ϣ(��ϣ����ʽ)
  def get_field_exp(table_name)
    result = query(Sql.get_tfield_exp(table_name))
    if result['value']
      alist = [result['objname'],result['value']].transpose
      Hash[*alist.flatten]
    else
      Hash.new('')
    end
  end
  #��ȡָ���������
  def get_data(table_name, sql = nil)
    data_hash = query(sql ? sql : Sql.get_tdata(table_name))
    field_name_arr = data_hash.keys
    data_arr = field_name_arr.map{|field_name| data_hash[field_name]}.transpose
    data_hash_arr = data_arr.map{|data| Hash[*field_name_arr.zip(data).flatten]}
    data_hash_arr.each_index {|index| data_hash_arr[index]['i'] = index}
  end
  #�жϱ����Ƿ�������
  def has_data?(tn);query(Sql.get_tdata_num(tn))[''][0] > 0 end
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
  
  def inspect;"DBTableForQuery: #{@name}" end
end