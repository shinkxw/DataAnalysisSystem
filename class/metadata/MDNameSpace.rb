#!/usr/bin/env ruby -w
# encoding: GBK
#元数据命名空间类
class MDNameSpace
  include Enumerable
  attr_reader :name#命名空间名称
  attr_reader :table_arr#命名空间中表的数组
  attr_accessor :provider#命名空间提供者
  #初始化
  def initialize(name,provider)
    @name = name
    @table_arr = []
    @provider = provider
  end
  #增加表
  def add_table(table)
    if table.class.to_s == "MDTable"
      @table_arr.push(table)
    else p "MDNameSpace can only put MDTable"
    end
  end
  #查找表名并返回该表对象,无则返回nil
  def find_table(table_name);find{|table| table.name == table_name} end
  #使用覆盖型方式合成新的命名空间
  def cover_combine(new_name_space)
    new_name_space.each do |new_table|
      old_table = find_table(new_table.name)
      if old_table != nil
        old_table = new_table
        p "MDNameSpace: 表#{old_table.name}已被覆盖"
      else 
        add_table(new_table)
      end
    end
  end
  #判断命名空间数据是否有效
  def is_valid?
    each(&:is_valid?)
    true
  end
  #根据表名中的数字对命名空间中的表排序
  def sort_table_by_name
    i = 0
    @table_arr.sort_by! do |t|
      str = t.name.split('_').select{|s| s =~ /^A*\d+$/}.inject(''){|r, n| r + n}
      num = str.delete('A').to_i
      num += 1 if str.include?('A')
      [num, i += 1]
    end
  end
  #返回命名空间中表的数量
  def get_table_num;@table_arr.size end
  #获得命名空间中所有表名的数组
  def get_table_name_arr;map(&:name) end
  #迭代表
  def each;@table_arr.each{|table| yield(table)} end
end