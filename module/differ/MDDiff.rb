#!/usr/bin/env ruby -w
# encoding: GBK
#元数据比较器比较后所生成的差异度对象
class MDDiff
  attr_reader :a1_diff_arr#记录元数据域1中独有的表
  attr_reader :a2_diff_arr#记录元数据域2中独有的表
  attr_reader :t1_diff_arr#记录元数据域1中表独有的字段
  attr_reader :t2_diff_arr#记录元数据域2中表独有的字段
  attr_reader :pro_diff_arr#记录相互差异的对象
  #初始化
  def initialize
    @t1_diff_arr = []
    @t2_diff_arr = []
    @f1_diff_arr = []
    @f2_diff_arr = []
    @pro_diff_hash = []
  end
  #
  
  #添加表级差异
  def add_table_diff(table_arr1,table_arr2)
    @t1_diff_arr += table_arr1
    @t2_diff_arr += table_arr2
  end
  #添加字段级差异
  def add_field_diff(field_arr1,field_arr2)
    @f1_diff_arr += field_arr1
    @f2_diff_arr += field_arr2
  end
  #添加属性级差异,包括表属性及字段属性,放入的是两个对等的对象(表或字段)
  def add_pro_diff(object1,object2)
    pro_diff_hash[object1] = object2
  end
end