#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���������ռ���
class MDNameSpace
  include Enumerable
  attr_reader :name#�����ռ�����
  attr_reader :table_arr#�����ռ��б������
  attr_accessor :provider#�����ռ��ṩ��
  #��ʼ��
  def initialize(name,provider)
    @name = name
    @table_arr = []
    @provider = provider
  end
  #���ӱ�
  def add_table(table)
    if table.class.to_s == "MDTable"
      @table_arr.push(table)
    else p "MDNameSpace can only put MDTable"
    end
  end
  #���ұ��������ظñ����,���򷵻�nil
  def find_table(table_name);find{|table| table.name == table_name} end
  #ʹ�ø����ͷ�ʽ�ϳ��µ������ռ�
  def cover_combine(new_name_space)
    new_name_space.each do |new_table|
      old_table = find_table(new_table.name)
      if old_table != nil
        old_table = new_table
        p "MDNameSpace: ��#{old_table.name}�ѱ�����"
      else 
        add_table(new_table)
      end
    end
  end
  #�ж������ռ������Ƿ���Ч
  def is_valid?
    each(&:is_valid?)
    true
  end
  #���ݱ����е����ֶ������ռ��еı�����
  def sort_table_by_name
    i = 0
    @table_arr.sort_by! do |t|
      str = t.name.split('_').select{|s| s =~ /^A*\d+$/}.inject(''){|r, n| r + n}
      num = str.delete('A').to_i
      num += 1 if str.include?('A')
      [num, i += 1]
    end
  end
  #���������ռ��б������
  def get_table_num;@table_arr.size end
  #��������ռ������б���������
  def get_table_name_arr;map(&:name) end
  #������
  def each;@table_arr.each{|table| yield(table)} end
end