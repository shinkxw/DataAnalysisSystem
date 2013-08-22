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
  #���ָ��������Ϣ
  def get_table_info(table_name)
    sql = "select * from #{table_name}"
    @results = @conn.query(sql)
    @fields = @conn.fields
    @data_hash = {}
    @fields.each_index{|i| @data_hash[@fields[i]] = @results[i]}
  end
  #���ɲ������ݽű�
  def insert_data(table_name,data_hash)
    field_names = data_hash.keys
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    istr = ""
    data_arr.each do |data|
      data.map!{|d| d =~ /^CAST\(/ ? d : "'#{d}'"}
      istr << "#{prefix_str}#{data.join(", ")})\n"
    end
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.sql").write_str(istr)
  end
  #�������ý�hash�������ݽ���ת��
  #��configΪһ��hash������Ϊ����ֶΣ�ֵΪ�����ֶ�(����Ϊnil)�봦��������ɵ�hash��
  def convert_data(table_name,config)
    out_hash = {}
    config.each_key do |key|
      data_arr = []
      in_name = config[key][:fn]
      if in_name != ''
        @data_hash[in_name].each do |data|
          data_arr << config[key][:p].call(data)
        end
      else
        i = 0
        @data_hash[@data_hash.keys[0]].each do |data|
          data_arr << config[key][:p].call(i)
          i += 1
        end
      end
      out_hash[key] = data_arr
    end
    insert_data(table_name,out_hash)
  end
end





