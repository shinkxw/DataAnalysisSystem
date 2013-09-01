#!/usr/bin/env ruby -w
# encoding: GBK
#元数据比较器
class MDDiffer
  attr_reader :diff#差异度对象
  #初始化
  def initialize;reset_diff end
  #比较两个元数据域
  def compare_area(area1,area2)
    reset_diff
    tname_arr1 = area1.get_table_name_arr
    tname_arr2 = area2.get_table_name_arr
    t1_diff = (tname_arr1 - tname_arr2).map{|tn| area1.find_table(tn)}#a1独有表
    t2_diff = (tname_arr2 - tname_arr1).map{|tn| area2.find_table(tn)}#a2独有表
    @diff.add_table_diff(t1_diff,t2_diff)
    (tname_arr1 & tname_arr2).each do |tn|
      compare_table(area1.find_table(tn),area2.find_table(tn))
    end
    @diff
  end
  #比较两个元数据表
  def compare_table(table1,table2)
    @diff || reset_diff
    fname_arr1 = table1.get_field_name_arr
    fname_arr2 = table2.get_field_name_arr
    f1_diff = (fname_arr1 - fname_arr2).map{|fn| table1.find_field(fn)}#t1独有字段
    f2_diff = (fname_arr2 - fname_arr1).map{|fn| table2.find_field(fn)}#t2独有字段
    @diff.add_field_diff(f1_diff,f2_diff)
    (fname_arr1 & fname_arr2).each do |fn|
      compare_field(table1.find_field(fn),table2.find_field(fn))
    end
    @diff.add_pro_diff(table1,table2) if table1.explanation != table2.explanation
    @diff.add_pro_diff(table1,table2) if table1.remark != table2.remark
    @diff
  end
  #比较两个元数据字段
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
  #重置差异度
  def reset_diff;@diff = MDDiff.new end
end