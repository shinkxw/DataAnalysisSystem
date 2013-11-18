#!/usr/bin/env ruby -w
# encoding: GBK
#���ݿ�����Ǩ��ʵʩ��
class DBDataMigrate
  attr_reader :data_hash
  #��ʼ��
  def initialize(db);@db = db end
  #���ָ�������Ϣ
  def get_table_info(main_table_name, join_config = nil)
    if join_config == nil
      @data_hash = @db.get_table_data(main_table_name)
    elsif join_config.class.to_s == 'String'
      @data_hash = {}
      #Ϊ����ӱ���
      hash = @db.get_table_data(main_table_name)
      hash.each{|k,v| @data_hash[main_table_name.split("_")[-1] + '_' + k] = v}
      hash = @db.get_table_data(join_config)
      hash.each{|k,v| @data_hash[join_config.split("_")[-1] + '_' + k] = v}
    else
      @data_hash = @db.query(Sql.get_join_sql(main_table_name, join_config, @db))
    end
  end
  #���ɲ������ݽű�
  def insert_data(table_name, config, mb = 50)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    istr = ""
    str_arr = []
    data_arr.each_index do |i|
      data = data_arr[i].map{|d| d =~ /^CAST\(/ ? d : "'#{d}'"}
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
  #����˵���ļ�
  def out_info(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    ostr = ""
    data_arr.each{|data| ostr << "#{data.join("   ")}\n"}
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.sql").write_str(ostr)
  end
  #���ɸ������ݽű�
  def update_data(table_name, config)
    data_hash = convert_data(config)
    field_names = data_hash.keys
    data_arr = field_names.map{|field_name| data_hash[field_name]}.transpose#ת��
    prefix_str = "UPDATE [dbo].[#{table_name}]\nSET "
    istr = ""
    data_arr.each do |data|
      istr << prefix_str
      istr << "[AUTHOR] = '#{data[7]}'\n"
      istr << "WHERE ID='#{data[0]}' and SCHOOLID='1' and WEBID='3'\nGO\n"
    end
    FileWriter.new(Dir.pwd << "/QY/#{table_name}.sql").write_str(istr)
  end
  #����config��hash������ݽ���ת��
  #��configΪһ��hash����Ϊ����ֶΣ�ֵΪ�����ֶ�(����Ϊnil)�봦������ɵ�hash��
  def convert_data(config)
    out_hash = {}
    config.each_key do |key|
      data_arr = []
      in_name = config[key][:fn]
      proc = DataConver.get_proc(config[key][:p])
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
end