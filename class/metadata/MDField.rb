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
  attr_accessor :default#字段默认值
  attr_accessor :cover#遮蔽值,将代替在视图中出现
  #初始化
  def initialize(table,name,type,null,p,explanation,remark,identity = "F",default = nil,cover = nil)
    @table = table
    @name = name
    @type = format(type)
    @null = pro_input(null)
    @p = pro_input(p)
    @explanation = explanation
    @remark = remark
    @identity = (identity == nil ? "F" : pro_input(identity))
    @default = default
    @cover = cover
    @relation = nil
  end
  #在有说明时返回说明，否则返回名字
  def gname;has_exp? ? @explanation : @name end
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
  #根据类型计算默认值
  def defv
    return @default if has_default?#如果字段存在存在默认值，则返回默认值
    case @type[/([^(]+?)(?:\((.+?)\)|$)/, 1]
    when 'int','decimal','money','float' then return '0'
    when 'nchar','nvarchar','text','datetime' then return "''"
    else 
      puts "MDField: 类型#{$1}没有设置默认值！"
      return "''"
    end
  end
  #返回处理后的类型
  def split_type
    result = ['UN']
    type = @type[/([^(]+?)(?:\((.+?)\)|$)/, 1]
    value = $2
    case type
    when 'int';result = ['int']
    when 'datetime';result = ['DateTime']
    when 'text';result = ['String']
    when 'money';result = ['decimal','0','9999999']
    when 'nchar','nvarchar';result = ['String',value]
    when 'float';result = ['float']
    when 'decimal'
      if value[/(.+?), *(.+?)/]
        zw = $1.to_i
        xw = $2.to_i
        result = ['decimal','0',(calnum(zw - xw)-1).to_i.to_s]
      elsif value[/[^,]+/]
        result = ['decimal','0',(calnum(value.to_i)-1).to_i.to_s]
      else
        puts "MDField: type wrong: #{@type}"
      end
    else
      puts "MDField: type wrong: #{@type}"
    end
    result
  end
  #获得数据库类型
  def db_type;@type[/([^(]+?)(?:\((.+?)\)|$)/, 1] end
  #判断字段数据是否有效
  def is_valid?
    puts "MDField: 表#{@table.name}中字段#{@name}不是主键却有自增属性" if @identity == 'T' && @p == 'F'
    puts "MDField: 表#{@table.name}中字段#{@name}为主键不能为空" if @p == 'T' && @null == 'T'
    #~ if /nvarchar\((?<char_num>[^\)]*)\)/ =~ @type
      #~ ignore_namespace_arr = %w(GB JY ZJ)
      #~ if !ignore_namespace_arr.include?(@table.name.split("_")[1]) && @relation == nil && char_num.to_i < 6
        #~ puts "MDNameSpace: 表#{@table.name}中字段#{@name}可能需要关联"
      #~ end
    #~ end
    true
  end
  #获得显示用字段名称
  def display_name;/^(?<dis_name>.*?)ID$/ =~ @explanation ? dis_name : @explanation end
  #判断说明是否存在
  def has_exp?;@explanation != '' && @explanation != nil end
  #判断备注是否存在
  def has_remark?;@remark != '' && @remark != nil end
  #判断默认值是否存在
  def has_default?;@default != '' && @default != nil end
  #返回只有类型的自己，用于数据库比较
  def ef;MDField.new(@table,@name,@type,'T','F','','','F') end
  #处理输入数据
  def pro_input(str)
    if str == 'T' || str == 'F'
      return str
    else
      puts "MDField: 表#{@table.name}字段#{@name}属性有误！"
    end
  end
  #计算字段的特征值
  def get_ev
    arr = ['name' + @name,'type' + @type,'null' + @null]
    arr += ['p' + @p,'explanation' + @explanation,'identity' + @identity]
    Compressor.arr_com(arr)
  end
  #计算10的n次方
  def calnum(n);10**n end
end