#!/usr/bin/env ruby -w
# encoding: GBK
#�ļ�ͬ����
class FileSynchronizer
  attr_accessor :file_path#�ļ�·���ؼ�����ͬ��λ��hash��
  #attr_accessor :file_path#�ļ�·��
  #��ʼ��
  def initialize(type,name,data,file_type = "txt")
    @type = type#�ĵ���ʽ
    @name = name#�ĵ���
    @data = data#�ĵ�����
    @file_type = file_type#�ļ���ʽ
  end
  #����ĵ����ַ�����ʽ
  def get_data_str
    #~ 'HANRU_bz'
    #~ 'HANRU_yw'
    #~ 'HANRU_view'
    #~ 'sql/HANRU/'
    #~ 'view/HANRU/'
  end
end
