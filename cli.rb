#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
#脚本加载器
class ScriptLoader
  #加载指定目录下的所有脚本文件
  def self.load_all(lp)
    load(lp)
    each_directory(lp){|dn| load_all(lp + "/" + dn)}
  end
  #加载指定目录中的所有脚本文件
  def self.load(loading_path)
    each_script(loading_path) do |script_name|
      require (loading_path + '/' + script_name)
    end
  end
  def self.each_directory(path)
    Dir.foreach(path){|file| yield file if !file.include?(".")}
  end
  def self.each_script(path)
    Dir.foreach(path){|file| yield file if File.extname(file) == ".rb"}
  end
end

ScriptLoader.load_all($root + "/class")#加载类定义
ScriptLoader.load_all($root + "/module")#加载模块

#MainInterface.new
#ManageAreaInterface.new
DbUpdateInterface.new