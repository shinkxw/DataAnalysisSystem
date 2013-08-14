#!/usr/bin/env ruby -w
# encoding: GBK
#基本界面
class BaseInterface
  attr_reader :statu#当前状态
  attr_reader :input#用户输入
  #初始化
  def initialize
    @statu = nil
    @input = nil
    main
  end
  #主循环
  def main
    start
    loop do
      before_input
      get_input
      after_input
      break if @statu == "quit" 
    end
    terminate
  end
  #开始处理
  def start
  end
  #输入前操作
  def before_input
  end
  #获得输入
  def get_input
    @input = gets.chop!
  end
  #输入后操作
  def after_input
  end
  #结束处理
  def terminate
  end
  #根据是否输入Y或y来返回布尔值
  def get_bool
    get_input
    @input == "Y" || @input == "y"
  end
end
