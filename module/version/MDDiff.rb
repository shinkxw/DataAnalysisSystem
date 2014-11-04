#!/usr/bin/env ruby -w
# encoding: GBK
#Ԫ���ݱȽ����ȽϺ������ɵĲ���ȶ���
class MDDiff
  @@table_pro_arr = %w(explanation)
  @@field_pro_arr = %w(type null explanation p identity)#remark
  attr_reader :a1_diff_arr#��¼Ԫ������1�ж��еı�
  attr_reader :a2_diff_arr#��¼Ԫ������2�ж��еı�
  attr_reader :t1_diff_arr#��¼Ԫ������1�б���е��ֶ�
  attr_reader :t2_diff_arr#��¼Ԫ������2�б���е��ֶ�
  attr_reader :pro_diff_arr#��¼�໥����Ķ���
  #��ʼ��
  def initialize
    @t1_diff_arr,@t2_diff_arr = [],[]
    @f1_diff_arr,@f2_diff_arr = [],[]
    @pro_diff_hash = {}
  end
  #�����ݿ�1ת��Ϊ2
  def db_transform(db)
    @rebuild_table_arr = []
    @t1_diff_arr.each do |table|#ɾ��
      if db.has_data?(table.name)
        puts "��Ҫɾ��#{table.name}�������Ƿ�ɾ��?(Y/N)"
        db.delete_table(table.name) if KbInput.get_bool
      else
        db.delete_table(table.name)
      end
    end
    @t2_diff_arr.each{|table| db.create_table(table)}#����
    @f1_diff_arr.each{|field| db.delete_field(field)}#ɾ�ֶ�
    @f2_diff_arr.each{|f| db.add_field(f);add_pro_diff(f.ef,f)}#���ֶ�
    @pro_diff_hash.each{|o1,o2| db_obj_transform(o1,o2,db)}#�޸Ķ�������
    #���޷����µı�����ؽ�
    @rebuild_table_arr.uniq.each do |table|
      if db.has_data?(table.name)
        puts "�����޷�ֱ�Ӹ��±�ṹ����ͨ���ؽ���ʽ�����±�#{table.name}"
        puts "�ò��������ƻ����ݣ������Ƿ��ؽ�?(Y/N)"
        db.rewrite_table(table) if KbInput.get_bool
      else
        db.rebuild_table(table)
      end
    end
    db.reset_conn#��������
  end
  #�����ݿ��н�����1ת��Ϊ����2
  def db_obj_transform(obj1,obj2,db)
    case obj1.class.to_s
    when 'MDTable'#ֻ��explanation����ʱʹ��
      obj1.has_exp? ? db.update_texp(obj2) : db.add_texp(obj2)
    when 'MDField'
      dp_arr = get_pro_diff(obj1,obj2)
      dp_arr.each{|dp| db_field_transform(dp,obj1,obj2,db)}
    end
  end
  #�����ݿ���ת���ֶ�����
  def db_field_transform(dp,f1,f2,db)
    case dp
    when 'type'
      if (f1.db_type == 'nvarchar' && f2.db_type == 'nvarchar')
        db.update_ftype(f2)
      else
        @rebuild_table_arr << f2.table
      end
    when 'null'
      f2.null == 'T' ? db.field_null(f2) : db.field_not_null(f2)
    when 'explanation'
      f1.has_exp? ? db.update_fexp(f2) : db.add_fexp(f2)
    when 'p'
      @rebuild_table_arr << f2.table
    when 'identity'
      @rebuild_table_arr << f2.table
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
    @pro_diff_hash[obj1] = obj2 unless get_pro_diff(obj1,obj2).empty?
  end
  #������������Ĳ���
  def get_pro_diff(obj1,obj2)
    result = []
    case obj1.class.to_s
    when 'MDTable';@@table_pro_arr.each{|p| result << p if obj1.send(p) != obj2.send(p)}
    when 'MDField';@@field_pro_arr.each{|p| result << p if obj1.send(p) != obj2.send(p)}
    end
    result
  end
  #�ж��Ƿ���ڲ���
  def has_diff?
    size = @t1_diff_arr.size + @t2_diff_arr.size
    size += @f1_diff_arr.size
    size += @f2_diff_arr.size
    size += @pro_diff_hash.size
    size != 0
  end
  #���ɲ�����־
  def build_log
    log = ''
    @t1_diff_arr.each{|t| log << "ɾ���˱�: #{t.gname}(#{t.name})\n"}
    @f1_diff_arr.each{|f| log << "ɾ���˱�<#{f.table.gname}>��<#{f.gname}>�ֶ�\n"}
    @t2_diff_arr.each{|t| log << "����˱�: #{t.gname}(#{t.name})\n"}
    @f2_diff_arr.each{|f| log << "�ڱ�<#{f.table.gname}>�������<#{f.gname}>�ֶ�\n"}
    @pro_diff_hash.each do |o1,o2|
      case o1.class.to_s
      when 'MDTable'#ֻ��explanation����ʱʹ��
        if o1.has_exp?
          log << "��<#{o1.name}>��˵����<#{o1.explanation}>��Ϊ<#{o2.explanation}>\n"
        else
          log << "Ϊ��<#{o2.name}>�����˵��: #{o2.explanation}\n"
        end
      when 'MDField'
        get_pro_diff(o1,o2).each do |dp|
          log << "��<#{o1.table.gname}>���ֶ�<#{o1.gname}>������#{dp}"
          log << "��#{o1.send(dp)}��Ϊ#{o2.send(dp)}\n"
        end
      end
    end
    log
  end
  #��ʾ����(˵����)
  def show_diff
    puts '  ' * 2 << '���ݿ�' << '  ' * 15 << '������'
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '������:'
      @t1_diff_arr.each{|table| puts '   ' << table.gname}
      @t2_diff_arr.each{|table| puts '   ' * 13 << table.gname}
    end
    if @f1_diff_arr != [] || @f2_diff_arr != []
      puts '�ֶμ�����:'
      @f1_diff_arr.each{|field| puts '   ' << field.table.gname.fill_cn(24) << field.gname}
      @f2_diff_arr.each{|field| puts '   ' * 13 << field.table.gname.fill_cn(24) << field.gname}
    end
    if @pro_diff_hash.keys != []
      puts '���Լ�����:'
      @pro_diff_hash.each do |k,v|
        if k.class.to_s == 'MDTable'
          puts '   ' << k.gname.fill_cn(40) << v.gname
        else
          tf_name = "#{k.table.gname}  #{k.gname}"
          puts '   ' << tf_name.fill_cn(40) << v.table.gname << '  ' << v.gname
        end
        get_pro_diff(k,v).each do |pro|
          puts "#{'   ' * 2 << pro}:  #{k.send(pro).to_s.ljust(26)}#{v.send(pro)}"
        end
      end
    end
  end
  #��ʾ����(���ư�)
  def show_diff2
    puts '  ' * 2 << '���ݿ�' << '  ' * 15 << '������'
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '������:'
      @t1_diff_arr.each{|table| puts '   ' << table.name}
      @t2_diff_arr.each{|table| puts '   ' * 13 << table.name}
    end
    if @f1_diff_arr != [] || @f2_diff_arr != []
      puts '�ֶμ�����:'
      @f1_diff_arr.each{|field| puts '   ' << field.table.name.ljust(20) << field.name}
      @f2_diff_arr.each{|field| puts '   ' * 13 << field.table.name.ljust(20) << field.name}
    end
    if @pro_diff_hash.keys != []
      puts '���Լ�����:'
      @pro_diff_hash.each do |k,v|
        if k.class.to_s == 'MDTable'
          puts '   ' << k.name.ljust(40) << v.name
        else
          tf_name = "#{k.table.name}  #{k.name}"
          puts '   ' << tf_name.ljust(40) << v.table.name << '  ' << v.name
        end
        get_pro_diff(k,v).each do |pro|
          puts "#{'   ' * 2 << pro}:  #{k.send(pro).to_s.ljust(26)}#{v.send(pro)}"
        end
      end
    end
  end
end