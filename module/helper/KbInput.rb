#!/usr/bin/env ruby -w
# encoding: GBK
#键盘输入类
class KbInput
  #获得输入
  def self.get_input;@@input = gets.chop! end
  #根据是否输入Y或y来返回布尔值
  def self.get_bool
    get_input
    @@input == "Y" || @@input == "y"
  end
end
