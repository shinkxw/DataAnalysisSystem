#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

$t_app_name,$t_dir_name,$t_range = 'XGXT','zxsjnjd',0..100
#AreaManager.set_conn(DBConnector.new('D:\xz.mdb',db_type: 'ac'))
AreaManager.set_conn(DBConnector.new('192.168.0.8,1444'))#192.168.0.8,1444
AreaManager.load_area_and_db('HANRU','HanRuEdu') do |work_area,db|#HANRU
  #work_area.export_tableinfo
  #work_area.export_all#�ϴ�
  #work_area.export_all(false)
  #DBUpdater.new(work_area.area,db).update_db
end
