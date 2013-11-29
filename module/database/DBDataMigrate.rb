#!/usr/bin/env ruby -w
# encoding: GBK
#数据库数据迁移实施类
class DBDataMigrate
  def initialize(db);@db = db end
  #获得指定表的信息
  def get_table_info(main_table_name, join_config = nil)
    if join_config
      @data_hash = @db.query(Sql.get_join_sql(main_table_name, join_config, @db))
    else
      @data_hash = @db.get_table_data(main_table_name)
    end
    @data_num = @data_hash[@data_hash.keys[0]].size
  end
  #生成插入数据脚本
  def insert_data(table_name, config, mb = 50)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose

    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    istr = ""
    str_arr = []
    data_arr.each do |record|
      data = record.map{|d| d =~ /^CAST\(/ ? d : "'#{d}'"}
      istr << "#{prefix_str}#{data.join(", ")})\n"
      if istr.bytesize > mb.MB
        str_arr << istr
        istr = ""
      end
    end
    str_arr << istr
    str_arr.each_index do |i|
      path = Dir.pwd << "/QY/#{table_name}_#{i + 1}.sql"
      FileWriter.new(path).write_str(str_arr[i])
    end
  end
  #生成说明文件
  def out_info(table_name, config)
    data_arr = get_data_arr(config)
    ostr = ""
    data_arr.each{|data| ostr << "#{data.join("   ")}\n"}
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.txt").write_str(ostr)
  end
  #生成更新数据脚本
  def update_data(table_name, config)
    data_arr = get_data_arr(config)
    prefix_str = "UPDATE [dbo].[#{table_name}]\nSET "
    istr = ''
    data_arr.each do |data|
      istr << prefix_str
      istr << "[AUTHOR] = '#{data[7]}'\n"
      istr << "WHERE ID='#{data[0]}' and SCHOOLID='1' and WEBID='3'\nGO\n"
    end
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.sql").write_str(istr)
  end
  def get_data_arr(config)
    data_hash = convert_data(config)
    data_hash.keys.map{|field_name| data_hash[field_name]}.transpose#转置
  end
  #根据config将hash表的内容进行转换
  #该config为一个hash表，键为结果字段，值为输入字段(无则为nil)与处理方法组成的hash表
  def convert_data(config)
    out_hash = {}
    config.each do |ofname,v|
      data_arr = []
      in_name = v[:fn]
      proc = DataConver.get_proc(v[:p])
      if in_name == ''
        @data_num.times {|i| data_arr << proc.call(i)}
      else
        @data_hash[in_name].each{|data| data_arr << proc.call(data)}
      end
      out_hash[ofname] = data_arr
    end
    out_hash
  end
end