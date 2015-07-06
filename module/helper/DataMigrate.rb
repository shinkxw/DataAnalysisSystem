#!/usr/bin/env ruby -w
# encoding: GBK
#数据迁移实施类
class DataMigrate
  #根据config进行hash表转换, 该config为一个hash表，键为结果字段，值为处理块
  def self.convert_data(data_hash_arr, config)
    key_arr = config.keys
    data_hash_arr.map do |data_hash|
      val_arr = key_arr.map{|key| config[key].call(data_hash, self)}
      Hash[*key_arr.zip(val_arr).flatten]
    end
  end
  #输出文本
  def self.export_text(text_type, data_hash_arr, par = nil, mb = 20, suffix = 'sql')
    text_arr = []
    text = ""
    p "不支持名为#{text_type}的文本类型" unless (self.respond_to?(text_type))
    self.send(text_type, data_hash_arr, par) do |t|
      text << t
      if text.bytesize > mb.MB
        text_arr << text
        text = ""
      end
    end
    text_arr << text
    text_arr.each_index do |i|
      path = Dir.pwd << "/QY/#{par}_#{i + 1}.#{suffix}"
      FileWriter.new(path).write_str(text_arr[i])
    end
  end
  #生成插入数据脚本
  def self.insert_data(data_hash_arr, table_name)
    field_names = data_hash_arr[0].keys
    prefix_str = "INSERT INTO [#{table_name}]([#{field_names.join("] ,[")}]) VALUES("
    data_hash_arr.each do |data_hash|
      yield("#{prefix_str}#{field_names.map{|fn| to_sql(data_hash[fn])}.join(", ")})\n")
    end
  end
  #数据sql化
  def self.to_sql(data);data =~ /^CAST\(/ ? data : "'#{data}'" end
  ###以下为常用数据转换方法###
  #正文转换
  def self.content(str);str.gsub(/'/, "''") end
  #正文转换,附带替换标签
  def self.content_change(str)
    str = str.gsub(/'/, "''")
    #str = str.gsub(/HrSchoolFiles/, "WZXT/HrSchoolFiles")
    #str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/) {|s| '../../../upfile/' }
    str
  end
  #datetime转换为字符串
  def self.datetime(t)
    t ? "CAST('#{t.year}-#{t.month}-#{t.day} #{t.hour}:#{t.min}:#{t.sec}' AS DateTime)" : ''
  end
  #将int转换为时间字符串
  def self.int_to_datetime(i);datetime(Time.at(i)) end
  #将str转换为时间字符串
  def self.str_to_datetime(str);datetime(Time.gm(str[0,4], str[4,2], str[6,2], str[8,2], str[10,2], str[12,2])) end
  #datetime转换为6位字符串
  def self.time_to_6(time);time.to_s.split(" ")[0].delete("-")[0,6] end
  #datetime转换为8位字符串
  def self.time_to_8(time);time.to_s.split(" ")[0].delete("-") end
  ###以下为常用数据分析方法
  def self.show_data_tree(data_arr, pid, idfield, pidfield, namefield)
    result = ''
    data_arr.select{|h| h[pidfield] == pid}.each{|p| find_c(p, data_arr, result, idfield, pidfield, namefield)}
    result
  end
  def self.find_c(f, arr, text, idf, pf, nf, depth = 0, tab = '  ')
    text << "#{tab * depth}#{f[nf].fill_cn(24)}    #{f[idf]}\n"
    arr.select{|d| d[pf] == f[idf]}.each{|c| find_c(c, arr, text, idf, pf, nf, depth + 1)}
  end
end