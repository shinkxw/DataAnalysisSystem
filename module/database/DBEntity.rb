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
      if block_given?
        begin
          yield new(conn)
        ensure
          conn.close
        end
      end
    else
      puts '请先为DatabaseEntity配置共用数据库连接器！'
    end
  end
  #初始化
  def initialize(conn)
    @conn = conn
    @data = nil
  end
  #查询数据源中的数据库名
  def get_database_name;query("select name from sys.databases")['name'] end
  #查询当前数据库所有表的名字
  def get_table_name_arr;query(Sql.all_table_name)['name'] ||= [] end
  #获得指定表的字段名数组
  def get_table_fields_name(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    query(sql)['COLUMN_NAME']
  end
  #获得指定表的字段信息
  def get_table_fields_info(table_name,key_arr = nil)
    sql = "SELECT * FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    key_arr ? get_need_info(query(sql),key_arr) : query(sql)
  end
  #获得指定表的主键名数组
  def get_table_pk_arr(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE "
    sql << "WHERE TABLE_NAME='#{table_name}'"
    query(sql)['COLUMN_NAME'] ||= []
  end
  #获得指定表的自增主键名,无则为空
  def get_table_idpk(table_name)
    sql = "select name from sys.columns where object_id=object_id("
    sql << "'#{table_name}') and is_identity=1"
    result = query(sql)
    result['name'] ? result['name'][0] : ''
  end
  #获得指定表的说明信息
  def get_table_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', default, default)"
    result = query(sql)
    result['value'] ? result['value'][0] : ''
  end
  #获得指定表中字段的说明信息(哈希表形式)
  def get_table_field_exp(table_name)
    sql = "SELECT *FROM ::fn_listextendedproperty (NULL, 'user', "
    sql << "'dbo', 'table', '#{table_name}', 'column', default)"
    result = query(sql)
    if result['value']
      alist = [result['objname'],result['value']].transpose
      Hash[*alist.flatten]
    else
      Hash.new('')
    end
  end
  #获取指定表的数据,大数据或nil数据影响注意！！
  def get_table_data(table_name)
    sql = "select * from #{table_name}"
    result = query(sql)
    if result[result.keys[0]] != nil
      data_arr = []
      result.keys.each{|key| data_arr << result[key].map{|v| [key,v]}}
      data_arr.transpose.map{|arr| Hash[*arr.flatten]}
    else
      []
    end
  end
  #在查询结果中获得以主要键为索引的所需信息，key_arr第一个元素为主键
  def get_need_info(data_hash,key_arr)
    result = {}
    key_arr.map{|key| data_hash[key]}.transpose.each do |data|
      result[data[0]] = {}
      key_arr.each_index{|i| result[data[0]][key_arr[i]] = data[i]}
    end
    result
  end
  #根据元数据建表
  def create_table(table)
    builder = SqlBuilder.new
    builder.add_table_script(table,sql = '')
    builder.add_table_explanation(table,sql)
    execute(sql)
  end
  #删除指定表
  def delete_table(table_name);execute("DROP TABLE #{table_name}") end
  #添加字段
  def add_field(field)
    
  end
  #删除字段
  def delete_field(field)
    execute("ALTER table #{field.table.name} DROP column #{field.name}")
  end
  #获得数据库的元数据域
  def get_db_area;DBAnalyzer.new.analyze_db(self) end
  #让数据库执行sql语句
  def execute(sql);sql.split("\nGO\n").each{|part| @conn.Execute(part)} end
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
    fields.each_index{|i| data_hash[fields[i]] = data[i]}
    data_hash
  end
end