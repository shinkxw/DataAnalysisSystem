#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

$t_app_name,$t_dir_name = 'TYRZ','xtgl'
AreaManager.set_conn(DBConnector.new('b'))#192.168.0.8,1444
AreaManager.load_area_and_db('HANRU','HanRuEdu') do |work_area,db|
  #work_area.export_all#(true)
  #DBUpdater.new(work_area.area,db).show_db_diff
  #DBUpdater.new(work_area.area,db).update_db
end
