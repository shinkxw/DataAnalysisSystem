#!/usr/bin/env ruby -w
# encoding: GBK
#��־��
class Log
  attr_reader :log_arr#��־��������
  attr_reader :type#��־��������(c ����̨,f �ļ�,cf ����̨+�ļ�)
  attr_reader :write_type#��־д�뷽ʽ(w ����,a ����)
  attr_accessor :name#��־�ļ���
  attr_accessor :path#��־�ļ�Ŀ¼
  #��ʼ��
  def initialize(type = "c",write_type = "a",name = "log",path = "log/")
    @log_arr = []
    @type = type
    @write_type = write_type
    @name = name
    @path = path
  end
  #������־
  def push(log)
    @log_arr.push(log)
    puts log
  end
end
