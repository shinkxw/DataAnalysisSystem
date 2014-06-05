#!/usr/bin/env ruby -w
# encoding: GBK
require 'win32ole'
#数据库实体，可执行查询操作，并附带常用指令集
class DBEntity
  attr_reader :conn
  @@connector = nil
  #设置共用数据库连接器
  def self.set_connector(connector);@@connector = connector end
  #获得数据库连接
  def self.get_conn(db_name)
    if @@connector
      return @@connector.open_database(db_name)
    else
      puts '请先为DatabaseEntity配置共用数据库连接器！'
    end
  end
  #打开一个数据库实例并返回实体,如不输入数据库则只连接数据源
  def self.open(db_name = nil,connector = nil)
    set_connector(connector) if connector
    conn = get_conn(db_name)
    begin; db = new(conn,db_name);yield db;ensure;db.close if db;end if conn && block_given?
  end
  #初始化
  def initialize(conn,db_name);@conn,@db_name = conn,db_name end
  #重置连接
  def reset_conn
    close_conn
    @conn = self.class.get_conn(@db_name)
  end
  #关闭连接
  def close_conn;@conn.close end
  #关闭数据库
  def close;close_conn end
  #查询数据源中的数据库名
  def get_db_name;query(Sql.get_db_name)['name'] end
  #查询当前数据库所有表的名字
  def get_table_name_arr;query(Sql.get_all_tname)['name'] ||= [] end
  #查询当前数据库所有视图的名字
  def get_view_name_arr;query(Sql.get_all_vname)['name'] ||= [] end
  #获得指定表的字段名数组
  def get_table_fname(tn);query(Sql.get_tf_info(tn))['COLUMN_NAME'] end
  #获得指定表的字段信息
  def get_table_fields_info(table_name,key_arr = nil)
    #puts "请求表#{table_name}的字段信息"
    result = query(Sql.get_tf_info(table_name))
    #puts "获得表#{table_name}的字段信息"
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
  #判断表中是否有数据
  def has_data?(tn);query(Sql.get_tdata_num(tn))[''][0] > 0 end
  #删除所有视图
  def delete_all_view
    get_view_name_arr.each{|view_name| execute(Sql.delete_view(view_name))}
  end
  #根据元数据建表
  def create_table(table);execute(Sql.create_table(table)) end
  #删除指定表
  def delete_table(table_name);execute(Sql.delete_table(table_name)) end
  #先删除再建表
  def rebuild_table(table)
    execute(Sql.delete_table(table.name))
    execute(Sql.create_table(table))
  end
  #添加字段
  def add_field(field);execute(Sql.add_field(field)) end
  #删除字段
  def delete_field(field);execute(Sql.delete_field(field)) end
  #修改字段类型
  def update_ftype(field)
    if field.null == 'T'
      execute(Sql.update_ftype(field))#改变类型
    else
      execute(Sql.field_not_null(field))
    end
  end
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
  def get_db_area(area_name = 'db_out');DBAnalyzer.new.analyze_db(self,area_name) end
  #使用数据库的数据创建新的工作区
  def get_work_area(area_name = 'db_out')
    MDWork_Area.new(get_db_area(area_name)).save_and_close_work_area
  end
  #通过重建表的方式改写表结构
  def rewrite_table(table)
    begin
      old_name = table.name
      table.rename('temporary_table')
      begin;transfer_data(old_name, table)
      ensure;table.rename(old_name)
      end#reset_conn
      transfer_data('temporary_table', table)
    rescue WIN32OLERuntimeError => e
      puts '数据无法转移,继续操作将删除表中数据,是否继续?(Y/N)'
      raise e unless KbInput.get_bool
      rebuild_table(table)#重建表
    ensure
      delete_table('temporary_table')#删表
    end
  end
  #建表并转移指定名称的表数据进入
  def transfer_data(from_table_name,to_table)
    rebuild_table(to_table)#重建表
    begin;execute(Sql.transfer_data(from_table_name,to_table))#转移数据
    rescue WIN32OLERuntimeError => e
      if e.message.force_encoding('GBK').include?('插入重复键')
        puts '原表中数据有冲突,继续操作将删除表中数据,是否继续?(Y/N)'
        raise e unless KbInput.get_bool
      else;raise e
      end
    end
    delete_table(from_table_name)#删表
  end
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