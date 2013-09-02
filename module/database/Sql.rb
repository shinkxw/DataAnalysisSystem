#!/usr/bin/env ruby -w
# encoding: GBK
#数据库脚本输出类
class Sql
  #查询数据源中的数据库名
  def self.get_db_name;'select name from sys.databases' end
  #查询当前数据库所有表
  def self.get_all_tname
    "select name from sysobjects where xtype='U' and category=0"
  end
  #查询指定表的字段信息
  def self.get_tf_info(table_name)
    "SELECT * FROM INFORMATION_SCHEMA.columns WHERE TABLE_NAME= '#{table_name}'"
  end
  #查询指定表的主键信息
  def self.get_table_pk(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "
    sql << "WHERE TABLE_NAME='#{table_name}'"
  end
  #查询指定表的自增主键信息
  def self.get_table_idpk(table_name)
    sql = "select name from sys.columns where object_id=object_id("
    sql << "'#{table_name}') and is_identity=1"
  end
  #查询指定表的说明信息
  def self.get_table_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', default, default)"
  end
  #查询指定表字段的说明信息
  def self.get_tfield_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', 'column', default)"
  end
  #查询指定表的数据
  def self.get_tdata(table_name);"select * from #{table_name}" end
  #根据元数据建表
  def self.create_table(table)
    builder = SqlBuilder.new
    builder.add_table_script(table,sql = '')
    builder.add_table_explanation(table,sql)
    sql
  end
  #删除指定表
  def self.delete_table(table_name);"DROP TABLE #{table_name}" end
  #删除字段
  def self.delete_field(field)
    "ALTER table #{field.table.name} DROP column #{field.name}"
  end
end