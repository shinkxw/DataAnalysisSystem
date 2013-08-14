#!/usr/bin/env ruby -w
# encoding: GBK
#工作区控制界面
class WorkAreaInterface < BaseInterface
  #初始化
  def initialize(area_name)
    @work_area = AreaManager.load_work_area(area_name)
    super()
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
    puts "正在关闭工作区"
    @work_area.save_and_close_work_area
    super
  end
  #菜单判断
  def menu_determine
    case @input
    when "e"#输出数据
      ExportAreaInterface.new(@work_area)
    when "s"#查看并搜索工作区
      
    when "u"#更新工作区数据
      
    when "l"#读取临时区数据
      
    when "b"#备份工作区
      
    when "q"#离开工作区
      @statu = "quit"
    else
      puts "该输入无效。"
    end
  end
  #显示菜单
  def show_menu
    puts "----------------------------"
    puts "   输入e可输出各项格式数据  "
    puts "   输入s可查看并搜索工作区  "
    puts "   输入u可更新工作区数据    "
    puts "   输入l读取临时区数据恢复  "
    puts "   输入b可备份工作区        "
    puts "   输入q离开工作区          "
    puts "----------------------------"
  end
end
