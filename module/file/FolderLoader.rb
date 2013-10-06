#!/usr/bin/env ruby -w
# encoding: GBK
#�ļ��ж�ȡ��
class FolderLoader
  attr_reader :folder_Path#�ļ���·��
  attr_reader :file_suffix#�ļ���׺
  attr_accessor :encode#�ļ���ȡд������ʽ
  #��ʼ��
  def initialize(folder_Path,file_suffix = '.txt',encode = 'GBK')
    @folder_Path = folder_Path
    @file_suffix = file_suffix
    @encode = encode
  end
  #��ȡ�����ļ��������ļ��е��ַ�������
  def get_file_arr
    result = []
    file_names = find_file_name
    file_names.each do |file_name|
      result.push(FileLoader.new("#{folder_Path + file_name}").get_str)
    end
    result
  end
  #��ȡ�����ļ��������ļ��е��ַ������������
  def get_file_str_arr
    result = []
    file_names = find_file_name
    file_names.each do |file_name|
      result.push(FileLoader.new("#{folder_Path + file_name}").get_str_arr)
    end
    result
  end
  #��ȡ�����ļ����������ļ���Ϊ��ֵ�Ĺ�ϣ��
  def get_file_str_hash
    result = {}
    file_names = find_file_name
    file_names.each do |file_name|
      result[file_name] = FileLoader.new("#{folder_Path + file_name}").get_str_arr
    end
    result
  end
  #�����ļ����е����з��Ϻ�׺���ļ��������ļ�������
  def find_file_name
    result = []
    regular = /#{@file_suffix}$/
    file_names = Dir.entries(@folder_Path)
    file_names.each do |file_name|
      if file_name =~ regular
        result.push(file_name)
      end
    end
    result
  end
end
