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
  attr_accessor :config#�ֶ�����
  #��ʼ��
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
  #�ı��ֶι���
  def change_relation(r_field)
    result = true
    if r_field.class.to_s == "MDField"
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
  #���ش���������
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
  #�����ֶ�
  def update_by(new_field)
    if @type != new_field.type
      old_type = @type
      @type = new_field.type
      puts "MDField: ��#{@table.name}���ֶ�#{@name}�����ʹ�#{old_type}��Ϊ#{@type}��"
      $update_table_name_arr.push(@table.name)
    end
    if @null != new_field.null
      @null = new_field.null
      puts "MDField: ��#{@table.name}���ֶ�#{@name}����Ϊ#{@null == "T" ? "����Ϊ��" : "����Ϊ��"}��"
      $update_table_name_arr.push(@table.name)
    end
    if @p != new_field.p
      @p = new_field.p
      puts "MDField: ��#{@table.name}���ֶ�#{@name}#{@p == "T" ? "��Ϊ����" : "����Ϊ����"}��"
      $update_table_name_arr.push(@table.name)
    end
    if @identity != new_field.identity
      @identity = new_field.identity
      puts "MDField: ��#{@table.name}���ֶ�#{@name}#{@null == "T" ? "��Ϊ����" : "��������"}��"
      $update_table_name_arr.push(@table.name)
    end
    @explanation = new_field.explanation if new_field.explanation != ""
    @remark = new_field.remark if new_field.remark != ""
  end
  #�ж��ֶ������Ƿ���Ч
  def is_valid?
    puts "MDNameSpace: ��#{@table.name}���ֶ�#{@name}��������ȴ����������" if @identity == "T" && @p == "F"
    puts "MDNameSpace: ��#{@table.name}���ֶ�#{@name}Ϊ��������Ϊ��" if @p == "T" && @null == "T"
    #~ if /nvarchar\((?<char_num>[^\)]*)\)/ =~ @type
      #~ ignore_namespace_arr = ["GB","JY","ZJ"]
      #~ if !ignore_namespace_arr.include?(@table.name.split("_")[1]) && @relation == nil && char_num.to_i < 6
        #~ puts "MDNameSpace: ��#{@table.name}���ֶ�#{@name}������Ҫ����"
      #~ end
    #~ end
    true
  end
  #����10��n�η�
  def calnum(n);10**n end
end
