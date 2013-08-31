#!/usr/bin/env ruby -w
# encoding: GBK
#元数据表类
class MDTable
  attr_reader :name#表名称
  attr_reader :field_area#表中字段域
  attr_accessor :data_area#表数据域
  attr_accessor :explanation#表说明
  attr_accessor :remark#表备注
  attr_accessor :config#表配置
  #初始化
  def initialize(name,explanation,remark = '',config = '')
    @name = name
    @explanation = explanation
    @remark = remark
    @config = config
    @field_area = MDFieldArea.new
    @data_area = MDDataArea.new
  end
  #增加字段
  def add_field(field);@field_area.add_field(field) end
  #增加数据
  def add_data(data);@data_area.add_data(data) end
  #增加主键
  def add_primary_key(key_name)
    key = @field_area.find{|field| field.name == key_name}
    if key != nil
      key.p = "T"
    else
      p "MDTable: 表#{@name}中不存在主键#{key_name}"
    end
  end
  #更新表
  def update_by(new_table)
    field_name_arr = get_field_name_arr
    new_table.each_field do |new_field|
      old_field = find_field(new_field.name)
      if old_field != nil
        old_field.update_by(new_field)
        field_name_arr.delete(new_field.name)
      else
        add_field(new_field)
        p "MDTable: 表#{@name}增加了新的字段:#{new_field.name}"
        $update_table_name_arr.push(@name)
      end
    end
    field_name_arr.each do |field_name|
      need_delete_field = find_field(field_name)
      field_arr.delete(need_delete_field)
      p "MDTable: 表#{@name}删除了字段:#{field_name}"
      $update_table_name_arr.push(@name)
    end
    @explanation = new_table.explanation if new_table.explanation != ""
    @remark = new_table.remark if new_table.remark != ""
    @data_area = new_table.data_area#数据更新
  end
  #判断表数据是否有效
  def is_valid?
    p "MDNameSpace: 表#{@name}没有字段" if get_field_size == 0
    p "MDNameSpace: 表#{@name}字段名重复" if get_field_name_arr.uniq! != nil
    each_field{|field| field.is_valid?}
    true#单数据键值重复 数据的键值应属于字段 非空字段值判断
  end
  #返回表名的最后一个字段
  def lname;@name.split('_')[-1] end
  #返回表名的最后一个字段的小写形式
  def lname_dc;@name.split('_')[-1].downcase end
  #返回表所在库名的小写形式
  def library_name;@name.split('_')[1].downcase end
  #返回表所属的命名空间名
  def name_space_name;a = @name.split('_');"#{a[0]}_#{a[1]}" end
  #返回标准表的获取值方法名
  def select_method_name;a = @name.split('_');"#{a[1]}_#{a[2]}" end
  #返回所有主键
  def get_primary_key;@field_area.select{|field| field.p == "T"} end
  #获得第一个字段的字段名
  def get_first_field_name;field_arr[0].name end
  #返回所有关联表的字段
  def get_relation;@field_area.select{|field| field.relation != nil} end
  #判断是否与表关联
  def has_relation?;@field_area.find{|field| field.relation != nil} end
  #是否有数据
  def has_data?;@data_area.data_arr.size != 0 end
  #查找字段名并返回该字段,无则返回nil
  def find_field(field_name);@field_area.find{|field| field.name == field_name} end
  #返回字段数
  def get_field_size;@field_area.field_arr.size end
  #获得所有字段名的数组
  def get_field_name_arr;@field_area.map{|field| field.name} end
  #获得所有主键的字段名数组
  def get_primary_key_name_arr
    @field_area.select{|field| field.p == "T"}.map{|field| field.name}
  end
  #获得字段数组
  def field_arr;@field_area.field_arr end
  #迭代字段
  def each_field;@field_area.each{|field| yield(field)} end
  #迭代数据
  def each_data;@data_area.data_arr.each{|data| yield(data)} end
end
