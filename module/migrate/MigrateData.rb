#!/usr/bin/env ruby -w
# encoding: GBK
#迁移数据类
class MigrateData
  attr_reader :database_name, :data_hash
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
  def get_table_info(main_table_name, join_config = nil)
    if join_config == nil
      @data_hash = @conn.query("select * from #{main_table_name}")
    elsif join_config.class.to_s == 'String'
      @data_hash = {}
      #为键添加表名
      hash = @conn.query("select * from #{main_table_name}")
      hash.each{|k,v| @data_hash[main_table_name.split("_")[-1] + '_' + k] = v}
      hash = @conn.query("select * from #{join_config}")
      hash.each{|k,v| @data_hash[join_config.split("_")[-1] + '_' + k] = v}
    else
      @data_hash = @conn.query(get_join_sql(main_table_name, join_config))
    end
  end
  #获得指定表的字段数据
  def get_table_fields(table_name)
    sql = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.columns "
    sql << "WHERE TABLE_NAME= '#{table_name}'"
    @conn.query(sql)['COLUMN_NAME']
  end
  #生成插入数据脚本
  def insert_data(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#转置
    istr = ""
    data_arr.each do |data|
      data.map!{|d| d =~ /^CAST\(/ ? d : "'#{d}'"}
      istr << "#{prefix_str}#{data.join(", ")})\n"
    end
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.sql").write_str(istr)
  end
  #生成更新数据脚本
  def update_data(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    prefix_str = "UPDATE [dbo].[#{table_name}]\nSET "
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#转置
    istr = ""
    data_arr.each do |data|
      istr << prefix_str
      istr << "[PUBLISHDATE] = #{data[9]},\n[AUDITTIME] = #{data[19]}\n"
      istr << "WHERE ID='#{data[0]}' and WEBID='#{data[2]}'\nGO\n"
    end
    FileWriter.new(Dir.pwd << "/UP/#{table_name}.sql").write_str(istr)
  end
  #根据config将hash表的内容进行转换
  #该config为一个hash表，键为结果字段，值为输入字段(无则为nil)与处理方法组成的hash表
  def convert_data(config)
    out_hash = {}
    config.each_key do |key|
      data_arr = []
      in_name = config[key][:fn]
      proc = get_proc(config[key][:p])
      if in_name != ''
        @data_hash[in_name].each{|data| data_arr << proc.call(data)}
      else
        i = 0
        @data_hash[@data_hash.keys[0]].each do |data|
          data_arr << proc.call(i)
          i += 1
        end
      end
      out_hash[key] = data_arr
    end
    out_hash
  end
  #根据配置获得表连接查询sql语句
  #第一个元素是主表名，第二个元素为hash表，键为表名，值为连接条件hash
  def get_join_sql(mtname, jc)
    select_sql = "SELECT "
    from_sql = "\nFROM "
    fns = get_table_fields(mtname)
    msn = mtname.split("_")[-1]
    select_sql << fns.collect{|fn| "#{msn}.#{fn} as #{msn}_#{fn}"}.join("\n,")
    from_sql << "dbo.#{mtname} AS #{msn}"
    jc.each_key do |tname|
      fns = get_table_fields(tname)
      sn = tname.split("_")[-1]
      fns.each{|fn| select_sql << "\n,#{sn}.[#{fn}] as #{sn}_#{fn}"}
      from_sql << " LEFT OUTER JOIN\ndbo.#{tname} AS #{sn} ON "
      j_config = jc[tname]
      from_sql << j_config.map{|k,v| "#{msn}.#{k} = #{sn}.#{v}"}.join(" AND ")
    end
    select_sql << from_sql
  end
  #获得转换方法
  def get_proc(proc)
    case proc.class.to_s
    when 'String'
      if ConversionMethod.public_methods.include?(proc.to_sym)
        return ConversionMethod.public_method(proc.to_sym) 
      else
        puts "传入转换方法名有误：#{proc}"
      end
    when 'Proc'
      return proc
    else puts "传入转换方法有误：#{proc}"
    end
    Proc.new{|str| str}
  end
end