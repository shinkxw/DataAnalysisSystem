#!/usr/bin/env ruby -w
# encoding: GBK
#数据库更新器
class DBUpdater
  #初始化
  def initialize(area,db);@area,@db = area,db end
  #显示数据域与数据库间的差异(说明版)
  def show_db_diff(is_exp = true)
    diff = compare_db
    if diff.has_diff?
      diff.send('show_diff' << (is_exp ? '' : '2'))
    else
      puts('没有差异')
    end    
  end
  #使用本数据域更新数据库表结构
  def update_db
    puts "\n开始更新数据库"
    diff = compare_db
    if diff.has_diff?
      puts "\n以下是两者的差异:\n"#显示差异
      diff.show_diff
      puts "\n正在更新数据库差异..."#使用脚本将差异处更新
      diff.db_transform(@db)
      puts "\n再次比较两者差异..."
      diff = compare_db
      if diff.has_diff?
        puts "\n数据库差异更新并未成功！"#报错
        puts '未修正差异为：'#显示未修正差异
        diff.show_diff
      else
        #！！考虑重置所有标准表及数据
        puts "\n正在删除所有视图..."
        @db.delete_all_view#删除所有视图
        puts "\n正在重置视图..."
        view_str = ViewBuilder.new(true).build(@area).get_data_str
        @db.execute(view_str)
        puts "\n数据库更新成功"
      end
    else
      puts '数据库表结构与工作区一致，不需更新'
    end
  end
  #与指定数据库中的表结构进行比较
  def compare_db
    puts '比较中...'
    MDDiffer.new.compare_area(@db.get_db_area,@area)
  end
end