#!/usr/bin/env ruby -w
# encoding: GBK
#DAF数据生成器
class DafBuilder
  attr_reader :area#待生成的元数据
  attr_reader :daf_str#生成的daf语句
  attr_reader :builder_version#生成器版本
  attr_reader :is_hash#输出是否为哈希表，否则为字符串
  attr_accessor :tab#缩进
  #初始化
  def initialize(is_hash = true,log = Log.new,tab = "    ")
    @area = nil
    @daf_str = nil
    @result = nil
    @builder_version = "0.1"
    @is_hash = is_hash
    @tab = tab
    @log = log
  end
  #生成DAF数据
  def build(area)
    @area = area
    if @is_hash
      build_to_hash
    else
      @result = build_area_daf
    end
    MDDoc.new("daf",@area.name,@result)
  end
  #生成daf字符串的哈希表
  def build_to_hash
    @result = {}
    @area.each do |name_space|
      @daf_str = "<?daf version=\"0.1\" analyzer_name=\"0.1\"?>\n"
      build_name_space_daf(name_space)
      @result["#{name_space.name}.txt"] = @daf_str
    end
    @daf_str = ""
    build_relation_daf
    @result["relation.txt"] = @daf_str
  end
  #生成元数据域的daf字符串
  def build_area_daf
    @daf_str = "<?daf version=\"0.1\" analyzer_name=\"0.1\"?>\n"
    @area.each{|name_space| build_name_space_daf(name_space)}
    @daf_str
  end
  #生成元数据域中表关系的daf字符串
  def build_relation_daf
    @area.each do |name_space|
      relation_table_arr = name_space.select{|table| table.has_relation?}
      relation_table_arr.each do |relation_table|
        @daf_str << "<#{relation_table.name}\n"
        relation_field_arr = relation_table.get_relation
        relation_field_arr.each do |rf|
          @daf_str << "  #{rf.name.ljust(15)}#{rf.relation.table.name.ljust(25)}#{rf.relation.name}\n"
        end
      end
    end
    if @area.error_relation_str != "" && @area.error_relation_str != nil
      @daf_str << "\n以下为出错的关联语句:\n\n" << @area.error_relation_str
    end
  end
  #生成命名空间的daf字符串
  def build_name_space_daf(name_space)
    @daf_str << %(<namespace name="#{name_space.name}" )
    @daf_str << %(provider="#{name_space.provider}" )
    @daf_str << "generation_time=\"\">\n"
    name_space.each{|table| build_table_daf(table)}
    @daf_str << "</namespace>\n"
  end
  #生成表的daf字符串
  def build_table_daf(table)
    @daf_str << %(#{@tab}<table name="#{table.name}" explanation="#{table.explanation}">\n)
    build_field_area_daf(table.field_area)
    build_data_area_daf(table.data_area) if table.has_data?
    @daf_str << "#{@tab}</table>\n"
  end
  #生成字段域的daf字符串
  def build_field_area_daf(field_area)
    @daf_str << "#{@tab}#{@tab}<field_area>\n"
    field_area.each{|field| build_field_daf(field)}
    @daf_str << "#{@tab}#{@tab}</field_area>\n"
  end
  #生成字段的daf字符串
  def build_field_daf(field)
    @daf_str << "#{@tab}#{@tab}#{@tab}<name=\"#{field.name}\" "
    @daf_str << "explanation=\"#{field.explanation}\" "
    @daf_str << "type=\"#{field.type}\" "
    @daf_str << "null=\"#{field.null}\" "
    @daf_str << "p=\"#{field.p}\" "
    @daf_str << "identity=\"#{field.identity}\" " if field.identity == 'T'
    @daf_str << "remark=\"#{field.remark}\" " if field.has_remark?
    @daf_str << "default=\"#{field.default}\" " if field.default
    @daf_str << "/>\n"
  end
  #生成数据域的daf字符串
  def build_data_area_daf(data_area)
    @daf_str << "#{@tab}#{@tab}<data_area>\n"
    data_area.each{|data| build_data_daf(data)}
    @daf_str << "#{@tab}#{@tab}</data_area>\n"
  end
  #生成数据的daf字符串
  def build_data_daf(data)
    @daf_str << "#{@tab}#{@tab}#{@tab}<"
    data.get_keys.each{|key| @daf_str << "#{key}=\"#{data.get_value(key)}\" "}
    @daf_str << "/>\n"
  end
end


