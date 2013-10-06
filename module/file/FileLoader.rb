#!/usr/bin/env ruby -w
# encoding: GBK
#文件读取器
class FileLoader
  attr_reader :file_path#文件路径
  attr_accessor :encode#文件读取写入编码格式
  #初始化
  def initialize(file_path,encode = 'GBK')
    @file_path,@encode = file_path,encode
  end
  #从文件获得字符串
  def get_str
    File.open("#{@file_path}","r:#{@encode}"){|file| return file.read}
  end
  #从文件获得字符串数组
  def get_str_arr
    File.open("#{@file_path}","r:#{@encode}"){|file| return file.readlines}
  end
  #从文件获得对象
  def get_obj
    File.open("#{@file_path}","r:#{@encode}") do |file|
      return Marshal.load(file)
    end
  end
end