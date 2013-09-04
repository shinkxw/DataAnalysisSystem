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
    @f1_diff_arr.each{|field| db.delete_field(field)}#ɾ�ֶ�
    @f2_diff_arr.each{|f| db.add_field(f);add_pro_diff(f.ef,f)}#���ֶ�
    @pro_diff_hash.each{|o1,o2| obj_transform(o1,o2,db)}#�޸Ķ�������
  end
  #�����ݿ��н�����1ת��Ϊ����2
  def obj_transform(obj1,obj2,db)
    case obj1.class.to_s
    when 'MDTable'#ֻ��explanation����ʱʹ��
      obj1.has_exp? ? db.update_texp(obj2) : db.add_texp(obj2)
    when 'MDField'
      dp_arr = get_pro_diff(obj1,obj2)
      dp_arr.each{|dp| field_transform(dp,obj1,obj2,db)}
    end
  end
  #�����ݿ���ת���ֶ�����
  def field_transform(dp,f1,f2,db)
    case dp
    when 'type' then db.update_ftype(f2)
    when 'null'
      f2.null == 'T' ? db.field_null(f2) : db.field_not_null(f2)
    when 'explanation'
      f1.has_exp? ? db.update_fexp(f2) : db.add_fexp(f2)
    else puts "#{dp}���Բ�����ʱ�޷�����"
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
      @@table_pro_arr.each{|p| result << p if obj1.send(p) != obj2.send(p)}
    when 'MDField'
      @@field_pro_arr.each{|p| result << p if obj1.send(p) != obj2.send(p)}
    end
    result
  end
  #��ʾ����
  def show_diff
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '������:'
      @t1_diff_arr.each{|table| puts '  ' * 3 << table.gname}
      @t2_diff_arr.each{|table| puts '  ' * 35 << table.gname}
    end
    if @f1_diff_arr != [] || @f2_diff_arr != []
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
          puts "#{'  ' * 6 << pro}:  #{k.send(pro)}#{' ' * 55}#{v.send(pro)}"
        end
      end
    end
  end
  #��ʾ����(cmd��)
  def show_cmd_diff
    puts '  ' * 2 << '���ݿ�' << '  ' * 16 << '������'
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '������:'
      @t1_diff_arr.each{|table| puts '  ' * 2 << table.gname}
      @t2_diff_arr.each{|table| puts '  ' * 20 << table.gname}
    end
    if @f1_diff_arr != [] || @f2_diff_arr != []
      puts '�ֶμ�����:'
      @f1_diff_arr.each{|field| puts '  ' * 2 << field.table.gname << '  ' << field.gname}
      @f2_diff_arr.each{|field| puts '  ' * 20 << field.table.gname << '  ' << field.gname}
    end
    if @pro_diff_hash.keys != []
      puts '���Լ�����:'
      @pro_diff_hash.each do |k,v|
        if k.class.to_s == 'MDTable'
          puts '  ' * 2 << k.gname.ljust(44) << v.gname
        else
          tf_name = "#{k.table.gname}  #{k.gname}"
          puts '  ' * 2 << tf_name.ljust(40) << v.table.gname << '  ' << v.gname
        end
        get_pro_diff(k,v).each do |pro|
          puts "#{'  ' * 3 << pro}:  #{k.send(pro)}#{' ' * 33}#{v.send(pro)}"
        end
      end
    end
  end
end