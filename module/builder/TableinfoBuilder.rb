#!/usr/bin/env ruby -w
# encoding: GBK
#表信息生成器
class TableinfoBuilder
  attr_reader :area#待生成的元数据
  attr_reader :builder_version#生成器版本
  attr_accessor :tab#缩进
  #初始化
  def initialize(log = Log.new,tab = "  ")
    @area = nil
    @info_str = nil
    @hash = nil
    @builder_version = "0.1"
    @tab = tab
    @log = log
  end
  #生成表信息
  def build(area)
    @area = area
    build_to_hash
    MDDoc.new('tableinfo',@area.name,@hash,'txt','UTF-8')
  end
  #生成哈希表形式的表信息
  def build_to_hash
    @hash = {}
    @area.each do |name_space|
      @info_str = "encoding: UTF-8\n"
      name_space.each do |table|
        @info_str << "#{table.name}  #{table.explanation}\n"
        table.field_area.each do |field|
          @info_str << "#{@tab}#{field.name.ljust(14)}#{field.explanation.fill_cn(24)}#{field.type.ljust(15)}"
          @info_str.<< '自增' if field.identity == "T"
          @info_str.concat(field.p == "T" ? '主键' : '非主')
          @info_str << "        #{field.relation.table.explanation}" if field.relation != nil
          @info_str << "\n"
        end   
        @info_str << "\n"
      end
      @hash["#{name_space.name}.txt"] = @info_str
    end
  end
end


