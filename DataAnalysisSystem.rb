#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

AreaManager.open("HANRU") do |work_area|
  work_area.export_all
  
  #~ DBEntity.open('HanRuEdu',DBConnector.new('(local)')) do |db|
    #~ work_area.show_db_diff(db)
    #~ #work_area.update_db(db)
  #~ end
end

