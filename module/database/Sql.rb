#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�ű������
class Sql
  #��ѯ����Դ�е����ݿ���
  def self.get_db_name;'select name from sys.databases' end
  #��ѯ��ǰ���ݿ����б�
  def self.get_all_tname
    "select name from sysobjects where xtype='U' and category=0"
  end
  #��ѯָ������ֶ���Ϣ
  def self.get_tf_info(table_name)
    "SELECT * FROM INFORMATION_SCHEMA.columns WHERE TABLE_NAME= '#{table_name}'"
  end
  #��ѯָ�����������Ϣ
  def self.get_table_pk(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "
    sql << "WHERE TABLE_NAME='#{table_name}'"
  end
  #��ѯָ���������������Ϣ
  def self.get_table_idpk(table_name)
    sql = "select name from sys.columns where object_id=object_id("
    sql << "'#{table_name}') and is_identity=1"
  end
  #��ѯָ�����˵����Ϣ
  def self.get_table_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', default, default)"
  end
  #��ѯָ�����ֶε�˵����Ϣ
  def self.get_tfield_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', 'column', default)"
  end
  #��ѯָ���������
  def self.get_tdata(table_name);"select * from #{table_name}" end
  #����Ԫ���ݽ���
  def self.create_table(table)
    builder = SqlBuilder.new
    builder.add_table_script(table,sql = '')
    builder.add_table_explanation(table,sql)
    sql
  end
  #ɾ��ָ����
  def self.delete_table(table_name);"DROP TABLE #{table_name}" end
  #ɾ���ֶ�
  def self.delete_field(field)
    "ALTER table #{field.table.name} DROP column #{field.name}"
  end
end