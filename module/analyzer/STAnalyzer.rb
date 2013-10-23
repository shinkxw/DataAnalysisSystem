#!/usr/bin/env ruby -w
# encoding: GBK
#业务表数据解析器
class STAnalyzer
  attr_reader :arr_reader#待分析的字符串
  attr_reader :analyzer_version#解析器版本
  attr_reader :area#分析结果
  attr_reader :field_hash#存放数据集的哈希表
  #初始化
  def initialize(log = Log.new)
    @arr_reader = nil
    @analyzer_version = "0.1"
    @area = nil
    @field_hash = nil
    @table_arr = nil
    @log = log
  end
  #解析业务表数据
  def analyze(str_arr)
    @arr_reader = ArrReader.new(str_arr)
    @field_hash = {}
    @table_arr = []
    line = @arr_reader.now
    until line =~ /^数据集/
      unless line =~ /^(编|Table|\s|#)/
        o = line.split(/---/)
        if o.size == 10
          new_field = ServiceTableField.new(o[0],o[1],o[2],o[3],o[4],o[5],o[6],o[7],o[8])
          old_field = @field_hash[o[0]]
          @field_hash[o[0]] = new_field if old_field == nil || (old_field.lx == "NULL" && old_field.yybh == "NULL")
        else
          @log.push("STAnalyzer:this line is wrong" + line)
        end
      end
      line = next_line
    end
    while line != nil
      if line =~ /^表/
        line.delete!("\n") 
        o = line.split(/\t| (?! )|  /)
        table = ServiceTable.new(o[1],o[2])
        line = next_line
        while line =~ /^[^\s]/
          if line =~ /^[^编号]/
            o = line.split(/---/)
            if o.size == 10
              new_field = ServiceTableField.new(o[0],o[1],o[2],o[3],o[4],o[5],o[6],o[7],o[8])
              table.add_field(new_field)
              old_field = @field_hash[o[0]]
              @field_hash[o[0]] = new_field if old_field == nil || (old_field.lx == "NULL" && old_field.yybh == "NULL")
            else
              @log.push("STAnalyzer:this line is wrong" + line)
            end
          end
          line = next_line
        end
        @table_arr.push(table)
      end
      line = next_line
    end
    #@field_hash.keys.each do |key|
    #  @log.push(@field_hash[key]) if @field_hash[key].lx == "NULL" && @field_hash[key].yybh == "NULL"
    #end
    complement_table
    to_be_metadata
    @area
  end
  #为表数据补全信息
  def complement_table
    @table_arr.each do |table|
      table.each_field do |field|
        if field.lx == "NULL"
          nf = find_field(field)
          if nf != nil
            field.lx = nf.lx
            field.cd = nf.cd
            field.yysj = "#{nf.bh} #{nf.sjxm} #{nf.zwjc} #{nf.lx} #{nf.cd} #{nf.ys} #{nf.zkj} #{nf.jsjl} #{nf.yybh}"
          else
            @log.push(field)
          end
        end
      end
    end
  end
  #根据字段寻找具有类型的相关字段
  def find_field(field)
    result = nil
    if field.yybh != "NULL"
      new_field = @field_hash[field.yybh]
      if new_field != nil
        if new_field.lx != "NULL"
          result = new_field
        else
          result = find_field(new_field)
        end
      end
    else
      new_field = @field_hash[field.bh]
      if new_field != nil
        if new_field.lx != "NULL"
          result = new_field
        else
          if new_field.yybh != "NULL"
            new_field = @field_hash[new_field.yybh]
            if new_field != nil
              if new_field.lx != "NULL"
                result = new_field
              else
                result = find_field(new_field)
              end
            end
          end
        end
      end
    end
    result
  end
  #将表数据转换为元数据
  def to_be_metadata
    @area = MDArea.new("STAnalyzer")
    name_space = MDNameSpace.new("STAnalyzer","STAnalyzer","")
    @table_arr.each do |st|
      name_space.add_table(st.to_mdtable)
    end
    @area.add_name_space(name_space)
  end
  #获得下一行数据，判断表的数量
  def next_line
    line = @arr_reader.next
    line
  end
end
