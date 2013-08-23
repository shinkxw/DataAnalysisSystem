#!/usr/bin/env ruby -w
# encoding: GBK
#�ĵ���
class MDDoc
  @@export_path = "#{$root}/export"
  #��ʼ��
  def initialize(type,name,data,file_type = "txt")
    @type = type#�ĵ���ʽ
    @name = name#�ĵ���
    @data = data#�ĵ�����
    @file_type = file_type#�ļ���ʽ
  end
  #���չ�������ĵ�
  def export
    case @data.class.to_s
    when "Hash"
      path = "#{@@export_path}/#{@type}/#{@name}"
      DirManager.remove_dir(path)#ɾ���ļ���
      hash_out("#{path}/")
    when "String"
      path = "#{@@export_path}/#{@type}/#{@name}.#{@file_type}"
      str_out(path)
    else
      puts "MDDoc: �޷�������ĵ����#{@data.class.to_s}"
    end
	path if path != nil
  end
  #����ϣ��ʽ�ĵ�������ļ���
  def hash_out(path)
    FolderWriter.new(path,true).write_str_hash(@data)
  end
  #���ַ�����ʽ�ĵ�������ļ���
  def str_out(path)
    FileWriter.new(path).write_str(@data)
  end
end
