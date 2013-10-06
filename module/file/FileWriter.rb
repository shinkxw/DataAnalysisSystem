#!/usr/bin/env ruby -w
# encoding: GBK
#�ļ�д����
class FileWriter
  attr_accessor :file_path#�ļ�·��
  attr_accessor :type#�ļ�д�뷽ʽ w ���� a ����
  attr_accessor :encode#�ļ���ȡд������ʽ
  #��ʼ��
  def initialize(file_path,type = 'w',encode = 'GBK')
    @type = type
    @file_path = file_path
    @encode = encode
  end
  #���ַ���д���ļ�
  def write_str(str)
    File.open("#{@file_path}","#{@type}:#{@encode}") do |file|
      file.puts(str)
    end
  end
  #���ַ�������д���ļ�
  def write_str_arr(str_arr)
    File.open("#{@file_path}","#{@type}:#{@encode}") do |file|
      str_arr.each{|str| file.puts(str)}
    end
  end
  #������д���ļ�
  def write_obj(obj)
    File.open("#{@file_path}","#{@type}:#{@encode}") do |file|
      Marshal.dump(obj,file)
    end
  end
end
