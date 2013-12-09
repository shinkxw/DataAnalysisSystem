#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

$t_app_name,$t_dir_name,$t_range = 'JWXT','jggl',18..18
#AreaManager.set_conn(DBConnector.new('D:\待迁移数据库\交通数据库.mdb',db_type: 'ac'))
AreaManager.set_conn(DBConnector.new('192.168.0.8,1444'))#192.168.0.8,1444
AreaManager.load_area_and_db('HANRU','HanruEdu') do |work_area,db|#HanruEdu
  #work_area.export_tableinfo
  #work_area.export_all#上传
  #work_area.export_all(false)
  #DBUpdater.new(work_area.area,db).update_db
  #work_area.export_template
end
