#!/usr/bin/env ruby -w
# encoding: GBK
#数据转换方法
class ConversionMethod
  #正文转换
  def self.content(str)
    str.gsub(/'/, "''")
  end
  #datetime转换为字符串
  def self.datetime(t)
    "CAST('#{t.year}-#{t.month}-#{t.day} #{t.hour}:#{t.min}:#{t.sec}' AS DateTime)"
  end
  #datetime转换为6位字符串
  def self.time_to_6(time);time.to_s.split(" ")[0].delete("-")[0,5] end
  #datetime转换为8位字符串
  def self.time_to_8(time);time.to_s.split(" ")[0].delete("-") end
end