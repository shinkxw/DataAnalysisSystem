#!/usr/bin/env ruby -w
# encoding: GBK
class ServiceTableField
  attr_reader :bh#编号
  attr_reader :sjxm#数据项名
  attr_reader :zwjc#中文简称
  attr_accessor :lx#类型
  attr_accessor :cd#长度
  attr_reader :ys#约束
  attr_reader :zkj#值空间
  attr_reader :jsjl#解释/举例
  attr_reader :yybh#引用编号
  attr_accessor :yysj#引用数据
  #初始化
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
  #转换为元数据
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
    remark = "#{@zwjc} 编号：#{@bh} "
    remark += "值空间：#{@zkj} " if @zkj != "NULL"
    remark += "解释/举例：#{@jsjl} " if @jsjl != "NULL"
    remark += "引用自#{@yysj}" if @yysj != nil
    MDField.new(table,name,type,null,p,explanation,remark)
  end
  #获得元数据的类型
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
          if @zwjc == "学分"
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
