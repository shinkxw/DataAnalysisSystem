#!/usr/bin/env ruby -w
# encoding: GBK
#数据库实体，可执行查询操作，并附带常用指令集
class DBTableForQuery
  attr_reader :name#表名
  #初始化
  def initialize(table_name,db);@name,@db = table_name,db end
  #获得表的视图
  def view;@db.send("VIEW_#{@name}_DISP"); end
  
  #获得指定表的字段名数组
  def get_fname(tn);query(Sql.get_tf_info(tn))['COLUMN_NAME'] end
  #获得指定表的字段信息
  def get_fields_info(table_name,key_arr = nil)
    #puts "请求表#{table_name}的字段信息"
    result = query(Sql.get_tf_info(table_name))
    #puts "获得表#{table_name}的字段信息"
    key_arr ? get_need_info(result,key_arr) : result
  end
  #获得指定表的主键名数组
  def get_pk_arr(tn);query(Sql.get_table_pk(tn))['COLUMN_NAME'] ||= [] end
  #获得指定表的自增主键名,无则为空
  def get_idpk(table_name)
    result = query(Sql.get_table_idpk(table_name))
    result['name'] ? result['name'][0] : ''
  end
  #获得指定表的说明信息
  def get_exp(table_name)
    result = query(Sql.get_table_exp(table_name))
    result['value'] ? result['value'][0] : ''
  end
  #获得指定表中字段的说明信息(哈希表形式)
  def get_field_exp(table_name)
    result = query(Sql.get_tfield_exp(table_name))
    if result['value']
      alist = [result['objname'],result['value']].transpose
      Hash[*alist.flatten]
    else
      Hash.new('')
    end
  end
  #获取指定表的数据
  def get_data(table_name, sql = nil)
    data_hash = query(sql ? sql : Sql.get_tdata(table_name))
    field_name_arr = data_hash.keys
    data_arr = field_name_arr.map{|field_name| data_hash[field_name]}.transpose
    data_hash_arr = data_arr.map{|data| Hash[*field_name_arr.zip(data).flatten]}
    data_hash_arr.each_index {|index| data_hash_arr[index]['i'] = index}
  end
  #判断表中是否有数据
  def has_data?(tn);query(Sql.get_tdata_num(tn))[''][0] > 0 end
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
  
  def inspect;"DBTableForQuery: #{@name}" end
end