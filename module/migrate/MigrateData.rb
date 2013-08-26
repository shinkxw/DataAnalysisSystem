#!/usr/bin/env ruby -w
# encoding: GBK
#Ǩ��������
class MigrateData
  attr_reader :database_name, :data_hash
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
  def get_table_info(table_name_arr)
    if table_name_arr.size == 1
      @data_hash = @conn.query("select * from #{table_name}")
    else
      @data_hash = {}
      table_name_arr.each do |table_name|
        #Ϊ����ӱ���
        hash = @conn.query("select * from #{table_name}")
        hash.each{|k,v| @data_hash[table_name.split("_")[-1] + '_' + k] = v}
      end
    end
  end
  #���ɲ������ݽű�
  def insert_data(table_name, config)
    data_hash = convert_data(config)
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
  #���ɸ������ݽű�
  def update_data(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    prefix_str = "UPDATE [dbo].[#{table_name}]\nSET "
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    istr = ""
    data_arr.each do |data|
      istr << prefix_str
      istr << "[PUBLISHDATE] = #{data[9]},\n[AUDITTIME] = #{data[19]}\n"
      istr << "WHERE ID='#{data[0]}' and WEBID='#{data[2]}'\nGO\n"
    end
    FileWriter.new(Dir.pwd << "/UP/#{table_name}.sql").write_str(istr)
  end
  #����config��hash������ݽ���ת��
  #��configΪһ��hash����Ϊ����ֶΣ�ֵΪ�����ֶ�(����Ϊnil)�봦������ɵ�hash��
  def convert_data(config)
    out_hash = {}
    config.each_key do |key|
      data_arr = []
      in_name = config[key][:fn]
      proc = get_proc(config[key][:p])
      if in_name != ''
        @data_hash[in_name].each do |data|
          data_arr << proc.call(data)
        end
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
  def get_proc(proc)
    case proc.class.to_s
    when 'String'
      if ConversionMethod.public_methods.include?(proc.to_sym)
        return ConversionMethod.public_method(proc.to_sym) 
      else
        puts "����ת������������#{proc}"
      end
    when 'Proc'
      return proc
    else puts "����ת����������#{proc}"
    end
    Proc.new{|str| str}
  end
end
