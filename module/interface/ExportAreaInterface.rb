#!/usr/bin/env ruby -w
# encoding: GBK
#输出选择界面
class ExportAreaInterface < BaseInterface
  #初始化
  def initialize(work_area)
    @work_area = work_area
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
    super
  end
  #菜单判断
  def menu_determine
    case @input
    when "s"#建表脚本
      puts "是否输出为单个文件?(Y/N)"
      build_folder = get_bool ? false : true
      puts "添加删除表语句?(Y/N)"
      need_delete = get_bool ? true : false
      puts "添加插入数据语句?(Y/N)"
      need_data = get_bool ? true : false
      export('sql',[build_folder, need_delete, need_data])
    when "v"#建视图脚本
      puts "是否输出为单个文件?(Y/N)"
      build_folder = get_bool ? false : true
      puts "添加删除表语句?(Y/N)"
      need_delete = get_bool ? true : false
      export('view',[build_folder, need_delete])
    when "m"#model验证代码
      export('model')
    when "t"#模板代码
      export('template')
    when "i"#表相关统计信息
      export('tableinfo')
    when "q"#返回上级目录
      @statu = "quit"
    else
      puts "该输入无效。"
    end
  end
  #显示菜单
  def show_menu
    puts "----------------------------"
    puts "   输入s输出建表脚本        "
    puts "   输入v输出建视图脚本      "
    puts "   输入m输出model验证代码   "
    puts "   输入t输出模板代码        "
    puts "   输入i输出表相关统计信息  "
    puts "   输入q返回上级目录        "
    puts "----------------------------"
  end
  #进行输出
  def export(type,parameters = [])
    t = Time.now
    path = @work_area.send("export_#{type}", *parameters)
		puts "消耗时间：#{Time.now - t}，已输出至#{path}"
  end
end
