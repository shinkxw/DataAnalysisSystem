#!/usr/bin/env ruby -w
# encoding: GBK
#��������������
class TestdataBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :sql_str#���ɵ�sql���
  attr_accessor :table_config#hash���ñ���Ϊ�����ƣ�ֵΪ�����ɲ�����������
  attr_accessor :build_rule#�������ɹ���hash����Ϊ�������ͣ�ֵΪ���ɷ���
  #��ʼ��
  def initialize(table_config, build_rule, log = Log.new)
    @area = nil
    @sql_str = nil
    @table_config = table_config
    @build_rule = build_rule
    @log = log
  end
  #���ɲ������ݲ���ű�
  def build(area, config)
    @area = area
    @sql_str = ""
    get_spanning_tree
    @area.each do |name_space|
      add_name_space_script(name_space)
    end
    MDDoc.new("sql",@area.name,@sql_str,"sql")
  end
  #���ݱ������ϵ��������������
  def get_spanning_tree
    @table_config
    
  end
  #
end

