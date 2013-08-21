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
  def insert_data(table_name,data_hash)
    field_names = data_hash.keys
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES('"
    data_arr = field_names.map{|field_name| @data_hash[field_name]}.transpose#转置
    istr = ""
    data_arr.each{|data| istr << "#{prefix_str}#{data.join("', '")}')\n"}
    FileWriter.new(Dir.pwd << "/#{table_name}_QY.sql").write_str(istr)
  end
  #根据配置将hash表的内容进行转换
  #该config为一个hash表，键为结果字段，值为输入字段(无则为nil)与处理方法组成的hash表
  def convert_data(table_name,config)
    out_hash = {}
    config.each_key do |key|
      data_arr = []
      in_name = config[key]['field_name']
      if in_name != nil
        @data_hash[in_name].each do |data|
          data_arr << config[key]['proc'].call(data)
        end
      else
        @data_hash[@data_hash.keys[0]].each do |i|
          data_arr << config[key]['proc'].call
        end
      end
      out_hash[key] = data_arr
    end
    insert_data(table_name,out_hash)
  end
end






