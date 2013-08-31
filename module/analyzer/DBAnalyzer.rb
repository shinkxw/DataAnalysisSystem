#!/usr/bin/env ruby -w
# encoding: GBK
#数据库数据解析器
class DBAnalyzer
  attr_reader :area#分析结果
  #初始化
  def initialize(host, username = 'sa', password = '123456', log = Log.new)
    DbEntity.set_connector(DbConnector.new(host,username,password))
    @area = nil
    @log = log
  end
  #解析数据库数据
  def analyze(database_name)
    @area = MDArea.new(database_name)
    DbEntity.open(database_name) do |db|
      name_space = MDNameSpace.new('temporary','db')
      db.get_table_name_arr.each do |table_name|
        table = analyze_table(table_name, db)
        name_space.add_table(table)
      end
      @area.add_name_space(name_space)
    end
    @area
  end
  #根据表名分析数据库
  def analyze_table(table_name, db)
    table_exp = db.get_table_exp(table_name)
    table = MDTable.new(table_name,table_exp)

    table.add_field(MDField.new(table,hash[:name],hash[:type],hash[:null],hash[:p],hash[:explanation],hash[:remark],hash[:identity]))
    table.add_data(MDData.new(hash))
    
    table
  end
  #
  def a
    hash = db.get_table_fields_info('EDU_ZZXS_01_01_XSXX')
    p hash['COLUMN_NAME']
    p hash['IS_NULLABLE']
    p hash['DATA_TYPE']
    p hash['CHARACTER_MAXIMUM_LENGTH']
  end
end


