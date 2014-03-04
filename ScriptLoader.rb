#!/usr/bin/env ruby -w
# encoding: GBK
#�ű�������
class ScriptLoader
  #�Ѽ��ؽű�
  @@required_script = []
  #�����б�
  @@ignore_list = []
  #����ָ��Ŀ¼�µ����нű��ļ�
  def self.load_all(loading_path)
    load(loading_path)
    directory_name_arr = get_directory(loading_path)
    directory_name_arr.each do |directory_name|
      new_loading_path = loading_path + "/" + directory_name
      load_all(new_loading_path)
    end
  end
  #����ָ��Ŀ¼�е����нű��ļ�
  def self.load(loading_path)
    $:.unshift(loading_path)
    script_name_arr = get_script(loading_path)
    script_name_arr.each do |script_name|
      load_script(script_name)
    end
  end
  #����ָ�����ƽű��ļ�
  def self.load_script(script_name)
    #puts "��������" + script_name
    #�ļ����Ƿ��ں����б���
    if !@@ignore_list.include?(script_name) && script_name.split('_')[-1] != 'ignore.rb'
      require script_name
      @@required_script.push(script_name)
      #puts "������" + script_name
      #puts script_name + " �������"
    end
  end
  #����ָ��Ŀ¼�е�����Ŀ¼��
  def self.get_directory(path)
    result = []
    Dir.foreach(path) do |file|
      result.push(file) if !file.include?(".")
    end
    result
  end
  #����ָ��Ŀ¼�е����нű��ļ���
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
  #���ű��ļ�
  def self.detect_script(file_path)
    File.open("#{file_path}","r:GBK") do |file|
      str_arr = file.readlines
      str_arr.each do |str|
        #if��ֻ��=
        puts "#{file_path} ���ܴ�������: #{str}" if str[/^[^"]*?if [^=<>!]*?(=(?!=|~)(?!<>!)).*?$/]
      end
    end
  end
  #�������б����ع��Ľű���
  def self.required_script
    @@required_script
  end
end

#�������
#puts "--------------------------------DAS���ڼ���--------------------------------"
ScriptLoader.load_all($root + "/class")#�����ඨ��
ScriptLoader.load_all($root + "/module")#����ģ��
#puts "--------------------------------DAS�������--------------------------------"
