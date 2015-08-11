#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
#�ű�������
class ScriptLoader
  #����ָ��Ŀ¼�µ����нű��ļ�
  def self.load_all(lp)
    load(lp)
    each_directory(lp){|dn| load_all(lp + "/" + dn)}
  end
  #����ָ��Ŀ¼�е����нű��ļ�
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

ScriptLoader.load_all($root + "/class")#�����ඨ��
ScriptLoader.load_all($root + "/module")#����ģ��

#MainInterface.new
#ManageAreaInterface.new
DbUpdateInterface.new