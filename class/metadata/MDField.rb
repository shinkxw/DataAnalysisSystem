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
    @type = format(type)
    @null = null
    @p = p
    @explanation = explanation
    @remark = remark
    @identity = (identity == nil ? "F" : identity)
    @config = config
    @relation = nil
  end
  #在有说明时返回说明，否则返回名字
  def gname;@explanation != '' && @explanation != nil ? @explanation : @name end
  #改变字段关联
  def change_relation(r_field)
    result = true
    if r_field.class.to_s == 'MDField'
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
  #对类型进行格式化
  def format(type)
    if /^decimal\((?<num>[^)]+?)\)$/ =~ type
      if num.include?(',')
        na = num.split(',')
        type = "decimal(#{na[0].strip}, #{na[1].strip})"
      else
        type = "decimal(#{num}, 0)"
      end
    end
    type
  end
  #返回处理后的类型
  def split_type
    result = ['UN']
    @type =~ /([^(]+?)(?:\((.+?)\)|$)/
    type = $1
    value = $2
    case type
    when 'int';result = ['int']
    when 'datetime';result = ['DateTime']
    when 'text';result = ['String']
    when 'money';result = ['decimal','0','9999999']
    when 'nchar';result = ['String',value]
    when 'nvarchar';result = ['String',value]
    when 'decimal'
      if value =~ /(.+?),(.+?)/
        zw = $1.to_i
        xw = $2.to_i
        result = ['decimal','0',(calnum(zw)-(1.0/calnum(xw))).to_i.to_s]
      elsif value =~ /[^,]+/
        result = ['decimal','0',(calnum(value.to_i)-1).to_i.to_s]
      else
        puts "MDField: type wrong: #{@type}"
      end
    else
      puts "MDField: type wrong: #{@type}"
    end
    result
  end
  #判断字段数据是否有效
  def is_valid?
    puts "MDNameSpace: 表#{@table.name}中字段#{@name}不是主键却有自增属性" if @identity == "T" && @p == "F"
    puts "MDNameSpace: 表#{@table.name}中字段#{@name}为主键不能为空" if @p == "T" && @null == "T"
    #~ if /nvarchar\((?<char_num>[^\)]*)\)/ =~ @type
      #~ ignore_namespace_arr = %w(GB JY ZJ)
      #~ if !ignore_namespace_arr.include?(@table.name.split("_")[1]) && @relation == nil && char_num.to_i < 6
        #~ puts "MDNameSpace: 表#{@table.name}中字段#{@name}可能需要关联"
      #~ end
    #~ end
    true
  end
  #判断说明是否存在
  def has_exp?;@explanation != "" && @explanation != nil end
  #返回只有类型的自己，用于数据库比较
  def ef;MDField.new(@table,@name,@type,'T','F','','','F') end
  #计算10的n次方
  def calnum(n);10**n end
end
