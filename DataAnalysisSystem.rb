#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

$t_app_name,$t_dir_name,$t_range,$fs_root = 'XGXT','stgl',12..12,'E:\工作区\DB\SQL'#终端系统\终端管理\DB\SQL
AreaManager.set_conn(DBConnector.new('192.168.0.8'))#192.168.0.8
AreaManager.load_area_and_db('HANRU','HanruEdu') do |work_area,db|#HanruEdu
#AreaManager.load_area_and_db('ZDXT','DBTerminal') do |work_area,db|
  #work_area.export_tableinfo#export_wordinfo
  #work_area.export_all#上传
  #work_area.export_all(false)
  #DBUpdater.new(work_area.area,db).update_db
  #work_area.export_template
  #work_area.export_bztemplate
end
