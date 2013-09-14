#!/usr/bin/env ruby -w
# encoding: GBK
class String
  #��û��泤�ȣ������ַ�����Ϊ2
  def cn_length
    self.length + self.encode('utf-8').scan(/[\u4E00-\u9FA5]/).size
  end
  #����ָ�����泤���ַ�����padΪ������
  def fill_cn(length, pad = ' ')
    cl = cn_length
    if cl < length
      self.dup << (pad * (length - cl))
    else
      self
    end
  end
end