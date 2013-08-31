#!/usr/bin/env ruby -w
# encoding: GBK
#数据库数据解析器
class DBAnalyzer
  attr_reader :area#分析结果
  #初始化
  def initialize(host, username = 'sa', password = '123456', log = Log.new)
    DBEntity.set_connector(DBConnector.new(host,username,password))
    @area = nil
    @log = log
  end
  #解析数据库数据
  def analyze(database_name)
    @area = MDArea.new(database_name)
    DBEntity.open(database_name) do |db|
      name_space = MDNameSpace.new('temporary','db')
      db.get_table_name_arr.each do |table_name|
        table = analyze_table(table_name, db)
        name_space.add_table(table)
      end
      @area.add_name_space(name_space)
    end
    @area.reallocate_namespace
    @area
  end
  #根据分析数据库中指定表并返回
  def analyze_table(table_name,db)
    table_exp = db.get_table_exp(table_name)
    table = MDTable.new(table_name,table_exp)
    analyze_field(table,db)
    #analyze_data(table,db)
    table
  end
  #分析指定表的字段并添加
  def analyze_field(table,db)
    key_arr = ['COLUMN_NAME','DATA_TYPE','IS_NULLABLE','CHARACTER_MAXIMUM_LENGTH']
    result_hash = db.get_table_fields_info(table.name,key_arr)
    exp_hash = db.get_table_field_exp(table.name)
    pk_arr = db.get_table_pk_arr(table.name)
    idpk = db.get_table_idpk(table.name)
    result_hash.each do |k,v|
      name = k
      type = v['DATA_TYPE']
      null = v['IS_NULLABLE'] == 'YES' ? 'T' : 'F'
      p = pk_arr.include?(k) ? 'T' : 'F'
      explanation = exp_hash[k]
      identity = idpk == k ? 'T' : 'F'
      table.add_field(MDField.new(table,name,type,null,p,explanation,'',identity))
    end
  end
  #分析指定表的数据并添加
  def analyze_data(table,db)
    table.add_data(MDData.new(hash))
  end
end


