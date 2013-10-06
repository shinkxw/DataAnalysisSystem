#!/usr/bin/env ruby -w
# encoding: GBK
#�ļ���ȡ��
class FileLoader
  attr_reader :file_path#�ļ�·��
  attr_accessor :encode#�ļ���ȡд������ʽ
  #��ʼ��
  def initialize(file_path,encode = 'GBK')
    @file_path,@encode = file_path,encode
  end
  #���ļ�����ַ���
  def get_str
    File.open("#{@file_path}","r:#{@encode}"){|file| return file.read}
  end
  #���ļ�����ַ�������
  def get_str_arr
    File.open("#{@file_path}","r:#{@encode}"){|file| return file.readlines}
  end
  #���ļ���ö���
  def get_obj
    File.open("#{@file_path}","r:#{@encode}") do |file|
      return Marshal.load(file)
    end
  end
end