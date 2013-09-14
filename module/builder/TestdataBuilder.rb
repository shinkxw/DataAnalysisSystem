#!/usr/bin/env ruby -w
# encoding: GBK
#��������������
class TestdataBuilder
  attr_reader :area#�����ɵ�Ԫ����
  attr_reader :sql_str#���ɵ�sql���
  #��ʼ��
  def initialize(log = Log.new)
    @area = nil
    @sql_str = nil
    @log = log
  end
  #�����޹�����Ĳ���������ӽű�
  #build_hashΪhash����Ϊ������ֵΪ��������
  #{'EDU_WZXT_MHXT_WZWZ' => {'num' => 500,'SCHOOLID' => Proc.new{'123'}}}
  def build_sd(area, build_hash)
    @area = area
    @sql_str = ''
    build_hash.each do |table_name,config|
      data_num = config['num']
      table = @area.find_table(table_name)
      if table != nil
        prefix_str = "INSERT INTO [#{table_name}](["
        prefix_str << "#{table.get_field_name_arr.join("] ,[")}]) VALUES("
        testdata_arr = get_testdata(table, data_num, config)
        testdata_arr.each do |testdata|
          testdata.map!{|d| d =~ /^CAST\(/ ? d : "'#{d}'"}
          @sql_str << "#{prefix_str}#{testdata.join(", ")})\n"
        end
      else
        puts "TestdataBuilder��δ�ҵ���#{table_name}�Ķ���"
      end
    end
    MDDoc.new('testdata',@area.name,@sql_str,"sql")
  end
  #��ò�������
  def get_testdata(table, data_num, config)
    proc_arr = []
    table.each_field do |field|
      if config[field.name]
        proc_arr << config[field.name]
      else
        proc_arr << get_def_proc(field)
      end
    end
    Array.new(data_num){|i| proc_arr.map{|proc| proc.call(i)}}
  end
  #���Ĭ�ϵ��������ɷ���
  def get_def_proc(field)
    type = field.split_type
    case type[0]
    when 'int'; Proc.new{|str| '0'}
    when 'String'
      if type.size > 1
        Proc.new{get_random_string(type[1].to_i)}
      else
        Proc.new{get_random_string(1000)}
      end
    when 'decimal'
      Proc.new{|str| '0'}
    when 'DateTime'
      Proc.new{|str| ''}
    else
      puts "TestdataBuilder��û��Ϊ����#{type[0]}�����������ɷ���"
      Proc.new{|str| ''}
    end
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

