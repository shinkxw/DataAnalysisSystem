#!/usr/bin/env ruby -w
# encoding: GBK
#文件写入器
class FileWriter
  attr_accessor :file_path#文件路径
  attr_accessor :type#文件写入方式 w 覆盖 a 更新
  attr_accessor :encode#文件读取写入编码格式
  #初始化
  def initialize(file_path,type = 'w',encode = 'GBK')
    @type = type
    @file_path = file_path
    @encode = encode
  end
  #将字符串写入文件
  def write_str(str)
    File.open("#{@file_path}","#{@type}:#{@encode}") do |file|
      file.puts(str)
    end
  end
  #将字符串数组写入文件
  def write_str_arr(str_arr)
    File.open("#{@file_path}","#{@type}:#{@encode}") do |file|
      str_arr.each{|str| file.puts(str)}
    end
  end
  #将对象写入文件
  def write_obj(obj)
    File.open("#{@file_path}","#{@type}:#{@encode}") do |file|
      Marshal.dump(obj,file)
    end
  end
end
