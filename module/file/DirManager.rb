#!/usr/bin/env ruby -w
# encoding: GBK
#目录管理器
require "fileutils"
class DirManager
  #返回指定目录中的所有目录路径
  def self.get_dir_path(folder_Path)
    result = []
    Dir.foreach(folder_Path) do |file|
      result.push(folder_Path+file) if File.directory?(folder_Path+file) && file != "." && file != ".."
    end
    result
  end
  #返回指定目录中的目录名
  def self.get_dir_name(folder_Path)
    result = []
    Dir.foreach(folder_Path) do |file|
      result.push(file) if File.directory?(folder_Path+"/"+file) && file != "." && file != ".."
    end
    result
  end
  #新建文件夹
  def self.make_dir(folder_Path)
    FileUtils.mkdir_p(folder_Path)
  end
  #删除指定文件夹
  def self.remove_dir(folder_Path)
    FileUtils.remove_dir(folder_Path) if File.directory?(folder_Path)
  end
  #清空指定文件夹（先删除再新建）
  def self.clear_dir(folder_Path)
    remove_dir(folder_Path)
    make_dir(folder_Path)
  end
end
