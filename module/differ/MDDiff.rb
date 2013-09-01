#!/usr/bin/env ruby -w
# encoding: GBK
#元数据比较器比较后所生成的差异度对象
class MDDiff
  @@table_pro_arr = %w(explanation)
  @@field_pro_arr = %w(type null p identity explanation)#remark
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
    @pro_diff_hash = {}
  end
  #将数据库1转换为2
  def db_transform(db)
    @t1_diff_arr.each{|table| db.delete_table(table.name)}#删表
    @t2_diff_arr.each{|table| db.create_table(table)}#建表
    #删字段
    #加字段
    
  end
  #显示差异
  def show_diff()
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '表级差异:'
      @t1_diff_arr.each{|table| puts '  ' * 3 << table.gname}
      @t2_diff_arr.each{|table| puts '  ' * 35 << table.gname}
    end
    if @f1_diff_arr != [] || @f1_diff_arr != []
      puts '字段级差异:'
      @f1_diff_arr.each{|field| puts '  ' * 3 << field.table.gname << '  ' << field.gname}
      @f2_diff_arr.each{|field| puts '  ' * 35 << field.table.gname << '  ' << field.gname}
    end
    if @pro_diff_hash.keys != []
      puts '属性级差异:'
      @pro_diff_hash.each do |k,v|
        if k.class.to_s == 'MDTable'
          puts '  ' * 3 << k.gname.ljust(66) << v.gname
        else
          tf_name = "#{k.table.gname}  #{k.gname}"
          puts '  ' * 3 << tf_name.ljust(60) << v.table.gname << '  ' << v.gname
        end
        get_pro_diff(k,v).each do |pro|
          puts '  ' * 6 << pro << ':  ' << k.send(pro).ljust(55) << v.send(pro)
        end
      end
    end
  end
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
  def add_pro_diff(obj1,obj2)
    @pro_diff_hash[obj1] = obj2 if get_pro_diff(obj1,obj2) != []
  end
  #获得两个对象间的差异
  def get_pro_diff(obj1,obj2)
    result = []
    case obj1.class.to_s
    when 'MDTable'
      @@table_pro_arr.each do |pro|
        result << pro if obj1.send(pro) != obj2.send(pro)
      end
    when 'MDField'
      @@field_pro_arr.each do |pro|
        result << pro if obj1.send(pro) != obj2.send(pro)
      end
    end
    result
  end
end