#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

$t_app_name,$t_dir_name,$t_range,$fs_root = 'OAXT','xwbs',38..38,'E:\����\DB\SQL'
AreaManager.set_conn(DBConnector.new('192.168.0.8'))#192.168.0.8
#AreaManager.load_area_and_db('HANRU','HanruEdu') do |work_area,db|#HanruEdu
AreaManager.load_area_and_db('ZDXT','DBTerminal') do |work_area,db|#HanruEdu
  #work_area.export_tableinfo
  #work_area.export_all#�ϴ�
  #work_area.export_all(false)
  #DBUpdater.new(work_area.area,db).update_db
  #work_area.export_template
end
