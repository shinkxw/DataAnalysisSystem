#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

AreaManager.set_conn(DBConnector.new('b'))#192.168.0.8,1444
AreaManager.load_area_and_db('HANRU','HanRuEdu') do |work_area,db|
  work_area.export_tableinfo
  #work_area.export_all(true)
  #work_area.show_db_diff(db)
  #work_area.update_db(db)

end
