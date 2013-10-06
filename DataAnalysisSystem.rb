#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

$t_app_name,$t_dir_name = 'TYRZ','xtgl'
AreaManager.set_conn(DBConnector.new('be'))#192.168.0.8,1444
AreaManager.load_area_and_db('HANRU','HanRuEdu') do |work_area,db|
  db_updater = DBUpdater.new(work_area.area,db)
  #work_area.export_tableinfo
  #work_area.export_all#(true)
  #db_updater.show_db_diff
  #db_updater.update_db
end
