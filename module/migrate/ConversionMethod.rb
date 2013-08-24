#!/usr/bin/env ruby -w
# encoding: GBK
#����ת������
class ConversionMethod
  #����ת��
  def self.content(str)
    str.gsub(/'/, "''")
  end
  #datetimeת��Ϊ�ַ���
  def self.datetime(t)
    "CAST('#{t.year}-#{t.month}-#{t.day} #{t.hour}:#{t.min}:#{t.sec}' AS DateTime)"
  end
  #datetimeת��Ϊ6λ�ַ���
  def self.time_to_6(time);time.to_s.split(" ")[0].delete("-")[0,5] end
  #datetimeת��Ϊ8λ�ַ���
  def self.time_to_8(time);time.to_s.split(" ")[0].delete("-") end
end