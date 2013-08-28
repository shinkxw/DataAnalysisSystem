#!/usr/bin/env ruby -w
# encoding: GBK
#����ת������
class ConversionMethod
  #����ת��
  def self.content(str)
    str.gsub(/'/, "''")
  end
  #����ת��,�����滻��ǩ
  def self.content_change(str)
    str.gsub!(/'/, "''")
    str.gsub(%r(<A href=\"../../upfile/)) {|s| '<A href="../../../upfile/' }
    str.gsub(%r(<A href=\"upfile/)) {|s| '<A href="../../../upfile/' }
    
  end
  #datetimeת��Ϊ�ַ���
  def self.datetime(t)
    if t
      "CAST('#{t.year}-#{t.month}-#{t.day} #{t.hour}:#{t.min}:#{t.sec}' AS DateTime)"
    else
      ""
    end
  end
  #datetimeת��Ϊ6λ�ַ���
  def self.time_to_6(time);time.to_s.split(" ")[0].delete("-")[0,5] end
  #datetimeת��Ϊ8λ�ַ���
  def self.time_to_8(time);time.to_s.split(" ")[0].delete("-") end
end