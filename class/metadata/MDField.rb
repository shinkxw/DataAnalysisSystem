#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ��ֶ���
class MDField
  attr_reader :name#�ֶ�����
  attr_reader :type#�ֶ�����
  attr_reader :null#�ֶοɷ�Ϊ��
  attr_reader :table#�����ı�
  attr_reader :relation#�ֶι������洢���������Ӧ������
  attr_accessor :p#�ֶ�������ʶ
  attr_accessor :identity#�ֶ�������ʶ
  attr_accessor :explanation#�ֶ�˵��
  attr_accessor :remark#�ֶα�ע
  attr_accessor :default#�ֶ�Ĭ��ֵ
  attr_accessor :cover#�ڱ�ֵ,����������ͼ�г���
  #��ʼ��
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
  #����˵��ʱ����˵�������򷵻�����
  def gname;has_exp? ? @explanation : @name end
  #�ı��ֶι���
  def change_relation(r_field)
    result = true
    if r_field.class.to_s == 'MDField'
      if @relation == nil
        if @type == r_field.type
          @relation = r_field
        else
          puts "MDField: ��#{@table.name}���ֶ�#{@name}����Ϊ#{@type}����#{r_field.table.name}���ֶ�#{r_field.name}����Ϊ#{r_field.type}���޷�����"
        end
      else
        puts "MDField: ��#{@table.name}���ֶ�#{@name}���й����ֶ�"
      end
    else
      result = false
      puts "MDField: can only relation MDField"
    end
    result
  end
  #�����ͽ��и�ʽ��
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
  #�������ͼ���Ĭ��ֵ
  def defv
    return @default if has_default?#����ֶδ��ڴ���Ĭ��ֵ���򷵻�Ĭ��ֵ
    case @type[/([^(]+?)(?:\((.+?)\)|$)/, 1]
    when 'int','decimal','money','float' then return '0'
    when 'nchar','nvarchar','text','datetime' then return "''"
    else 
      puts "MDField: ����#{$1}û������Ĭ��ֵ��"
      return "''"
    end
  end
  #���ش���������
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
  #������ݿ�����
  def db_type;@type[/([^(]+?)(?:\((.+?)\)|$)/, 1] end
  #�ж��ֶ������Ƿ���Ч
  def is_valid?
    puts "MDField: ��#{@table.name}���ֶ�#{@name}��������ȴ����������" if @identity == 'T' && @p == 'F'
    puts "MDField: ��#{@table.name}���ֶ�#{@name}Ϊ��������Ϊ��" if @p == 'T' && @null == 'T'
    #~ if /nvarchar\((?<char_num>[^\)]*)\)/ =~ @type
      #~ ignore_namespace_arr = %w(GB JY ZJ)
      #~ if !ignore_namespace_arr.include?(@table.name.split("_")[1]) && @relation == nil && char_num.to_i < 6
        #~ puts "MDNameSpace: ��#{@table.name}���ֶ�#{@name}������Ҫ����"
      #~ end
    #~ end
    true
  end
  #�����ʾ���ֶ�����
  def display_name;/^(?<dis_name>.*?)ID$/ =~ @explanation ? dis_name : @explanation end
  #�ж�˵���Ƿ����
  def has_exp?;@explanation != '' && @explanation != nil end
  #�жϱ�ע�Ƿ����
  def has_remark?;@remark != '' && @remark != nil end
  #�ж�Ĭ��ֵ�Ƿ����
  def has_default?;@default != '' && @default != nil end
  #����ֻ�����͵��Լ����������ݿ�Ƚ�
  def ef;MDField.new(@table,@name,@type,'T','F','','','F') end
  #������������
  def pro_input(str)
    if str == 'T' || str == 'F'
      return str
    else
      puts "MDField: ��#{@table.name}�ֶ�#{@name}��������"
    end
  end
  #�����ֶε�����ֵ
  def get_ev
    arr = ['name' + @name,'type' + @type,'null' + @null]
    arr += ['p' + @p,'explanation' + @explanation,'identity' + @identity]
    Compressor.arr_com(arr)
  end
  #����10��n�η�
  def calnum(n);10**n end
end