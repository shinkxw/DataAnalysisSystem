#!/usr/bin/env ruby -w
# encoding: GBK
#DAF����������
class DafBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :daf_str#���ɵ�daf���
  attr_reader :builder_version#�������汾
  attr_reader :is_hash#����Ƿ�Ϊ��ϣ������Ϊ�ַ���
  attr_accessor :tab#����
  #��ʼ��
  def initialize(is_hash = true,log = Log.new,tab = "    ")
    @area = nil
    @daf_str = nil
    @result = nil
    @builder_version = "0.1"
    @is_hash = is_hash
    @tab = tab
    @log = log
  end
  #����DAF����
  def build(area)
    @area = area
    if @is_hash
      build_to_hash
    else
      @result = build_area_daf
    end
    MDDoc.new("daf",@area.name,@result)
  end
  #����daf�ַ����Ĺ�ϣ��
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
  #����Ԫ�������daf�ַ���
  def build_area_daf
    @daf_str = "<?daf version=\"0.1\" analyzer_name=\"0.1\"?>\n"
    @area.each{|name_space| build_name_space_daf(name_space)}
    @daf_str
  end
  #����Ԫ�������б��ϵ��daf�ַ���
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
      @daf_str << "\n����Ϊ����Ĺ������:\n\n" << @area.error_relation_str
    end
  end
  #���������ռ��daf�ַ���
  def build_name_space_daf(name_space)
    @daf_str << %(<namespace name="#{name_space.name}" )
    @daf_str << %(provider="#{name_space.provider}" )
    @daf_str << "generation_time=\"\">\n"
    name_space.each{|table| build_table_daf(table)}
    @daf_str << "</namespace>\n"
  end
  #���ɱ��daf�ַ���
  def build_table_daf(table)
    @daf_str << %(#{@tab}<table name="#{table.name}" explanation="#{table.explanation}">\n)
    build_field_area_daf(table.field_area)
    build_data_area_daf(table.data_area) if table.has_data?
    @daf_str << "#{@tab}</table>\n"
  end
  #�����ֶ����daf�ַ���
  def build_field_area_daf(field_area)
    @daf_str << "#{@tab}#{@tab}<field_area>\n"
    field_area.each{|field| build_field_daf(field)}
    @daf_str << "#{@tab}#{@tab}</field_area>\n"
  end
  #�����ֶε�daf�ַ���
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
  #�����������daf�ַ���
  def build_data_area_daf(data_area)
    @daf_str << "#{@tab}#{@tab}<data_area>\n"
    data_area.each{|data| build_data_daf(data)}
    @daf_str << "#{@tab}#{@tab}</data_area>\n"
  end
  #�������ݵ�daf�ַ���
  def build_data_daf(data)
    @daf_str << "#{@tab}#{@tab}#{@tab}<"
    data.get_keys.each{|key| @daf_str << "#{key}=\"#{data.get_value(key)}\" "}
    @daf_str << "/>\n"
  end
end


