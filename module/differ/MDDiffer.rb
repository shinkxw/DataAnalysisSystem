#!/usr/bin/env ruby -w
# encoding: GBK
#元数据比较器
class MDDiffer
  #自另一个元数据域更新元数据，不考虑命名空间的删除
  def update_by(new_area)
    new_area.each do |new_name_space|
      old_name_space = find_name_space(new_name_space.name)
      if old_name_space != nil
        old_name_space.update_by(new_name_space)
      else
        add_name_space(new_name_space)
        p "MDArea: 增加了新的命名空间:#{new_name_space.name}"
        new_name_space.each do |table|
          p "MDArea: 增加了新的表:#{table.name}"
        end
      end
    end
  end
  #更新命名空间，不考虑表的删除
  def update_by(new_name_space)
    new_name_space.each do |new_table|
      old_table = find_table(new_table.name)
      if old_table
        old_table.update_by(new_table)
      else
        add_table(new_table)
        p "MDNameSpace: 增加了新的表:#{new_table.name}"
      end
    end
  end
  #更新表
  def update_by(new_table)
    field_name_arr = get_field_name_arr
    new_table.each_field do |new_field|
      old_field = find_field(new_field.name)
      if old_field
        old_field.update_by(new_field)
        field_name_arr.delete(new_field.name)
      else
        add_field(new_field)
        p "MDTable: 表#{@name}增加了新的字段:#{new_field.name}"
      end
    end
    field_name_arr.each do |field_name|
      need_delete_field = find_field(field_name)
      field_arr.delete(need_delete_field)
      p "MDTable: 表#{@name}删除了字段:#{field_name}"
    end
    @explanation = new_table.explanation if new_table.explanation != ""
    @remark = new_table.remark if new_table.remark != ""
    @data_area = new_table.data_area#数据更新
  end
  #更新字段
  def update_by(new_field)
    if @type != new_field.type
      old_type = @type
      @type = new_field.type
      puts "MDField: 表#{@table.name}中字段#{@name}的类型从#{old_type}改为#{@type}。"
    end
    if @null != new_field.null
      @null = new_field.null
      puts "MDField: 表#{@table.name}中字段#{@name}被改为#{@null == "T" ? "可以为空" : "不可为空"}。"
    end
    if @p != new_field.p
      @p = new_field.p
      puts "MDField: 表#{@table.name}中字段#{@name}#{@p == "T" ? "成为主键" : "不再为主键"}。"
    end
    if @identity != new_field.identity
      @identity = new_field.identity
      puts "MDField: 表#{@table.name}中字段#{@name}#{@null == "T" ? "变为自增" : "不再自增"}。"
    end
    @explanation = new_field.explanation if new_field.explanation != ""
    @remark = new_field.remark if new_field.remark != ""
  end
end