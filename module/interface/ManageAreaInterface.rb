#!/usr/bin/env ruby -w
# encoding: GBK
#管理元数据域界面
class ManageAreaInterface < BaseInterface
  #初始化
  def initialize
    super
  end
  #开始处理
  def start
    super
    @area_hash = {}
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
    super
  end
  #菜单判断
  def menu_determine
    case @input
    when "n"
      puts "输入要新建工作环境的名字:"
      get_input
      if @input != ""
        AreaManager.create_area(@input)
      else
        puts "名字不能为空!"
      end
    when "d"
      puts "输入要删除工作环境的对应号码:"
      get_input
      area_name = @area_hash[@input]
      if area_name != nil
        puts "请问是否要删除工作环境 #{area_name}?(Y/N)"
        get_input
        if @input == "Y" || @input == "y"
          AreaManager.delete_area(area_name)
          puts "删除成功。"
        end
      else
        puts "输入号码有误！"
      end
    when "q"
      @statu = "quit"
    else
      area_name = @area_hash[@input]
      if area_name != nil
        AreaManager.load_work_area(area_name)
        
      else
        puts "该输入无效。"
      end
    end
  end
  #显示菜单
  def show_menu
    puts "----------------------------"
    show_all_area
    puts "   输入工作环境对应号码进入 "
    puts "   输入n新建工作环境        "
    puts "   输入d删除工作环境        "
    puts "   输入q返回上级目录        "
    puts "----------------------------"
  end
  #显示已有的工作环境
  def show_all_area
    num = 1
    puts "   现有工作环境：           "
    AreaManager.get_all_area_name.each do |name|
      puts "   #{name.ljust(16)}#{num.to_s} "
      @area_hash[num.to_s] = name
      num += 1
    end
  end
end
