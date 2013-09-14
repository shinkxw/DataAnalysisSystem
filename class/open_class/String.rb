#!/usr/bin/env ruby -w
# encoding: GBK
class String
  #获得画面长度，中文字符长度为2
  def cn_length
    self.length + self.encode('utf-8').scan(/[\u4E00-\u9FA5]/).size
  end
  #返回指定画面长度字符串，pad为填充符号
  def fill_cn(length, pad = ' ')
    cl = cn_length
    if cl < length
      self.dup << (pad * (length - cl))
    else
      self
    end
  end
end