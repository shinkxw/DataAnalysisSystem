#!/usr/bin/env ruby -w
# encoding: GBK
#表信息生成器
class TableinfoBuilder < BaseBuilder
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
    super(log)
  end
  #生成表信息
  def build(area)
    @area = area
    build_to_hash
    MDDoc.new("tableinfo",@area.name,@hash)
  end
  def build_to_hash
    @hash = {}
    @area.each do |name_space|
      name_space.each do |table|
        @info_str = ""
        table.field_area.each do |field|
          @info_str << "           #{field.name}: { fn: '', p: Proc.new{|i| ''}},\n"
        end
        @hash["#{table.library_name.upcase}/#{table.name}.txt"] = @info_str
      end
    end
  end
  #生成哈希表形式的表信息
  #~ def build_to_hash
    #~ @hash = {}
    #~ @area.each do |name_space|
      #~ @info_str = ""
      #~ name_space.each do |table|
        #~ @info_str << "#{table.name}  #{table.explanation}\n"
        #~ table.field_area.each do |field|
          #~ @info_str << "#{@tab}#{field.name.ljust(12)}#{field.explanation.fill_cn(12)}#{field.type.ljust(15)}"
          #~ @info_str.concat(field.p == "T" ? "主键" : "非主")
					#~ @info_str << "     #{field.relation.table.explanation}" if field.relation != nil
          #~ @info_str << "\n"
        #~ end   
        #~ @info_str << "\n"
      #~ end
      #~ @hash["#{name_space.name}.txt"] = @info_str
    #~ end
  #~ end
end


