#!/usr/bin/env ruby -w
# encoding: GBK
#Sql(SQL Server����)�ű�������
class SqlSSAnalyzer
  attr_reader :arr_reader#���������ַ���
  attr_reader :analyzer_version#�������汾
  attr_reader :area#�������
  #��ʼ��
  def initialize(log = Log.new)
    @arr_reader = nil
    @analyzer_version = "0.1"
    @area = nil
    @log = log
  end
  #����Sql�ű�
  def analyze(sql_script)
    @arr_reader = ArrReader.new(sql_script)
    @table_num = 0
    @area = MDArea.new(@analyzer_version)
    name_space = MDNameSpace.new("SqlSSAnalyzer","SQL Server","")
    table = nil
    state = "namespace"#��ǰ״̬(namespace,field,p,data,explanation)
    next_state = "namespace"
    line = @arr_reader.now
    while line != nil
      case state
      when "namespace"
        if line =~ /^CREATE TABLE \[dbo\]\.\[(.+)\]\(/
          name_space.add_table(table) if table != nil
          table = MDTable.new($1,"","")
          next_state = "field"
        end
      when "field"
        if line =~ /\[(.+?)\] \[(.+?)(?:\]|\)) (.+?),$/
          field_name = $1
          field_type = $2
          str = $3
          identity = "F"
          if str =~ /IDENTITY/#����������
            identity = "T"
            field_null = "F"
          else
            field_null = (str == "NULL" ? "T" : "F" )
          end
          if field_type =~ /^(.+?)\]\((.+?)$/
            field_type = "#{$1}(#{$2})"
          end
          table.add_field(MDField.new(table,field_name,field_type,field_null,"F","","",identity))
        elsif line =~ /CONSTRAINT \[PK/#������
          next_state = "p"
        elsif line =~ /\) ON \[PRIMARY\]/#û������
          next_state = "explanation"
        end
      when "p"
        if line =~ /\[(.+?)\] ASC(,$|$)/
          table.add_primary_key($1)
        elsif line =~ /\) ON \[PRIMARY\]/
          next_state = "explanation"
        end
      when "explanation"
        if line =~ /^INSERT \[dbo\]\./
          @arr_reader.fallback#���ݲ���ʱ�ͻ���
          next_state = "data"
        elsif line =~ /\/\*\*\*\*\*\* Object:  Table \[dbo\]\./
          next_state = "namespace"
        elsif line =~ /^EXEC sys.sp_addextendedproperty/
          out = line.split(/ /)
          if out.size == 7#��˵��
            out[3] =~ /^@value=N'(.+?)'$/
            table_explanation = $1
            out[6] =~ /^@level1type=N'TABLE',@level1name=N'(.+?)'\s$/
            table_name = $1
            table.explanation = table_explanation
          else#�ֶ�˵��
            out[3] =~ /^@value=N'(.+?)'$/
            field_explanation = $1
            out[6] =~ /^@level1type=N'TABLE',@level1name=N'(.+?)',$/
            table_name = $1
            out[7] =~ /^@level2type=N'COLUMN',@level2name=N'(.+?)'\s$/
            field_name = $1
            table.find_field(field_name).explanation = field_explanation
          end
        end
      when "data"
        if line =~ /^INSERT \[dbo\]\.(.+?)\)$/
          table.add_data(data_analyze(line))
        elsif line =~ /\/\*\*\*\*\*\* Object:  Table \[dbo\]\./
          next_state = "namespace"
        else
          @log.push("SqlSSAnalyzer: this line can not analyze #{line}") unless line =~ /^(print|GO|SET)/
        end
      end
      if state != next_state
        state = next_state
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
  #���ݽ���,����һ�����ݶ���
  def data_analyze(line)
    hash = {}
    line =~ /INSERT \[dbo\]\.\[.+?\] \(([^\)]+?)\) VALUES \((.+?)\)$/
    key_arr = $1
    value_arr = $2
    key_arr = key_arr.split(/, /)
    value_arr = value_arr.split(/, (?!\d+?\))/)
    k_arr = []
    v_arr = []
    key_arr.each do |key|
      key =~ /\[(.+?)\]/
      k_arr.push($1)
    end
    value_arr.each do |value|
      if value =~ /^N'(.*?)'$/
        v_arr.push($1)
      elsif value =~ /CAST\((.+?) AS /
        #v_arr.push($1)
        v_arr.push(value)
      else
        v_arr.push(value)
      end
    end
    
    if key_arr.size != value_arr.size
      @log.push("SqlSSAnalyzer: #{key_arr.size} #{key_arr}")
      @log.push("SqlSSAnalyzer: #{value_arr.size} #{value_arr}")
    end
    
    v_arr.each_index do |index|
      if v_arr[index] != "NULL"#ֻ��Ӳ�Ϊ�յ�
        hash[k_arr[index]] = v_arr[index]
      end
    end
    MDData.new(hash)
  end
  #�����һ�����ݣ��жϱ������
  def next_line
    line = @arr_reader.next
    if line =~ /^CREATE TABLE/
      @table_num += 1
    end
    line
  end
  
end
