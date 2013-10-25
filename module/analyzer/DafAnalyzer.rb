#!/usr/bin/env ruby -w
# encoding: GBK
#DAF数据解析器
class DafAnalyzer
  attr_reader :arr_reader#待分析的字符串
  attr_reader :area#分析结果
  #初始化
  def initialize(log = Log.new)
    @arr_reader = nil
    @area = nil
    @log = log
  end
  #解析DAF数据
  def analyze(daf_data_arr,folder_name = nil)
    @arr_reader = ArrReader.new(daf_data_arr)
    name_space = nil
    table = nil
    state = "file"#当前状态(file,namespace,table,field,data)
    line = @arr_reader.now
    if line =~ /^<\?/#检测DAF数据等
      #version = line_analyze(line)["version"]#获得DAF版本
      line = get_valid_line(@arr_reader)
    end
    @area = MDArea.new(folder_name)
    while line != nil
      hash = line_analyze(line)#获得前缀及键值对
      case state
      when "file"
        if hash[:line_prefix] == "namespace"
          name_space = MDNameSpace.new(hash[:name],hash[:provider],hash[:generation_time])
          state = "namespace"
        elsif hash[:line_prefix] != nil
          @log.push("DafAnalyzer: 标签有误" + line)
        elsif line =~ /[^\s]+/#不为空
          @log.push("DafAnalyzer: 该行有误" + line)
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
          @log.push("DafAnalyzer: 标签有误" + line)
        elsif line =~ /[^\s]+/#不为空
          @log.push("DafAnalyzer: 该行有误" + line)
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
          @log.push("DafAnalyzer: 标签有误" + line)
        elsif line =~ /[^\s]+/#不为空
          @log.push("DafAnalyzer: 该行有误" + line)
        end 
      when "field"
        if hash[:line_prefix] == "/field_area"
          state = "table"
        elsif hash[:line_prefix] == nil && line =~ /[^\s]+/#添加字段
          exp = hash[:explanation] ? hash[:explanation] : hash[:exp]
          table.add_field(MDField.new(table,hash[:name],hash[:type],hash[:null],hash[:p],exp,hash[:remark],hash[:identity],hash[:default]))
        else
          @log.push("DafAnalyzer: 标签有误" + line)
        end
      when "data"
        if hash[:line_prefix] == "/data_area"
          state = "table"
        elsif hash[:line_prefix] == nil && line =~ /[^\s]+/#添加数据
          hash.delete(:line_prefix) 
          table.add_data(MDData.new(hash))
        else
          @log.push("DafAnalyzer: 标签有误" + line)
        end
      end
      line = get_valid_line(@arr_reader)
    end
    @area
  end
  #分析字符串,返回前缀及键值对的哈希表
  R1 = /^([^ "]+?)( |$)/
  R2 = /[^\s]+?=".*?"(?: |\?|$)/
  R3 = /([^\s]+?)="([^"]*?)"( |\?|$)/
  def line_analyze(line)
    result = {}
    line =~ R1#获得前缀
    result[:line_prefix] = $1
    line.scan(R2) do |str|#获得键值对
      if str =~ R3#分割键值对
        result[$1.intern] = $2
      else
        @log.push("DafAnalyzer: 键值对有误 #{str}")
      end
    end
    result
  end
  #除非到达数组结尾，否则返回有效的数据
  def get_valid_line(reader)
    until reader.next == nil
      value = line_valid_value(reader.now)
      return value if value != nil#有效
    end
    return nil
  end
  #判断一行元数据是否有效并返回值
  def line_valid_value(line)
    if line =~ /^\s*($|<(.[^<>]*)>)/
      if $1 != ""#存在值
        return $2
      else
        return nil
      end
    else
      @log.push("DafAnalyzer: 该行有误" + line)
      return nil
    end
  end
end


