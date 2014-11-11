#!/usr/bin/env ruby -w
# encoding: GBK
#字符串缩进管理器
class Indent
  attr_reader :tab#单次缩进字符长度
  attr_reader :indent_num#缩进次数
  #初始化
  def initialize(tab = "    ",indent_num = 0)
    @tab = tab
    @indent_num = indent_num
  end
  #输出缩进字符串
  def t
    @tab * @indent_num
  end
  #增一缩进次数再输出字符串
  def l
    @indent_num += 1
    t
  end
  #减一缩进次数再输出字符串
  def s
    @indent_num -= 1 if @indent_num > 0
    t
  end
  #增一缩进次数
  def long
    @indent_num += 1
    nil
  end
  #缩进次数置零
  def to_0
    @indent_num = 0
  end
  
end
