#!/usr/bin/env ruby -w
# encoding: GBK
#�ļ�ͬ����
class FileSynchronizer
  attr_accessor :file_path#�ļ�·���ؼ�����ͬ��λ��hash��
  #attr_accessor :file_path#�ļ�·��
  #��ʼ��
  def initialize(config)
    
  end
  #����ĵ����ַ�����ʽ
  def get_data_str
    #~ 'HANRU_bz'
    #~ 'HANRU_yw'
    #~ 'HANRU_view'
    #~ 'sql/HANRU/'
    #~ 'view/HANRU/'
  end
  #�����ļ�·���жϲ�ִ���ļ�ͬ������
  def sy_file(path,str)
    puts 'file: ' << path
  end
  #�����ļ���·���жϲ�ִ���ļ���ͬ������
  def sy_folder(path,hash)
    puts 'folder: ' << path
  end
end
