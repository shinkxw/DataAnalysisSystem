#!/usr/bin/env ruby -w
# encoding: GBK
#命令行主界面
class MainInterface < BaseInterface
  #初始化
  def initialize
    super
  end
  #开始处理
  def start
    super
  end
  #输入前操作
  def before_input
    super
    show_menu
  end
  #输入后操作
  def after_input
    menu_determine
    super
  end
  # 结束处理
  def terminate
    puts "正在退出..."
    super
  end
  #菜单判断
  def menu_determine
    case @input
    when "c"
      cli = ManageAreaInterface.new
      cli.main
    when "t"
      puts "暂时不提供此功能。"
    when "q"
      @statu = "quit"
    else
      puts "该输入无效。"
    end
  end
  #显示菜单
  def show_menu
    puts "----------------------------"
    puts "   输入c将选择工作环境      "
    puts "   输入t可直接进行转换      "
    puts "   输入q退出系统            "
    puts "----------------------------"
  end
end
