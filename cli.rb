#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
#脚本加载器
class ScriptLoader
  #忽略列表
  @@ignore_list = []
  #加载指定目录下的所有脚本文件
  def self.load_all(lp)
    load(lp)
    get_directory(lp).each{|dn| load_all(lp + "/" + dn)}
  end
  #加载指定目录中的所有脚本文件
  def self.load(loading_path)
    $:.unshift(loading_path)
    get_script(loading_path).each{|script_name| load_script(script_name)}
  end
  #加载指定名称脚本文件
  def self.load_script(script_name)
    #文件名是否在忽略列表内
    if !@@ignore_list.include?(script_name) && script_name.split('_')[-1] != 'ignore.rb'
      require script_name
    end
  end
  #返回指定目录中的所有目录名
  def self.get_directory(path)
    result = []
    Dir.foreach(path){|file| result.push(file) if !file.include?(".")}
    result
  end
  #返回指定目录中的所有脚本文件名
  def self.get_script(path)
    result = []
    Dir.foreach(path){|file| result.push(file) if File.extname(file) == ".rb"}
    result
  end
end

ScriptLoader.load_all($root + "/class")#加载类定义
ScriptLoader.load_all($root + "/module")#加载模块

#MainInterface.new
#ManageAreaInterface.new
DbUpdateInterface.new