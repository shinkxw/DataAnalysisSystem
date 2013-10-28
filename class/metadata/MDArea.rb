#!/usr/bin/env ruby -w
# encoding: GBK
#元数据域类
class MDArea
  include Enumerable
  attr_reader :name_space_arr#命名空间数组
  attr_accessor :name#元数据域名称
  attr_accessor :table_relation_str_arr#表关联信息数组
  attr_accessor :error_relation_str#出错关联语句
  #初始化
  def initialize(name)
    @name = name
    @name_space_arr = []
    @table_relation_str_arr = nil
  end
  #增加命名空间
  def add_name_space(name_space)
    if name_space.class.to_s == "MDNameSpace"
      @name_space_arr.push(name_space)
    else p "MDArea can only put MDNameSpace"
    end
  end
  #得到表的数量
  def get_table_num
    inject(0){|num, name_space| num + name_space.get_table_num}
  end
  #得到包含所有表的数组
  def get_table_arr;map(&:table_arr).flatten end
  #得到键为表名，值为表的哈希表
  def get_table_hash
    table_hash = {}
    get_table_arr.each{|table| table_hash[table.name] = table}
    table_hash
  end
  #查找指定名称的表对象,无则返回nil
  def find_table(table_name)
    @table_hash ||= get_table_hash
    @table_hash[table_name]
  end
  #查找指定名称的命名空间对象,无则返回nil
  def find_name_space(name_space_name);find{|ns| ns.name == name_space_name} end
  #判断元数据域是否有效
  def is_valid?
    p "MDArea: 表名重复" if get_table_name_arr.uniq! != nil
    each{|name_space| name_space.is_valid?};true
  end
  #使用覆盖型方式合成新的元数据域
  def cover_combine(new_area)
    new_area.each do |new_name_space|
      old_name_space = find_name_space(new_name_space.name)
      if old_name_space
        old_name_space.cover_combine(new_name_space)
      else 
        add_name_space(new_name_space)
      end
    end
  end
  #为元数据增加表的关联信息
  def add_table_relation(table_relation_str_arr)
    @error_relation_str = ""
    arr_reader = ArrReader.new(table_relation_str_arr)
    line = arr_reader.now
    while line != nil
      if /^<(?<name>[^ ]+) *\n$/ =~ line
        table_name = name
        table = find_table(table_name)
      elsif /^ *(?<field_name>[^ ]+) +(?<rtable_name>[^ ]+) +(?<rfield_name>[^ ]+) *\n$/ =~ line
        r_table = find_table(rtable_name)
        if table != nil && r_table != nil
          field = table.find_field(field_name)
          r_field = r_table.find_field(rfield_name)
          if field != nil && r_field != nil
            field.change_relation(r_field)
          else
            p "MDArea: 字段#{field_name}或#{rfield_name}未找到"
            @error_relation_str << "<#{table_name}\n" << line
          end
        else
          p "MDArea: 表#{table_name}或#{rtable_name}未找到"
          @error_relation_str << "<#{table_name}\n" << line
        end
      end
      line = arr_reader.next
    end
  end
  #删除所有表中数据
  def delete_all_table_data
    get_table_arr.each{|table| table.data_area = MDDataArea.new}
  end
  #根据表名为表重新分配命名空间
  def reallocate_namespace
    table_arr = get_table_arr
    @name_space_arr = []
    table_arr.each do |table|
      name_space_name = table.name_space_name
      name_space = find_name_space(name_space_name)
      if name_space == nil
        name_space = MDNameSpace.new(name_space_name,"reallocate_namespace")
        add_name_space(name_space)
      end
      name_space.add_table(table)
    end
  end
  #对命名空间中的表进行排序
  def sort_table;each{|name_space| name_space.sort_table_by_name} end
  #获得所有表名的数组
  def get_table_name_arr;map(&:get_table_name_arr).flatten end
  #计算域的特征值
  def get_ev;Compressor.arr_com(get_table_arr.map(&:get_ev)) end
  #迭代命名空间
  def each;@name_space_arr.each{|name_space| yield(name_space)} end
end
