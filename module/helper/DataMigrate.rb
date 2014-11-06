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
  #����ı�
  def self.export_text(text_type, data_hash_arr, par = nil, mb = 20)
    text_arr = []
    text = ""
    p "��֧����Ϊ#{text_type}���ı�����" unless (self.respond_to?(text_type))
    self.send(text_type, data_hash_arr, par) do |t|
      text << t
      if text.bytesize > mb.MB
        text_arr << text
        text = ""
      end
    end
    text_arr << text
    text_arr.each_index do |i|
      path = Dir.pwd << "/QY/#{par}_#{i + 1}.sql"
      FileWriter.new(path).write_str(text_arr[i])
    end
  end
  #���ɲ������ݽű�
  def self.insert_data(data_hash_arr, table_name)
    field_names = data_hash_arr[0].keys
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    data_hash_arr.each do |data_hash|
      yield("#{prefix_str}#{field_names.map{|fn| to_sql(data_hash[fn])}.join(", ")})\n")
    end
  end
  #����sql��
  def self.to_sql(data);data =~ /^CAST\(/ ? data : "'#{data}'" end
  ###����Ϊ��������ת������###
  #����ת��
  def self.content(str);str.gsub(/'/, "''") end
  #����ת��,�����滻��ǩ
  def self.content_change(str)
    str = str.gsub(/'/, "''")
    #str = str.gsub(/HrSchoolFiles/, "WZXT/HrSchoolFiles")
    #str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/) {|s| '../../../upfile/' }
    str
  end
  #datetimeת��Ϊ�ַ���
  def self.datetime(t)
    t ? "CAST('#{t.year}-#{t.month}-#{t.day} #{t.hour}:#{t.min}:#{t.sec}' AS DateTime)" : ''
  end
  #��intת��Ϊʱ���ַ���
  def self.int_to_datetime(i);datetime(Time.at(i)) end
  #datetimeת��Ϊ6λ�ַ���
  def self.time_to_6(time);time.to_s.split(" ")[0].delete("-")[0,5] end
  #datetimeת��Ϊ8λ�ַ���
  def self.time_to_8(time);time.to_s.split(" ")[0].delete("-") end
end