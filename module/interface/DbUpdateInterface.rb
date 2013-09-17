#!/usr/bin/env ruby -w
# encoding: GBK
#数据库结构更新界面
class DbUpdateInterface < BaseInterface
  #初始化
  def initialize
    super
    @host,@dbname,@area_name = '','',''
  end
  #开始处理
  def start
    super
    @statu = 1
    @username = 'sa'
    @password = '123456'
  end
  #输入前操作
  def before_input
    super
    @area_hash = {}
    @db_hash = {}
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
    case @statu
    when 1#选择工作区
      area_name = @area_hash[@input]
      if area_name
        @area_name = area_name
        @statu = 2
      elsif @input == 'q'
        @statu = "quit"
      else
        puts "输入号码有误！"
      end
    when 2#输入数据库地址
      if @input == 'q'
        @statu = 1
      else
        @host = @input
        @statu = 3
      end
    when 3#输入用户名，密码
      if @input == 'q'
        @statu = 2
      elsif @input == 'u'
        puts '请输入用户名：'
        get_input
        @username = @input
      elsif @input == 'p'
        puts '请输入密码：'
        get_input
        @password = @input
      elsif @input == 'c'
        @statu = 4
      else
        puts "输入有误！"
      end
    when 4#输入数据库地址
      dbname = @db_hash[@input]
      if dbname
        @dbname = dbname
        @statu = 5
      elsif @input == 'q'
        @statu = 3
      else
        puts "输入号码有误！"
      end
    when 5#输入命令
      if @input == 'q'
        @statu = 4
      elsif @input == 'e'
        AreaManager.open(@area_name) do |work_area|
          DBEntity.open(@dbname) do |db|
            work_area.show_db_diff(db)
          end
        end
      elsif @input == 'n'
        AreaManager.open(@area_name) do |work_area|
          DBEntity.open(@dbname) do |db|
            work_area.show_db_diff2(db)
          end
        end
      elsif @input == 'u'
        AreaManager.open(@area_name) do |work_area|
          DBEntity.open(@dbname) do |db|
            work_area.update_db(db)
          end
        end
      else
        puts "输入有误！"
      end
    end
  end
  #显示菜单
  def show_menu
    puts "----------------------------------------"
    case @statu
    when 1 then show_menu1
    when 2 then show_menu2
    when 3 then show_menu3
    when 4 then show_menu4
    when 5 then show_menu5
    end
    puts "----------------------------------------"
  end
  def show_menu1
    show_all_area
    puts "   输入作为更新源的工作区的对应号码     "
    puts "   输入q退出                            "
  end
  def show_menu2
    puts "   输入待更新数据源的地址(本地为l)      "
    puts "   输入q返回上级目录                    "
  end
  def show_menu3
    puts "   输入u设置用户名(默认sa)              "
    puts "   输入p设置密码(默认123456)            "
    puts "   输入c连接数据源                      "
    puts "   输入q返回上级目录                    "
  end
  def show_menu4
    show_db
    puts "   输入待更新数据库的对应号码           "
    puts "   输入q返回上级目录                    "
  end
  def show_menu5
    puts "   输入e查看数据库与工作区的差异(说明版)"
    puts "   输入n查看数据库与工作区的差异(名称版)"
    puts "   输入u将更新数据库中的表结构          "
    puts "   输入q返回上级目录                    "
  end
  #显示已有的工作环境
  def show_all_area
    num = 1
    puts "   现有工作区：           "
    AreaManager.get_all_area_name.each do |name|
      puts "   #{name.ljust(18)}#{num.to_s}"
      @area_hash[num.to_s] = name
      num += 1
    end
  end
  #显示数据源中的数据库
  def show_db
    DBEntity.set_connector(DBConnector.new(@host,username: @username,password: @password))
    puts "   正在查询数据源中的数据库...     "
    DBEntity.open() do |db|
      num = 1
      db.get_db_name.each do |db_name|
        puts "   #{db_name.fill_cn(22)}#{num.to_s}"
        @db_hash[num.to_s] = db_name
        num += 1
      end
    end
  end
end
