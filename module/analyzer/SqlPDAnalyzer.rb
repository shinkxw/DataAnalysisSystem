#!/usr/bin/env ruby -w
# encoding: GBK
#Sql(Power Designer15����)�ű�������
class SqlPDAnalyzer < BaseAnalyzer
  attr_reader :arr_reader#���������ַ���
  attr_reader :analyzer_version#�������汾
  attr_reader :area#�������
  #��ʼ��
  def initialize(log = Log.new)
    @arr_reader = nil
    @analyzer_version = "0.1"
    @area = nil
    super(log)
  end
  #����Sql�ű�
  def analyze(sql_script)
    @arr_reader = ArrReader.new(sql_script)
    @table_num = 0
    @area = MDArea.new(@analyzer_version)
    name_space = MDNameSpace.new("SqlPDAnalyzer","SQL Server","")
    table = nil
    state = "namespace"#��ǰ״̬(namespace,field,p)
    line = @arr_reader.now
    while line != nil
      case state
      when "namespace"
        if line =~ /^create table (.+) \(--(.+)\s/
          name_space.add_table(table) if table != nil
          table = MDTable.new($1,$2,"")
          state = "field"
        end
      when "field"
        if line =~ /^\s+constraint/
          line =~ /\((.+)\)/
          pk = $1.split(/, /)
          pk.each do |fn|
            @log.push(line) unless table.add_primary_key(fn)
          end
          state = "namespace"
        else
          out = line.split(/(.+)\s$/)
          out = out[1].split(/\s{2,}/)
          field_name = out[1]
          field_type = out[2]
          if out[3] == "identity"
            identity = "T"
            field_null = "F"
          else
            identity = "F"
            field_null = out[3] == "null" ? "T" : "F"
          end
          line = next_line
          line = $1 if line =~ /\/\*(.+)\*\/\,/
          line =~ /^([^��]+)(?:��(.+)��|$)/
          case $1
          when "רҵ������Ϣ���ݱ�";explanation = "רҵ������Ϣ"
          when "ѧ���";explanation = "ѧ��"
          when "ѧУ���";explanation = "ѧУ��"
          when "�����ƻ�����";explanation = "�����ƻ�"
          when ""
          else explanation = $1
          end
          if $2 == nil
            remark = ""
          else
            remark = $2
          end
          table.add_field(MDField.new(table,field_name,field_type,field_null,"F",explanation,remark,identity))
        end
      end
      line = next_line
    end
    name_space.add_table(table) if table != nil
    @area.add_name_space(name_space)
    if @area.get_table_num != @table_num
      @log.push("SqlSSAnalyzer: table_num is wrong")
    end
    @area
  end
  #�����һ�����ݣ��жϱ������
  def next_line
    line = @arr_reader.next
    if line =~ /^create table /
      @table_num += 1
    end
    line
  end
end
