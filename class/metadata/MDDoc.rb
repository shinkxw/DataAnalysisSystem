#!/usr/bin/env ruby -w
# encoding: GBK
#�ĵ���
class MDDoc
  @@export_path = "#{$root}/export"
  @@fs_config = nil#�ļ�ͬ������,@��ͷ�ļ�Ϊ���ͣ�����Ϊ�ļ���
  #�����ĵ�ͬ������
  def self.set_fsc(fsc);@@fs_config = fsc end
  #��ʼ��
  def initialize(type,name,data,file_type = 'txt',encode = 'GBK')
    @type = type#�ĵ���ʽ
    @name = name#�ĵ���
    @data = data#�ĵ�����
    @file_type = file_type#�ļ���ʽ
    @encode = encode#�����ʽ
  end
  #����ĵ����ַ�����ʽ
  def get_data_str;@data end
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
      puts "MDDoc: �޷�������ĵ����#{@data.class}"
    end
    sy_doc if @@fs_config
	path if path 
  end
  #����ͬ������ͬ���ĵ�
  def sy_doc
    case @data.class.to_s
    when "Hash"
      if @@fs_config['@' << @type]
        path = @@fs_config['@' << @type]
        DirManager.remove_dir(path)#ɾ���ļ���
        hash_out("#{path}/")
      end
    when "String"
      if @@fs_config[@name]
        path = "#{@@fs_config[@name]}/#{@name}.#{@file_type}"
        str_out(path)
      end
    end
  end
  #����ϣ��ʽ�ĵ�������ļ���
  def hash_out(path);FolderWriter.new(path,true,'w',@encode).write_str_hash(@data) end
  #���ַ�����ʽ�ĵ�������ļ���
  def str_out(path);FileWriter.new(path,'w',@encode).write_str(@data) end
end
