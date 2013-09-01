#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱȽ����ȽϺ������ɵĲ���ȶ���
class MDDiff
  @@table_pro_arr = %w(explanation)
  @@field_pro_arr = %w(type null p identity explanation)#remark
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
      @t1_diff_arr.each{|table| puts '  ' * 3 << table.gname}
      @t2_diff_arr.each{|table| puts '  ' * 35 << table.gname}
    end
    if @f1_diff_arr != [] || @f1_diff_arr != []
      puts '�ֶμ�����:'
      @f1_diff_arr.each{|field| puts '  ' * 3 << field.table.gname << '  ' << field.gname}
      @f2_diff_arr.each{|field| puts '  ' * 35 << field.table.gname << '  ' << field.gname}
    end
    if @pro_diff_hash.keys != []
      puts '���Լ�����:'
      @pro_diff_hash.each do |k,v|
        if k.class.to_s == 'MDTable'
          puts '  ' * 3 << k.gname.ljust(66) << v.gname
        else
          tf_name = "#{k.table.gname}  #{k.gname}"
          puts '  ' * 3 << tf_name.ljust(60) << v.table.gname << '  ' << v.gname
        end
        get_pro_diff(k,v).each do |pro|
          puts '  ' * 6 << pro << ':  ' << k.send(pro).ljust(55) << v.send(pro)
        end
      end
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
    @pro_diff_hash[obj1] = obj2 if get_pro_diff(obj1,obj2) != []
  end
  #������������Ĳ���
  def get_pro_diff(obj1,obj2)
    result = []
    case obj1.class.to_s
    when 'MDTable'
      @@table_pro_arr.each do |pro|
        result << pro if obj1.send(pro) != obj2.send(pro)
      end
    when 'MDField'
      @@field_pro_arr.each do |pro|
        result << pro if obj1.send(pro) != obj2.send(pro)
      end
    end
    result
  end
end