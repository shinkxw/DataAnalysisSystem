#!/usr/bin/env ruby -w
# encoding: GBK
#迁移数据类
class MigrateData
  attr_reader :database_name, :fields, :results, :data_hash
  #初始化
  def initialize(db_name,conn)
    @conn = conn
    open_database(db_name)
  end
  #打开数据库
  def open_database(db_name)
    @db_name = db_name
    @conn.open(@db_name)
  end
  #获得指定表的信息
  def get_table_info(table_name)
    sql = "select * from #{table_name}"
    @results = @conn.query(sql)
    @fields = @conn.fields
    @data_hash = {}
    @fields.each_index{|i| @data_hash[@fields[i]] = @results[i]}
  end
  #生成插入数据脚本
  def insert_data(table_name)
    field_names = @data_hash.keys
    
    prefix_str = "INSERT INTO [#{table_name}]("
    prefix_str << "[DM] ,[MC] ,[SYXX]"
    prefix_str << ") VALUES("
    
    data_arr = field_names.map{|field_name| @data_hash[field_name]}.transpose#转置
    
    istr = ""
    data_arr.each do |data|
      istr << "'11', '品德与生活（社会）', '小学'"
      istr << ")\n"
    end
    

  end
  #根据配置将hash表的内容进行转换
  def convert_data(convert_config)
    @data_hash
    
  end
end






