#!/usr/bin/env ruby -w
# encoding: GBK
#�ļ���д����
class FolderWriter
  attr_reader :folder_Path#�ļ���·��
  attr_reader :mkdir#�ܷ��½��ļ���
  attr_accessor :type#�ļ�д�뷽ʽ w ���� a ����
  attr_accessor :encode#�ļ���ȡд������ʽ
  #��ʼ��
  def initialize(folder_Path,mkdir = false,type = "w",encode = "GBK")
    @type = type
    @mkdir = mkdir
    @folder_Path = folder_Path
    @encode = encode
  end
  #��һ����ϣ���е�����д���ļ��У���ֵΪ�ļ���
  def write_str_hash(file_hash)
    #file_name_arr = file_hash.keys
    file_hash.each do |file_name,str|
      if @mkdir && "#{folder_Path}#{file_name}" =~ /(.+)\/[^\/]+?\.[^\/]+$/
        DirManager.make_dir("#{$1}")
      end
      FileWriter.new("#{folder_Path}#{file_name}").write_str(str)
    end
  end
end
