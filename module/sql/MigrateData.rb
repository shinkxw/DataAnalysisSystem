#!/usr/bin/env ruby -w
# encoding: GBK
#Ǩ��������
class MigrateData
  attr_reader :database_name, :fields, :results, :data_hash
  #��ʼ��
  def initialize(db_name,conn)
    @conn = conn
    open_database(db_name)
  end
  #�����ݿ�
  def open_database(db_name)
    @db_name = db_name
    @conn.open(@db_name)
  end
  #���ָ�������Ϣ
  def get_table_info(table_name)
    sql = "select * from #{table_name}"
    @results = @conn.query(sql)
    @fields = @conn.fields
    @data_hash = {}
    @fields.each_index{|i| @data_hash[@fields[i]] = @results[i]}
  end
  #���ɲ������ݽű�
  def insert_data(table_name)
    field_names = @data_hash.keys
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES('"
    data_arr = field_names.map{|field_name| @data_hash[field_name]}.transpose#ת��
    istr = ""
    data_arr.each{|data| istr << "#{prefix_str}#{data.join("', '")}')\n"}
    FileWriter.new(Dir.pwd << "/#{table_name}_QY.sql").write_str(istr)
  end
  #�������ý�hash������ݽ���ת��
  def convert_data(convert_config)
    @data_hash.each_key do |key|
      
      @data_hash[key].each do |data|
        
      end
    end
    
  end
end






