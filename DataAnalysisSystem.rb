#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

AreaManager.open("HANRU") do |work_area|
  #work_area.export_all
  
  DBEntity.set_connector(DBConnector.new('(local)'))
  DBEntity.open('HanRuEdu') do |db|
    work_area.show_db_diff(db)
    work_area.update_db(db)
  end
end




