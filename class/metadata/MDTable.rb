#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ���
class MDTable
  attr_reader :name#������
  attr_reader :field_area#�����ֶ���
  attr_accessor :data_area#��������
  attr_accessor :explanation#��˵��
  attr_accessor :remark#��ע
  attr_accessor :config#������
  #��ʼ��
  def initialize(name,explanation,remark = '',config = '')
    @name = name
    @explanation = explanation
    @remark = remark
    @config = config
    @field_area = MDFieldArea.new
    @data_area = MDDataArea.new
  end
  #�����ֶ�
  def add_field(field);@field_area.add_field(field) end
  #��������
  def add_data(data);@data_area.add_data(data) end
  #��������
  def add_primary_key(key_name)
    key = @field_area.find{|field| field.name == key_name}
    if key != nil
      key.p = "T"
    else
      p "MDTable: ��#{@name}�в���������#{key_name}"
    end
  end
  #�жϱ������Ƿ���Ч
  def is_valid?
    p "MDNameSpace: ��#{@name}û���ֶ�" if get_field_size == 0
    p "MDNameSpace: ��#{@name}�ֶ����ظ�" if get_field_name_arr.uniq! != nil
    each_field{|field| field.is_valid?}
    true#�����ݼ�ֵ�ظ� ���ݵļ�ֵӦ�����ֶ� �ǿ��ֶ�ֵ�ж�
  end
  #���ر��������һ���ֶ�
  def lname;@name.split('_')[-1] end
  #���ر��������һ���ֶε�Сд��ʽ
  def lname_dc;@name.split('_')[-1].downcase end
  #���ر����ڿ�����Сд��ʽ
  def library_name;@name.split('_')[1].downcase end
  #���ر������������ռ���
  def name_space_name;a = @name.split('_');"#{a[0]}_#{a[1]}" end
  #���ر�׼��Ļ�ȡֵ������
  def select_method_name;a = @name.split('_');"#{a[1]}_#{a[2]}" end
  #������������
  def get_primary_key;@field_area.select{|field| field.p == "T"} end
  #��õ�һ���ֶε��ֶ���
  def get_first_field_name;field_arr[0].name end
  #�������й�������ֶ�
  def get_relation;@field_area.select{|field| field.relation != nil} end
  #�ж��Ƿ�������
  def has_relation?;@field_area.find{|field| field.relation != nil} end
  #�Ƿ�������
  def has_data?;@data_area.data_arr.size != 0 end
  #�ж�˵���Ƿ����
  def has_exp?;@explanation != "" && @explanation != nil end
  #�����ֶ��������ظ��ֶ�,���򷵻�nil
  def find_field(field_name);@field_area.find{|field| field.name == field_name} end
  #�����ֶ���
  def get_field_size;@field_area.field_arr.size end
  #��������ֶ���������
  def get_field_name_arr;@field_area.map{|field| field.name} end
  #��������������ֶ�������
  def get_primary_key_name_arr
    @field_area.select{|field| field.p == "T"}.map{|field| field.name}
  end
  #����˵��ʱ����˵�������򷵻�����
  def gname;@explanation != '' && @explanation != nil ? @explanation : @name end
  #����ֶ�����
  def field_arr;@field_area.field_arr end
  #�����ֶ�
  def each_field;@field_area.each{|field| yield(field)} end
  #��������
  def each_data;@data_area.data_arr.each{|data| yield(data)} end
end
