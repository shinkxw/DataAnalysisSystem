#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ��������
class MDArea
  include Enumerable
  attr_reader :name_space_arr#�����ռ�����
  attr_accessor :name#Ԫ����������
  attr_accessor :table_relation_str_arr#�������Ϣ����
  attr_accessor :error_relation_str#����������
  #��ʼ��
  def initialize(name)
    @name = name
    @name_space_arr = []
    @table_relation_str_arr = nil
  end
  #���������ռ�
  def add_name_space(name_space)
    if name_space.class.to_s == "MDNameSpace"
      @name_space_arr.push(name_space)
    else p "MDArea can only put MDNameSpace"
    end
  end
  #�õ��������
  def get_table_num
    inject(0){|num, name_space| num + name_space.get_table_num}
  end
  #�õ��������б������
  def get_table_arr;map(&:table_arr).flatten end
  #�õ���Ϊ������ֵΪ��Ĺ�ϣ��
  def get_table_hash
    table_hash = {}
    get_table_arr.each{|table| table_hash[table.name] = table}
    table_hash
  end
  #����ָ�����Ƶı����,���򷵻�nil
  def find_table(table_name)
    @table_hash ||= get_table_hash
    @table_hash[table_name]
  end
  #����ָ�����Ƶ������ռ����,���򷵻�nil
  def find_name_space(name_space_name);find{|ns| ns.name == name_space_name} end
  #�ж�Ԫ�������Ƿ���Ч
  def is_valid?
    p "MDArea: �����ظ�" if get_table_name_arr.uniq! != nil
    each{|name_space| name_space.is_valid?};true
  end
  #ʹ�ø����ͷ�ʽ�ϳ��µ�Ԫ������
  def cover_combine(new_area)
    new_area.each do |new_name_space|
      old_name_space = find_name_space(new_name_space.name)
      if old_name_space
        old_name_space.cover_combine(new_name_space)
      else 
        add_name_space(new_name_space)
      end
    end
  end
  #ΪԪ�������ӱ�Ĺ�����Ϣ
  def add_table_relation(table_relation_str_arr)
    @error_relation_str = ""
    arr_reader = ArrReader.new(table_relation_str_arr)
    line = arr_reader.now
    while line != nil
      if /^<(?<name>[^ ]+) *\n$/ =~ line
        table_name = name
        table = find_table(table_name)
      elsif /^ *(?<field_name>[^ ]+) +(?<rtable_name>[^ ]+) +(?<rfield_name>[^ ]+) *\n$/ =~ line
        r_table = find_table(rtable_name)
        if table != nil && r_table != nil
          field = table.find_field(field_name)
          r_field = r_table.find_field(rfield_name)
          if field != nil && r_field != nil
            field.change_relation(r_field)
          else
            p "MDArea: �ֶ�#{field_name}��#{rfield_name}δ�ҵ�"
            @error_relation_str << "<#{table_name}\n" << line
          end
        else
          p "MDArea: ��#{table_name}��#{rtable_name}δ�ҵ�"
          @error_relation_str << "<#{table_name}\n" << line
        end
      end
      line = arr_reader.next
    end
  end
  #ɾ�����б�������
  def delete_all_table_data
    get_table_arr.each{|table| table.data_area = MDDataArea.new}
  end
  #���ݱ���Ϊ�����·��������ռ�
  def reallocate_namespace
    table_arr = get_table_arr
    @name_space_arr = []
    table_arr.each do |table|
      name_space_name = table.name_space_name
      name_space = find_name_space(name_space_name)
      if name_space == nil
        name_space = MDNameSpace.new(name_space_name,"reallocate_namespace")
        add_name_space(name_space)
      end
      name_space.add_table(table)
    end
  end
  #�������ռ��еı��������
  def sort_table;each{|name_space| name_space.sort_table_by_name} end
  #������б���������
  def get_table_name_arr;map(&:get_table_name_arr).flatten end
  #�����������ֵ
  def get_ev;Compressor.arr_com(get_table_arr.map(&:get_ev)) end
  #���������ռ�
  def each;@name_space_arr.each{|name_space| yield(name_space)} end
end
