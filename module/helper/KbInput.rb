#!/usr/bin/env ruby -w
# encoding: GBK
#����������
class KbInput
  #�������
  def self.get_input;@@input = gets.chop! end
  #�����Ƿ�����Y��y�����ز���ֵ
  def self.get_bool
    get_input
    @@input == "Y" || @@input == "y"
  end
end
