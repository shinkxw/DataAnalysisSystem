#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

#~ AreaManager.open("HANRU") do |work_area|
  #~ #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  #~ #work_area.export_testdata(config)
  #~ work_area.export_all
#~ end

#~ DBEntity.set_connector(DBConnector.new('(local)\sqlexpress'))
#~ DBEntity.open('HanRuEdu') do |db|
  #~ p db.get_table_data('EDU_ELE_03_APPLL')
  #~ p db.get_table_data('EDU_OAXT_02_01_SWCL')
#~ end

t = Time.now
AreaManager.create_area_from_db('db_out','(local)\sqlexpress','HanRuEdu')
p Time.now - t