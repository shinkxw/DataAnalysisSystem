#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱȽ���
class MDDiffer
  attr_reader :diff#����ȶ���
  #��ʼ��
  def initialize;reset_diff end
  #�Ƚ�����Ԫ������
  def compare_area(area1,area2)
    reset_diff
    tname_arr1 = area1.get_table_name_arr
    tname_arr2 = area2.get_table_name_arr
    t1_diff = (tname_arr1 - tname_arr2).map{|tn| area1.find_table(tn)}#a1���б�
    t2_diff = (tname_arr2 - tname_arr1).map{|tn| area2.find_table(tn)}#a2���б�
    @diff.add_table_diff(t1_diff,t2_diff)
    (tname_arr1 & tname_arr2).each do |tn|
      compare_table(area1.find_table(tn),area2.find_table(tn))
    end
    @diff
  end
  #�Ƚ�����Ԫ���ݱ�
  def compare_table(table1,table2)
    @diff || reset_diff
    fname_arr1 = table1.get_field_name_arr
    fname_arr2 = table2.get_field_name_arr
    f1_diff = (fname_arr1 - fname_arr2).map{|fn| table1.find_field(fn)}#t1�����ֶ�
    f2_diff = (fname_arr2 - fname_arr1).map{|fn| table2.find_field(fn)}#t2�����ֶ�
    @diff.add_field_diff(f1_diff,f2_diff)
    (fname_arr1 & fname_arr2).each do |fn|
      compare_field(table1.find_field(fn),table2.find_field(fn))
    end
    @diff.add_pro_diff(table1,table2) if table1.explanation != table2.explanation
    @diff.add_pro_diff(table1,table2) if table1.remark != table2.remark
    @diff
  end
  #�Ƚ�����Ԫ�����ֶ�
  def compare_field(field1,field2)
    @diff || reset_diff
    @diff.add_pro_diff(field1,field2) if field1.type != field2.type
    @diff.add_pro_diff(field1,field2) if field1.null != field2.null
    @diff.add_pro_diff(field1,field2) if field1.p != field2.p
    @diff.add_pro_diff(field1,field2) if field1.identity != field2.identity
    @diff.add_pro_diff(field1,field2) if field1.explanation != field2.explanation
    @diff.add_pro_diff(field1,field2) if field1.remark != field2.remark
    @diff
  end
  #���ò����
  def reset_diff;@diff = MDDiff.new end
end