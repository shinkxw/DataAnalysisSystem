#!/usr/bin/env ruby -w
# encoding: GBK
#数据转换方法
class DataConver
  #获得转换方法
  def self.get_proc(proc)
    case proc.class.to_s
    when 'String'
      if public_methods.include?(proc.to_sym)
        return public_method(proc.to_sym) 
      else
        puts "传入转换方法名有误：#{proc}"
      end
    when 'Proc'
      return proc
    else puts "传入转换方法有误：#{proc}"
    end
    Proc.new{|str| str}
  end
  #正文转换
  def self.content(str)
    str.gsub(/'/, "''")
  end
  #正文转换,附带替换标签
  def self.content_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/HrSchoolFiles/, "WZXT/HrSchoolFiles")
    #str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/) {|s| '../../../upfile/' }
    str
  end
  #datetime转换为字符串
  def self.datetime(t)
    if t
      "CAST('#{t.year}-#{t.month}-#{t.day} #{t.hour}:#{t.min}:#{t.sec}' AS DateTime)"
    else
      ""
    end
  end
  #datetime转换为6位字符串
  def self.time_to_6(time);time.to_s.split(" ")[0].delete("-")[0,5] end
  #datetime转换为8位字符串
  def self.time_to_8(time);time.to_s.split(" ")[0].delete("-") end
end