#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱȽ����ȽϺ������ɵĲ���ȶ���
class MDDiff
  attr_reader :a1_diff_arr#��¼Ԫ������1�ж��еı�
  attr_reader :a2_diff_arr#��¼Ԫ������2�ж��еı�
  attr_reader :t1_diff_arr#��¼Ԫ������1�б���е��ֶ�
  attr_reader :t2_diff_arr#��¼Ԫ������2�б���е��ֶ�
  attr_reader :pro_diff_arr#��¼�໥����Ķ���
  #��ʼ��
  def initialize
    @t1_diff_arr = []
    @t2_diff_arr = []
    @f1_diff_arr = []
    @f2_diff_arr = []
    @pro_diff_hash = []
  end
  #
  
  #��ӱ�����
  def add_table_diff(table_arr1,table_arr2)
    @t1_diff_arr += table_arr1
    @t2_diff_arr += table_arr2
  end
  #����ֶμ�����
  def add_field_diff(field_arr1,field_arr2)
    @f1_diff_arr += field_arr1
    @f2_diff_arr += field_arr2
  end
  #������Լ�����,���������Լ��ֶ�����,������������ԵȵĶ���(����ֶ�)
  def add_pro_diff(object1,object2)
    pro_diff_hash[object1] = object2
  end
end