#!/usr/bin/env ruby -w
# encoding: GBK
#����Ǩ��ʵʩ��
class DataMigrate
  #����config����hash��ת��, ��configΪһ��hash����Ϊ����ֶΣ�ֵΪ�����
  def self.convert_data(data_hash_arr, config)
    key_arr = config.keys
    data_hash_arr.map do |data_hash|
      val_arr = key_arr.map{|key| config[key].call(data_hash, self)}
      Hash[*key_arr.zip(val_arr).flatten]
    end
  end
  #���ɲ������ݽű�
  def self.insert_data(table_name, data_hash_arr, mb = 50)
    field_names = data_hash_arr[0].keys
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    istr = ""
    str_arr = []
    data_hash_arr.each do |data_hash|
      data_arr = field_names.map do |field_name|
        data = data_hash[field_name]
        data =~ /^CAST\(/ ? data : "'#{data}'"
      end
      istr << "#{prefix_str}#{data_arr.join(", ")})\n"
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
  ###����Ϊ��������ת������###
  #����ת��
  def self.content(str);str.gsub(/'/, "''") end
  #����ת��,�����滻��ǩ
  def self.content_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/HrSchoolFiles/, "WZXT/HrSchoolFiles")
    #str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/) {|s| '../../../upfile/' }
    str
  end
  #datetimeת��Ϊ�ַ���
  def self.datetime(t)
    t ? "CAST('#{t.year}-#{t.month}-#{t.day} #{t.hour}:#{t.min}:#{t.sec}' AS DateTime)" : ''
  end
  #datetimeת��Ϊ6λ�ַ���
  def self.time_to_6(time);time.to_s.split(" ")[0].delete("-")[0,5] end
  #datetimeת��Ϊ8λ�ַ���
  def self.time_to_8(time);time.to_s.split(" ")[0].delete("-") end
end