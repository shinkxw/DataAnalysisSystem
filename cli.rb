#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
#�ű�������
class ScriptLoader
  #�����б�
  @@ignore_list = []
  #����ָ��Ŀ¼�µ����нű��ļ�
  def self.load_all(lp)
    load(lp)
    get_directory(lp).each{|dn| load_all(lp + "/" + dn)}
  end
  #����ָ��Ŀ¼�е����нű��ļ�
  def self.load(loading_path)
    $:.unshift(loading_path)
    get_script(loading_path).each{|script_name| load_script(script_name)}
  end
  #����ָ�����ƽű��ļ�
  def self.load_script(script_name)
    #�ļ����Ƿ��ں����б���
    if !@@ignore_list.include?(script_name) && script_name.split('_')[-1] != 'ignore.rb'
      require script_name
    end
  end
  #����ָ��Ŀ¼�е�����Ŀ¼��
  def self.get_directory(path)
    result = []
    Dir.foreach(path){|file| result.push(file) if !file.include?(".")}
    result
  end
  #����ָ��Ŀ¼�е����нű��ļ���
  def self.get_script(path)
    result = []
    Dir.foreach(path){|file| result.push(file) if File.extname(file) == ".rb"}
    result
  end
end

ScriptLoader.load_all($root + "/class")#�����ඨ��
ScriptLoader.load_all($root + "/module")#����ģ��

#MainInterface.new
#ManageAreaInterface.new
DbUpdateInterface.new