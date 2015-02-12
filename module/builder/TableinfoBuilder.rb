#!/usr/bin/env ruby -w
# encoding: GBK
#����Ϣ������
class TableinfoBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :builder_version#�������汾
  attr_accessor :tab#����
  #��ʼ��
  def initialize(log = Log.new,tab = "  ")
    @area = nil
    @info_str = nil
    @hash = nil
    @builder_version = "0.1"
    @tab = tab
    @log = log
  end
  #���ɱ���Ϣ
  def build(area)
    @area = area
    build_to_hash
    MDDoc.new('tableinfo',@area.name,@hash,'txt','UTF-8')
  end
  #���ɹ�ϣ����ʽ�ı���Ϣ
  def build_to_hash
    @hash = {}
    @area.each do |name_space|
      @info_str = "encoding: UTF-8\n"
      name_space.each do |table|
        @info_str << "#{table.name}  #{table.explanation}\n"
        table.field_area.each do |field|
          @info_str << "#{@tab}#{field.name.ljust(14)}#{field.explanation.fill_cn(24)}#{field.type.ljust(15)}"
          @info_str.<< '����' if field.identity == "T"
          @info_str.concat(field.p == "T" ? '����' : '����')
          @info_str << "        #{field.relation.table.explanation}" if field.relation != nil
          @info_str << "\n"
        end   
        @info_str << "\n"
      end
      @hash["#{name_space.name}.txt"] = @info_str
    end
  end
end


