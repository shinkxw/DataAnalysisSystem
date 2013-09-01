#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱȽ����ȽϺ������ɵĲ���ȶ���
class MDDiff
  attr_reader :a1_diff_arr#��¼Ԫ������1�ж��еı�
  attr_reader :a2_diff_arr#��¼Ԫ������2�ж��еı�
  attr_reader :t1_diff_arr#��¼Ԫ������1�б���е��ֶ�
  attr_reader :t2_diff_arr#��¼Ԫ������2�б���е��ֶ�
  attr_reader :pro_diff_arr#��¼�໥����Ķ���
  #��ʼ��
  def initialize
    @t1_diff_arr = []
    @t2_diff_arr = []
    @f1_diff_arr = []
    @f2_diff_arr = []
    @pro_diff_hash = {}
  end
  #�����ݿ�1ת��Ϊ2
  def db_transform(db)
    @t1_diff_arr.each{|table| db.delete_table(table.name)}#ɾ��
    @t2_diff_arr.each{|table| db.create_table(table)}#����

    #ɾ�ֶ�
    #���ֶ�
    
  end
  #��ʾ����
  def show_diff()
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '������:'
      @t1_diff_arr.each{|table| puts '  ' * 3 << table.name}
      @t2_diff_arr.each{|table| puts '  ' * 35 << table.name}
    end
    if @f1_diff_arr != [] || @f1_diff_arr != []
      puts '�ֶμ�����:'
      @f1_diff_arr.each{|field| puts '  ' * 3 << field.table.name << '  ' << field.name}
      @f2_diff_arr.each{|field| puts '  ' * 35 << field.table.name << '  ' << field.name}
    end
    if @pro_diff_hash.keys != []
      puts '���Լ�����:'
      
    end
  end
  #��ӱ�����
  def add_table_diff(table_arr1,table_arr2)
    @t1_diff_arr += table_arr1
    @t2_diff_arr += table_arr2
  end
  #����ֶμ�����
  def add_field_diff(field_arr1,field_arr2)
    @f1_diff_arr += field_arr1
    @f2_diff_arr += field_arr2
  end
  #������Լ�����,���������Լ��ֶ�����,������������ԵȵĶ���(����ֶ�)
  def add_pro_diff(obj1,obj2)
    @pro_diff_hash[obj1] = obj2 if get_pro_diff(obj1,obj2)
  end
  #������������Ĳ���
  def get_pro_diff(obj1,obj2)
    case obj1.class.to_s
    when 'MDTable'
      return true if obj1.explanation != obj2.explanation
      return true if obj1.remark != obj2.remark
    when 'MDField'
      return true if obj1.type != obj2.type
      return true if obj1.null != obj2.null
      return true if obj1.p != obj2.p
      return true if obj1.identity != obj2.identity
      return true if obj1.explanation != obj2.explanation
      return true if obj1.remark != obj2.remark
    end
  end
end