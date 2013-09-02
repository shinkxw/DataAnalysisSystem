#!/usr/bin/env ruby -w
# encoding: GBK
#��������������
class TestdataBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :sql_str#���ɵ�sql���
  attr_accessor :build_rule#�������ɹ���hash����Ϊ�������ͣ�ֵΪ���ɷ���
  #��ʼ��
  def initialize(log = Log.new)
    @area = nil
    @sql_str = nil
    @build_rule  = { 'int' => Proc.new{|i| i},
                     'String' => Proc.new{|len| Proc.new{get_random_string(len)}},
                     'decimal' => Proc.new{|i| '0'},
                     'DateTime' => Proc.new{|i| ''}}
    @log = log
  end
  #�����޹�����Ĳ���������ӽű�
  #configΪhash����Ϊ������ֵΪ��������������
  #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  def build_sd(area, config)
    @area = area
    @sql_str = ""
    config.each do |table_name,data_num|
      table = @area.find_table(table_name)
      if table != nil
        prefix_str = "INSERT INTO [#{table_name}](["
        prefix_str << "#{table.get_field_name_arr.join("] ,[")}]) VALUES("
        testdata_arr = get_testdata(table, data_num)
        testdata_arr.each do |testdata|
          testdata.map!{|d| d =~ /^CAST\(/ ? d : "'#{d}'"}
          @sql_str << "#{prefix_str}#{testdata.join(", ")})\n"
        end
      else
        puts "TestdataBuilder��δ�ҵ���#{table_name}�Ķ���"
      end
    end
    MDDoc.new("testdata",@area.name,@sql_str,"sql")
  end
  #��ò�������
  def get_testdata(table, data_num)
    proc_arr = []
    table.each_field do |field|
      type = field.split_type
      build_proc = @build_rule[type[0]]
      if build_proc != nil
        if type[0] == 'String'
          if type.size > 1
            proc_arr << build_proc.call(type[1].to_i)
          else
            proc_arr << build_proc.call(1000)
          end
        else
          proc_arr << build_proc
        end
      else
        puts "TestdataBuilder��û��Ϊ����#{type[0]}�����������ɷ���"
        proc_arr << Proc.new{|str| ""}
      end
    end
    Array.new(data_num){|i| proc_arr.map{|proc| proc.call(i)}}
  end
  #���ɲ������ݲ���ű�
  def build(area, config)
    @area = area
    @sql_str = ""
    get_spanning_tree
    
    MDDoc.new("sql",@area.name,@sql_str,"sql")
  end
  #���ݱ������ϵ��������������
  def get_spanning_tree
    
  end
  #���ָ�����ȵ�����ַ���
  def get_random_string(length)
    chars = ('a'..'z').to_a + ('A'..'Z').to_a
    chars_size = chars.size
    (0...length).collect{chars[rand(chars_size)]}.join
  end
end

