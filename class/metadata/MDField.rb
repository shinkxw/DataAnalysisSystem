#!/usr/bin/env ruby -w
# encoding: GBK
#元数据表字段类
class MDField
  attr_reader :name#字段名称
  attr_reader :type#字段类型
  attr_reader :null#字段可否为空
  attr_reader :table#所属的表
  attr_reader :relation#字段关联，存储所关联表对应的主键
  attr_accessor :p#字段主键标识
  attr_accessor :identity#字段自增标识
  attr_accessor :explanation#字段说明
  attr_accessor :remark#字段备注
  attr_accessor :config#字段配置
  #初始化
  def initialize(table,name,type,null,p,explanation,remark,identity = "F",config = "")
    @table = table
    @name = name
    @type = type
    @null = null
    @p = p
    @explanation = explanation
    @remark = remark
    @identity = (identity == nil ? "F" : identity)
    @config = config
    @relation = nil
  end
  #改变字段关联
  def change_relation(r_field)
    result = true
    if r_field.class.to_s == "MDField"
      if @relation == nil
        if @type == r_field.type
          @relation = r_field
        else
          puts "MDField: 表#{@table.name}中字段#{@name}类型为#{@type}，表#{r_field.table.name}中字段#{r_field.name}类型为#{r_field.type}，无法关联"
        end
      else
        puts "MDField: 表#{@table.name}中字段#{@name}已有关联字段"
      end
    else
      result = false
      puts "MDField: can only relation MDField"
    end
    result
  end
  #返回处理后的类型
  def split_type
    result = ["UN"]
    @type =~ /([^(]+?)(?:\((.+?)\)|$)/
    type = $1
    value = $2
    case type
    when "int";result = ["int"]
    when "datetime";result = ["DateTime"]
    when "text";result = ["String"]
    when "money";result = ["decimal","0","9999999"]
    when "nchar";result = ["String",value]
    when "nvarchar";result = ["String",value]
    when "decimal"
      if value =~ /(.+?),(.+?)/
        zw = $1.to_i
        xw = $2.to_i
        result = ["decimal","0",(calnum(zw)-(1.0/calnum(xw))).to_i.to_s]
      elsif value =~ /[^,]+/
        result = ["decimal","0",(calnum(value.to_i)-1).to_i.to_s]
      else
        puts "MDField: type wrong: #{@type}"
      end
    else
      puts "MDField: type wrong: #{@type}"
    end
    result
  end
  #更新字段
  def update_by(new_field)
    if @type != new_field.type
      old_type = @type
      @type = new_field.type
      puts "MDField: 表#{@table.name}中字段#{@name}的类型从#{old_type}改为#{@type}。"
      $update_table_name_arr.push(@table.name)
    end
    if @null != new_field.null
      @null = new_field.null
      puts "MDField: 表#{@table.name}中字段#{@name}被改为#{@null == "T" ? "可以为空" : "不可为空"}。"
      $update_table_name_arr.push(@table.name)
    end
    if @p != new_field.p
      @p = new_field.p
      puts "MDField: 表#{@table.name}中字段#{@name}#{@p == "T" ? "成为主键" : "不再为主键"}。"
      $update_table_name_arr.push(@table.name)
    end
    if @identity != new_field.identity
      @identity = new_field.identity
      puts "MDField: 表#{@table.name}中字段#{@name}#{@null == "T" ? "变为自增" : "不再自增"}。"
      $update_table_name_arr.push(@table.name)
    end
    @explanation = new_field.explanation if new_field.explanation != ""
    @remark = new_field.remark if new_field.remark != ""
  end
  #判断字段数据是否有效
  def is_valid?
    puts "MDNameSpace: 表#{@table.name}中字段#{@name}不是主键却有自增属性" if @identity == "T" && @p == "F"
    puts "MDNameSpace: 表#{@table.name}中字段#{@name}为主键不能为空" if @p == "T" && @null == "T"
    #~ if /nvarchar\((?<char_num>[^\)]*)\)/ =~ @type
      #~ ignore_namespace_arr = ["GB","JY","ZJ"]
      #~ if !ignore_namespace_arr.include?(@table.name.split("_")[1]) && @relation == nil && char_num.to_i < 6
        #~ puts "MDNameSpace: 表#{@table.name}中字段#{@name}可能需要关联"
      #~ end
    #~ end
    true
  end
  #计算10的n次方
  def calnum(n);10**n end
end
