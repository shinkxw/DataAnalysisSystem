#!/usr/bin/env ruby -w
# encoding: GBK
#ҵ������ݽ�����
class STAnalyzer
  attr_reader :arr_reader#���������ַ���
  attr_reader :analyzer_version#�������汾
  attr_reader :area#�������
  attr_reader :field_hash#������ݼ��Ĺ�ϣ��
  #��ʼ��
  def initialize(log = Log.new)
    @arr_reader = nil
    @analyzer_version = "0.1"
    @area = nil
    @field_hash = nil
    @table_arr = nil
    @log = log
  end
  #����ҵ�������
  def analyze(str_arr)
    @arr_reader = ArrReader.new(str_arr)
    @field_hash = {}
    @table_arr = []
    line = @arr_reader.now
    until line =~ /^���ݼ�/
      unless line =~ /^(��|Table|\s|#)/
        o = line.split(/---/)
        if o.size == 10
          new_field = ServiceTableField.new(o[0],o[1],o[2],o[3],o[4],o[5],o[6],o[7],o[8])
          old_field = @field_hash[o[0]]
          @field_hash[o[0]] = new_field if old_field == nil || (old_field.lx == "NULL" && old_field.yybh == "NULL")
        else
          @log.push("STAnalyzer:this line is wrong" + line)
        end
      end
      line = next_line
    end
    while line != nil
      if line =~ /^��/
        line.delete!("\n") 
        o = line.split(/\t| (?! )|  /)
        table = ServiceTable.new(o[1],o[2])
        line = next_line
        while line =~ /^[^\s]/
          if line =~ /^[^���]/
            o = line.split(/---/)
            if o.size == 10
              new_field = ServiceTableField.new(o[0],o[1],o[2],o[3],o[4],o[5],o[6],o[7],o[8])
              table.add_field(new_field)
              old_field = @field_hash[o[0]]
              @field_hash[o[0]] = new_field if old_field == nil || (old_field.lx == "NULL" && old_field.yybh == "NULL")
            else
              @log.push("STAnalyzer:this line is wrong" + line)
            end
          end
          line = next_line
        end
        @table_arr.push(table)
      end
      line = next_line
    end
    #@field_hash.keys.each do |key|
    #  @log.push(@field_hash[key]) if @field_hash[key].lx == "NULL" && @field_hash[key].yybh == "NULL"
    #end
    complement_table
    to_be_metadata
    @area
  end
  #Ϊ�����ݲ�ȫ��Ϣ
  def complement_table
    @table_arr.each do |table|
      table.each_field do |field|
        if field.lx == "NULL"
          nf = find_field(field)
          if nf != nil
            field.lx = nf.lx
            field.cd = nf.cd
            field.yysj = "#{nf.bh} #{nf.sjxm} #{nf.zwjc} #{nf.lx} #{nf.cd} #{nf.ys} #{nf.zkj} #{nf.jsjl} #{nf.yybh}"
          else
            @log.push(field)
          end
        end
      end
    end
  end
  #�����ֶ�Ѱ�Ҿ������͵�����ֶ�
  def find_field(field)
    result = nil
    if field.yybh != "NULL"
      new_field = @field_hash[field.yybh]
      if new_field != nil
        if new_field.lx != "NULL"
          result = new_field
        else
          result = find_field(new_field)
        end
      end
    else
      new_field = @field_hash[field.bh]
      if new_field != nil
        if new_field.lx != "NULL"
          result = new_field
        else
          if new_field.yybh != "NULL"
            new_field = @field_hash[new_field.yybh]
            if new_field != nil
              if new_field.lx != "NULL"
                result = new_field
              else
                result = find_field(new_field)
              end
            end
          end
        end
      end
    end
    result
  end
  #��������ת��ΪԪ����
  def to_be_metadata
    @area = MDArea.new("STAnalyzer")
    name_space = MDNameSpace.new("STAnalyzer","STAnalyzer","")
    @table_arr.each do |st|
      name_space.add_table(st.to_mdtable)
    end
    @area.add_name_space(name_space)
  end
  #�����һ�����ݣ��жϱ������
  def next_line
    line = @arr_reader.next
    line
  end
end
