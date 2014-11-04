#!/usr/bin/env ruby -w
# encoding: GBK
#Ŀ¼������
require "fileutils"
class DirManager
  #����ָ��Ŀ¼�е�����Ŀ¼·��
  def self.get_dir_path(folder_Path)
    result = []
    Dir.foreach(folder_Path) do |file|
      result.push(folder_Path+file) if File.directory?(folder_Path+file) && file != "." && file != ".."
    end
    result
  end
  #����ָ��Ŀ¼�е�Ŀ¼��
  def self.get_dir_name(folder_Path)
    result = []
    Dir.foreach(folder_Path) do |file|
      result.push(file) if File.directory?(folder_Path+"/"+file) && file != "." && file != ".."
    end
    result
  end
  #�½��ļ���
  def self.make_dir(folder_Path)
    FileUtils.mkdir_p(folder_Path)
  end
  #ɾ��ָ���ļ���
  def self.remove_dir(folder_Path)
    FileUtils.remove_dir(folder_Path) if File.directory?(folder_Path)
  end
  #���ָ���ļ��У���ɾ�����½���
  def self.clear_dir(folder_Path)
    remove_dir(folder_Path)
    make_dir(folder_Path)
  end
end
