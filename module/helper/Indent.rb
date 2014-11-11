#!/usr/bin/env ruby -w
# encoding: GBK
#�ַ�������������
class Indent
  attr_reader :tab#���������ַ�����
  attr_reader :indent_num#��������
  #��ʼ��
  def initialize(tab = "    ",indent_num = 0)
    @tab = tab
    @indent_num = indent_num
  end
  #��������ַ���
  def t
    @tab * @indent_num
  end
  #��һ��������������ַ���
  def l
    @indent_num += 1
    t
  end
  #��һ��������������ַ���
  def s
    @indent_num -= 1 if @indent_num > 0
    t
  end
  #��һ��������
  def long
    @indent_num += 1
    nil
  end
  #������������
  def to_0
    @indent_num = 0
  end
  
end
