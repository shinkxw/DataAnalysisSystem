#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

AreaManager.open("HANRU") do |work_area|
  work_area.export_all
  
  #~ DBEntity.open('HanRuEdu',DBConnector.new('(local)')) do |db|
    #~ work_area.show_db_diff(db)
    #~ #work_area.update_db(db)
  #~ end
end

