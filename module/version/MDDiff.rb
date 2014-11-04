#!/usr/bin/env ruby -w
# encoding: GBK
#元数据比较器比较后所生成的差异度对象
class MDDiff
  @@table_pro_arr = %w(explanation)
  @@field_pro_arr = %w(type null explanation p identity)#remark
  attr_reader :a1_diff_arr#记录元数据域1中独有的表
  attr_reader :a2_diff_arr#记录元数据域2中独有的表
  attr_reader :t1_diff_arr#记录元数据域1中表独有的字段
  attr_reader :t2_diff_arr#记录元数据域2中表独有的字段
  attr_reader :pro_diff_arr#记录相互差异的对象
  #初始化
  def initialize
    @t1_diff_arr,@t2_diff_arr = [],[]
    @f1_diff_arr,@f2_diff_arr = [],[]
    @pro_diff_hash = {}
  end
  #将数据库1转换为2
  def db_transform(db)
    @rebuild_table_arr = []
    @t1_diff_arr.each do |table|#删表
      if db.has_data?(table.name)
        puts "需要删除#{table.name}，请问是否删除?(Y/N)"
        db.delete_table(table.name) if KbInput.get_bool
      else
        db.delete_table(table.name)
      end
    end
    @t2_diff_arr.each{|table| db.create_table(table)}#建表
    @f1_diff_arr.each{|field| db.delete_field(field)}#删字段
    @f2_diff_arr.each{|f| db.add_field(f);add_pro_diff(f.ef,f)}#加字段
    @pro_diff_hash.each{|o1,o2| db_obj_transform(o1,o2,db)}#修改对象属性
    #对无法更新的表采用重建
    @rebuild_table_arr.uniq.each do |table|
      if db.has_data?(table.name)
        puts "由于无法直接更新表结构，将通过重建方式来更新表#{table.name}"
        puts "该操作可能破坏数据，请问是否重建?(Y/N)"
        db.rewrite_table(table) if KbInput.get_bool
      else
        db.rebuild_table(table)
      end
    end
    db.reset_conn#重置连接
  end
  #在数据库中将对象1转换为对象2
  def db_obj_transform(obj1,obj2,db)
    case obj1.class.to_s
    when 'MDTable'#只有explanation属性时使用
      obj1.has_exp? ? db.update_texp(obj2) : db.add_texp(obj2)
    when 'MDField'
      dp_arr = get_pro_diff(obj1,obj2)
      dp_arr.each{|dp| db_field_transform(dp,obj1,obj2,db)}
    end
  end
  #在数据库中转换字段属性
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
    else puts "#{dp}属性差异暂时无法更新"
    end
  end
  #添加表级差异
  def add_table_diff(table_arr1,table_arr2)
    @t1_diff_arr += table_arr1
    @t2_diff_arr += table_arr2
  end
  #添加字段级差异
  def add_field_diff(field_arr1,field_arr2)
    @f1_diff_arr += field_arr1
    @f2_diff_arr += field_arr2
  end
  #添加属性级差异,包括表属性及字段属性,放入的是两个对等的对象(表或字段)
  def add_pro_diff(obj1,obj2)
    @pro_diff_hash[obj1] = obj2 unless get_pro_diff(obj1,obj2).empty?
  end
  #获得两个对象间的差异
  def get_pro_diff(obj1,obj2)
    result = []
    case obj1.class.to_s
    when 'MDTable';@@table_pro_arr.each{|p| result << p if obj1.send(p) != obj2.send(p)}
    when 'MDField';@@field_pro_arr.each{|p| result << p if obj1.send(p) != obj2.send(p)}
    end
    result
  end
  #判断是否存在差异
  def has_diff?
    size = @t1_diff_arr.size + @t2_diff_arr.size
    size += @f1_diff_arr.size
    size += @f2_diff_arr.size
    size += @pro_diff_hash.size
    size != 0
  end
  #生成差异日志
  def build_log
    log = ''
    @t1_diff_arr.each{|t| log << "删除了表: #{t.gname}(#{t.name})\n"}
    @f1_diff_arr.each{|f| log << "删除了表<#{f.table.gname}>中<#{f.gname}>字段\n"}
    @t2_diff_arr.each{|t| log << "添加了表: #{t.gname}(#{t.name})\n"}
    @f2_diff_arr.each{|f| log << "在表<#{f.table.gname}>中添加了<#{f.gname}>字段\n"}
    @pro_diff_hash.each do |o1,o2|
      case o1.class.to_s
      when 'MDTable'#只有explanation属性时使用
        if o1.has_exp?
          log << "表<#{o1.name}>的说明由<#{o1.explanation}>改为<#{o2.explanation}>\n"
        else
          log << "为表<#{o2.name}>添加了说明: #{o2.explanation}\n"
        end
      when 'MDField'
        get_pro_diff(o1,o2).each do |dp|
          log << "表<#{o1.table.gname}>中字段<#{o1.gname}>的属性#{dp}"
          log << "由#{o1.send(dp)}改为#{o2.send(dp)}\n"
        end
      end
    end
    log
  end
  #显示差异(说明版)
  def show_diff
    puts '  ' * 2 << '数据库' << '  ' * 15 << '工作区'
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '表级差异:'
      @t1_diff_arr.each{|table| puts '   ' << table.gname}
      @t2_diff_arr.each{|table| puts '   ' * 13 << table.gname}
    end
    if @f1_diff_arr != [] || @f2_diff_arr != []
      puts '字段级差异:'
      @f1_diff_arr.each{|field| puts '   ' << field.table.gname.fill_cn(24) << field.gname}
      @f2_diff_arr.each{|field| puts '   ' * 13 << field.table.gname.fill_cn(24) << field.gname}
    end
    if @pro_diff_hash.keys != []
      puts '属性级差异:'
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
  #显示差异(名称版)
  def show_diff2
    puts '  ' * 2 << '数据库' << '  ' * 15 << '工作区'
    if @t1_diff_arr != [] || @t2_diff_arr != []
      puts '表级差异:'
      @t1_diff_arr.each{|table| puts '   ' << table.name}
      @t2_diff_arr.each{|table| puts '   ' * 13 << table.name}
    end
    if @f1_diff_arr != [] || @f2_diff_arr != []
      puts '字段级差异:'
      @f1_diff_arr.each{|field| puts '   ' << field.table.name.ljust(20) << field.name}
      @f2_diff_arr.each{|field| puts '   ' * 13 << field.table.name.ljust(20) << field.name}
    end
    if @pro_diff_hash.keys != []
      puts '属性级差异:'
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