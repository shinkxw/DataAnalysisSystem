#!/usr/bin/env ruby -w
# encoding: GBK
#脚本加载器
class ScriptLoader
  #已加载脚本
  @@required_script = []
  #忽略列表
  @@ignore_list = []
  #加载指定目录下的所有脚本文件
  def self.load_all(loading_path)
    load(loading_path)
    directory_name_arr = get_directory(loading_path)
    directory_name_arr.each do |directory_name|
      new_loading_path = loading_path + "/" + directory_name
      load_all(new_loading_path)
    end
  end
  #加载指定目录中的所有脚本文件
  def self.load(loading_path)
    $:.unshift(loading_path)
    script_name_arr = get_script(loading_path)
    script_name_arr.each do |script_name|
      load_script(script_name)
    end
  end
  #加载指定名称脚本文件
  def self.load_script(script_name)
    #puts "正在载入" + script_name
    #文件名是否在忽略列表内
    if !@@ignore_list.include?(script_name) && script_name.split('_')[-1] != 'ignore.rb'
      require script_name
      @@required_script.push(script_name)
      #puts "已载入" + script_name
      #puts script_name + " 载入完毕"
    end
  end
  #返回指定目录中的所有目录名
  def self.get_directory(path)
    result = []
    Dir.foreach(path) do |file|
      result.push(file) if !file.include?(".")
    end
    result
  end
  #返回指定目录中的所有脚本文件名
  def self.get_script(path)
    result = []
    Dir.foreach(path) do |file|
      if File.extname(file) == ".rb"
        detect_script("#{path}/#{file}")
        result.push(file)
      end
    end
    result
  end
  #检测脚本文件
  def self.detect_script(file_path)
    File.open("#{file_path}","r:GBK") do |file|
      str_arr = file.readlines
      str_arr.each do |str|
        #if后只有=
        puts "#{file_path} 可能存在问题: #{str}" if str[/^[^"]*?if [^=<>!]*?(=(?!=|~)(?!<>!)).*?$/]
      end
    end
  end
  #返回所有被加载过的脚本名
  def self.required_script
    @@required_script
  end
end

#代码加载
#puts "--------------------------------DAS正在加载--------------------------------"
ScriptLoader.load_all($root + "/class")#加载类定义
ScriptLoader.load_all($root + "/module")#加载模块
#puts "--------------------------------DAS加载完毕--------------------------------"
