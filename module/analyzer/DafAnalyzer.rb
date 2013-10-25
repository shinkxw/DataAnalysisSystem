#!/usr/bin/env ruby -w
# encoding: GBK
#DAF���ݽ�����
class DafAnalyzer
  attr_reader :arr_reader#���������ַ���
  attr_reader :area#�������
  #��ʼ��
  def initialize(log = Log.new)
    @arr_reader = nil
    @area = nil
    @log = log
  end
  #����DAF����
  def analyze(daf_data_arr,folder_name = nil)
    @arr_reader = ArrReader.new(daf_data_arr)
    name_space = nil
    table = nil
    state = "file"#��ǰ״̬(file,namespace,table,field,data)
    line = @arr_reader.now
    if line =~ /^<\?/#���DAF���ݵ�
      #version = line_analyze(line)["version"]#���DAF�汾
      line = get_valid_line(@arr_reader)
    end
    @area = MDArea.new(folder_name)
    while line != nil
      hash = line_analyze(line)#���ǰ׺����ֵ��
      case state
      when "file"
        if hash[:line_prefix] == "namespace"
          name_space = MDNameSpace.new(hash[:name],hash[:provider],hash[:generation_time])
          state = "namespace"
        elsif hash[:line_prefix] != nil
          @log.push("DafAnalyzer: ��ǩ����" + line)
        elsif line =~ /[^\s]+/#��Ϊ��
          @log.push("DafAnalyzer: ��������" + line)
        end 
      when "namespace"
        if hash[:line_prefix] == "table"
          exp = hash[:explanation] ? hash[:explanation] : hash[:exp]
          table = MDTable.new(hash[:name],exp,hash[:remark])
          state = "table"
        elsif hash[:line_prefix] == "/namespace"
          @area.add_name_space(name_space)
          state = "file"
        elsif hash[:line_prefix] != nil
          @log.push("DafAnalyzer: ��ǩ����" + line)
        elsif line =~ /[^\s]+/#��Ϊ��
          @log.push("DafAnalyzer: ��������" + line)
        end 
      when "table"
        if hash[:line_prefix] == "field_area"
          state = "field"
        elsif hash[:line_prefix] == "data_area"
          state = "data"
        elsif hash[:line_prefix] == "/table"
          name_space.add_table(table)
          state = "namespace"
        elsif hash[:line_prefix] != nil
          @log.push("DafAnalyzer: ��ǩ����" + line)
        elsif line =~ /[^\s]+/#��Ϊ��
          @log.push("DafAnalyzer: ��������" + line)
        end 
      when "field"
        if hash[:line_prefix] == "/field_area"
          state = "table"
        elsif hash[:line_prefix] == nil && line =~ /[^\s]+/#����ֶ�
          exp = hash[:explanation] ? hash[:explanation] : hash[:exp]
          table.add_field(MDField.new(table,hash[:name],hash[:type],hash[:null],hash[:p],exp,hash[:remark],hash[:identity],hash[:default]))
        else
          @log.push("DafAnalyzer: ��ǩ����" + line)
        end
      when "data"
        if hash[:line_prefix] == "/data_area"
          state = "table"
        elsif hash[:line_prefix] == nil && line =~ /[^\s]+/#�������
          hash.delete(:line_prefix) 
          table.add_data(MDData.new(hash))
        else
          @log.push("DafAnalyzer: ��ǩ����" + line)
        end
      end
      line = get_valid_line(@arr_reader)
    end
    @area
  end
  #�����ַ���,����ǰ׺����ֵ�ԵĹ�ϣ��
  R1 = /^([^ "]+?)( |$)/
  R2 = /[^\s]+?=".*?"(?: |\?|$)/
  R3 = /([^\s]+?)="([^"]*?)"( |\?|$)/
  def line_analyze(line)
    result = {}
    line =~ R1#���ǰ׺
    result[:line_prefix] = $1
    line.scan(R2) do |str|#��ü�ֵ��
      if str =~ R3#�ָ��ֵ��
        result[$1.intern] = $2
      else
        @log.push("DafAnalyzer: ��ֵ������ #{str}")
      end
    end
    result
  end
  #���ǵ��������β�����򷵻���Ч������
  def get_valid_line(reader)
    until reader.next == nil
      value = line_valid_value(reader.now)
      return value if value != nil#��Ч
    end
    return nil
  end
  #�ж�һ��Ԫ�����Ƿ���Ч������ֵ
  def line_valid_value(line)
    if line =~ /^\s*($|<(.[^<>]*)>)/
      if $1 != ""#����ֵ
        return $2
      else
        return nil
      end
    else
      @log.push("DafAnalyzer: ��������" + line)
      return nil
    end
  end
end


