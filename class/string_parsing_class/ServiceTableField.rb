#!/usr/bin/env ruby -w
# encoding: GBK
class ServiceTableField
  attr_reader :bh#���
  attr_reader :sjxm#��������
  attr_reader :zwjc#���ļ��
  attr_accessor :lx#����
  attr_accessor :cd#����
  attr_reader :ys#Լ��
  attr_reader :zkj#ֵ�ռ�
  attr_reader :jsjl#����/����
  attr_reader :yybh#���ñ��
  attr_accessor :yysj#��������
  #��ʼ��
  def initialize(bh,sjxm,zwjc,lx,cd,ys,zkj,jsjl,yybh)
    @bh = bh
    @sjxm = sjxm
    @zwjc = zwjc
    @lx = lx
    if cd =~ /^(.*?)\.0$/
      @cd = $1
    else
      @cd = cd
    end
    @ys = ys
    @zkj = zkj
    @jsjl = jsjl
    if yybh =~ /^JY\/T1002(.+)$/
      @yybh = $1
    else
      @yybh = yybh
    end
    @yysj = nil
  end
  #ת��ΪԪ����
  def to_mdfield(table)
    name = @sjxm
    if get_mdtype != "UN"
      type = get_mdtype
    else
      #p self
    end
    null = ys == "M" ? "F" : "T"
    p = "F"
    explanation = @zwjc
    remark = "#{@zwjc} ��ţ�#{@bh} "
    remark += "ֵ�ռ䣺#{@zkj} " if @zkj != "NULL"
    remark += "����/������#{@jsjl} " if @jsjl != "NULL"
    remark += "������#{@yysj}" if @yysj != nil
    MDField.new(table,name,type,null,p,explanation,remark)
  end
  #���Ԫ���ݵ�����
  def get_mdtype
    result = "UN"
    case @lx
    when "C"
      result = "nvarchar"
      result += "(#{@cd})" if @cd != "NULL"
    when "N"
      if @cd != "NULL"
        case @cd
        when "21"
          if @zwjc == "ѧ��"
            result = "decimal(2,1)"
          else
            result = "decimal(21)"
          end
        when "31"
          result = "decimal(3,1)"
        when "51"
          result = "decimal(5,1)"
        else
          result = "decimal(#{@cd})"
        end
      else
        result = "int"
      end
    when "M";result = "money"
    when "B"
      result = "nvarchar(200)"
    when "T";result = "text"
    end
    result
  end
end
