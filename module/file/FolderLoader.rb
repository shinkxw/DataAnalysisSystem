#!/usr/bin/env ruby -w
# encoding: GBK
#文件夹读取器
class FolderLoader
  attr_reader :folder_Path#文件夹路径
  attr_reader :file_suffix#文件后缀
  attr_accessor :encode#文件读取写入编码格式
  #初始化
  def initialize(folder_Path,file_suffix = '.txt',encode = 'GBK')
    @folder_Path = folder_Path
    @file_suffix = file_suffix
    @encode = encode
  end
  #读取所有文件并返回文件中的字符串数组
  def get_file_arr
    result = []
    file_names = find_file_name
    file_names.each do |file_name|
      result.push(FileLoader.new("#{folder_Path + file_name}").get_str)
    end
    result
  end
  #读取所有文件并返回文件中的字符串数组的数组
  def get_file_str_arr
    result = []
    file_names = find_file_name
    file_names.each do |file_name|
      result.push(FileLoader.new("#{folder_Path + file_name}").get_str_arr)
    end
    result
  end
  #读取所有文件并返回以文件名为键值的哈希表
  def get_file_str_hash
    result = {}
    file_names = find_file_name
    file_names.each do |file_name|
      result[file_name] = FileLoader.new("#{folder_Path + file_name}").get_str_arr
    end
    result
  end
  #查找文件夹中的所有符合后缀的文件，返回文件名数组
  def find_file_name
    result = []
    regular = /#{@file_suffix}$/
    file_names = Dir.entries(@folder_Path)
    file_names.each do |file_name|
      if file_name =~ regular
        result.push(file_name)
      end
    end
    result
  end
end
