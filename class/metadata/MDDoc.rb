#!/usr/bin/env ruby -w
# encoding: GBK
#文档类
class MDDoc
  @@export_path = "#{$root}/export"
  @@fs_config = nil#文件同步配置,@开头的键为类型，其他为文件名
  #设置文档同步配置
  def self.set_fsc(fsc);@@fs_config = fsc end
  #初始化
  def initialize(type,name,data,file_type = 'txt',encode = 'GBK')
    @type = type#文档格式
    @name = name#文档名
    @data = data#文档数据
    @file_type = file_type#文件格式
    @encode = encode#编码格式
  end
  #获得文档的字符串形式
  def get_data_str;@data end
  #按照惯例输出文档
  def export
    case @data.class.to_s
    when "Hash"
      path = "#{@@export_path}/#{@type}/#{@name}"
      DirManager.remove_dir(path)#删除文件夹
      hash_out("#{path}/")
    when "String"
      path = "#{@@export_path}/#{@type}/#{@name}.#{@file_type}"
      str_out(path)
    else
      puts "MDDoc: 无法输出的文档类别：#{@data.class}"
    end
    sy_doc if @@fs_config
	path if path 
  end
  #根据同步配置同步文档
  def sy_doc
    case @data.class.to_s
    when "Hash"
      if @@fs_config['@' << @type]
        path = @@fs_config['@' << @type]
        DirManager.remove_dir(path)#删除文件夹
        hash_out("#{path}/")
      end
    when "String"
      if @@fs_config[@name]
        path = "#{@@fs_config[@name]}/#{@name}.#{@file_type}"
        str_out(path)
      end
    end
  end
  #将哈希形式文档输出至文件夹
  def hash_out(path);FolderWriter.new(path,true,'w',@encode).write_str_hash(@data) end
  #将字符串形式文档输出至文件夹
  def str_out(path);FileWriter.new(path,'w',@encode).write_str(@data) end
end
