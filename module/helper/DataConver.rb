#!/usr/bin/env ruby -w
# encoding: GBK
#����ת������
class DataConver
  #���ת������
  def self.get_proc(proc)
    case proc.class.to_s
    when 'String'
      if public_methods.include?(proc.to_sym)
        return public_method(proc.to_sym) 
      else
        puts "����ת������������#{proc}"
      end
    when 'Proc'
      return proc
    else puts "����ת����������#{proc}"
    end
    Proc.new{|str| str}
  end
  #����ת��
  def self.content(str)
    str.gsub(/'/, "''")
  end
  #����ת��,�����滻��ǩ
  def self.content_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/HrSchoolFiles/, "WZXT/HrSchoolFiles")
    #str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/) {|s| '../../../upfile/' }
    str
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