#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#数据库实体，可执行查询操作，并附带常用指令集
class DBEntity
  attr_reader :conn
  @@connector = nil
  #设置共用数据库连接器
  def self.set_connector(connector);@@connector = connector end
  #打开一个数据库实例并返回实体,如不输入数据库则只连接数据源
  def self.open(database_name = nil,connector = nil)
    set_connector(connector) if connector
    if @@connector != nil
      conn = @@connector.open_database(database_name)
      if block_given?;begin;yield new(conn);ensure;conn.close;end;end
    else
      puts '请先为DatabaseEntity配置共用数据库连接器！'
    end
  end
  #初始化
  def initialize(conn);@conn,@data = conn,nil end
  #查询数据源中的数据库名
  def get_db_name;query(Sql.get_db_name)['name'] end
  #查询当前数据库所有表的名字
  def get_table_name_arr;query(Sql.get_all_tname)['name'] ||= [] end
  #获得指定表的字段名数组
  def get_table_fname(tn);query(Sql.get_tf_info(tn))['COLUMN_NAME'] end
  #获得指定表的字段信息
  def get_table_fields_info(table_name,key_arr = nil)
    result = query(Sql.get_tf_info(table_name))
    key_arr ? get_need_info(result,key_arr) : result
  end
  #获得指定表的主键名数组
  def get_table_pk_arr(tn);query(Sql.get_table_pk(tn))['COLUMN_NAME'] ||= [] end
  #获得指定表的自增主键名,无则为空
  def get_table_idpk(table_name)
    result = query(Sql.get_table_idpk(table_name))
    result['name'] ? result['name'][0] : ''
  end
  #获得指定表的说明信息
  def get_table_exp(table_name)
    result = query(Sql.get_table_exp(table_name))
    result['value'] ? result['value'][0] : ''
  end
  #获得指定表中字段的说明信息(哈希表形式)
  def get_table_field_exp(table_name)
    result = query(Sql.get_tfield_exp(table_name))
    if result['value']
      alist = [result['objname'],result['value']].transpose
      Hash[*alist.flatten]
    else
      Hash.new('')
    end
  end
  #获取指定表的数据
  def get_table_data(table_name);query(Sql.get_tdata(table_name)) end
  #根据元数据建表
  def create_table(table);execute(Sql.create_table(table)) end
  #删除指定表
  def delete_table(table_name);execute(Sql.delete_table(table_name)) end
  #添加字段
  def add_field(field);execute(Sql.add_field(field)) end
  #删除字段
  def delete_field(field);execute(Sql.delete_field(field)) end
  #修改字段类型
  def update_ftype(field);execute(Sql.update_ftype(field)) end
  #设字段可以为空
  def field_null(field);execute(Sql.field_null(field)) end
  #设字段不可为空
  def field_not_null(field);execute(Sql.field_not_null(field)) end
  #添加表注释
  def add_texp(table);execute(Sql.add_texp(table)) end
  #修改表注释
  def update_texp(table);execute(Sql.update_texp(table)) end
  #添加字段注释
  def add_fexp(field);execute(Sql.add_fexp(field)) end
  #修改字段注释
  def update_fexp(field);execute(Sql.update_fexp(field)) end
  #获得数据库的元数据域
  def get_db_area;DBAnalyzer.new.analyze_db(self) end
  #让数据库执行sql语句
  def execute(sql);sql.split("\nGO\n").each{|part| @conn.Execute(part)} end
  #在查询结果中获得以主要键为索引的所需信息，key_arr第一个元素为主键
  def get_need_info(data_hash,key_arr)
    result = {}
    key_arr.map{|key| data_hash[key]}.transpose.each do |data|
      result[data[0]] = {}
      key_arr.each_index{|i| result[data[0]][key_arr[i]] = data[i]}
    end
    result
  end
  #请求查询并返回hash形式的查询结果
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