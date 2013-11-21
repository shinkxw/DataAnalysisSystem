#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱ���
class MDTable
  @@bztable_hash = { gb: 'GB', jy: 'JB', zz: 'ZZB', zj: 'ZJ'}
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
  #�ı����
  def rename(new_name);@name = new_name end
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
    p "MDNameSpace: ��#{@name}�����������⻹��������" if has_identity? && get_primary_key.size > 1
    each_field{|field| field.is_valid?}
    true#�����ݼ�ֵ�ظ� ���ݵļ�ֵӦ�����ֶ� �ǿ��ֶ�ֵ�ж�
  end
  #���ر��������һ���ֶ�
  def lname;@name.split('_')[-1] end
  #���ر��������һ���ֶε�Сд��ʽ
  def lname_dc;@name.split('_')[-1].downcase end
  #���ر����ڿ�����Сд��ʽ
  def library_name;@name.split('_')[1].downcase end
  #�������ݿ�ʵ�������
  def db_name
    ln = library_name
    "db_#{%w(ele sys).include?(ln) ? ln + '01' : ln}"
  end
  #���ر������������ռ���
  def name_space_name
    if @name.include?('_')
      a = @name.split('_')
      "#{a[0]}_#{a[1]}"
    else
      @name[0, 4]
    end
  end
  #���ر�׼��Ļ�ȡֵ������
  def select_method_name;a = @name.split('_');"#{a[1]}_#{a[2]}" end
  #���ص�һλ�汾��
  def first_num;@name.split('_')[2].to_i end
  #������������
  def get_primary_key;@field_area.select{|field| field.p == "T"} end
  #��õ�һ���ֶε��ֶ���
  def get_first_field_name;field_arr[0].name end
  #�������й�������ֶ�
  def get_relation;@field_area.select{|field| field.relation != nil} end
  #�ж��Ƿ�������
  def has_relation?;@field_area.find{|field| field.relation != nil} end
  #�ж��Ƿ���Ҫ��ͼ
  def has_view?;@field_area.find{|f| f.relation != nil && f.relation.name != 'SCHOOLID'} end
  #�Ƿ�������
  def has_data?;@data_area.data_arr.size != 0 end
  #�ж�˵���Ƿ����
  def has_exp?;@explanation != '' && @explanation != nil end
  #�Ƿ���������ֶ�
  def has_identity?;@field_area.find{|field| field.identity == "T"} end
  #�����ֶ��������ظ��ֶ�,���򷵻�nil
  def find_field(field_name);@field_area.find{|field| field.name == field_name} end
  #�����ֶ���
  def get_field_size;@field_area.field_arr.size end
  #��������ֶ���������
  def get_field_name_arr;@field_area.map(&:name) end
  #��������������ֶ�������
  def get_primary_key_name_arr
    @field_area.select{|field| field.p == "T"}.map(&:name)
  end
  #���Ǳ�׼��,���������
  def bz_library_name;@@bztable_hash[library_name.to_sym] end
  #����˵��ʱ����˵�������򷵻�����
  def gname;has_exp? ? @explanation : @name end
  #����������ֵ
  def get_ev
    arr = ['name' + @name,'explanation' + @explanation]
    Compressor.arr_com(arr + field_arr.map(&:get_ev))
  end
  #����ֶ�����
  def field_arr;@field_area.field_arr end
  #�����ֶ�
  def each_field;@field_area.each{|field| yield(field)} end
  #��������
  def each_data;@data_area.data_arr.each{|data| yield(data)} end
end
