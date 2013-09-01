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

db_area = DBAnalyzer.new('(local)\sqlexpress','','',[]).analyze('HanRuEdu')
my_area = AreaManager.load_area('HANRU')

DBEntity.set_connector(DBConnector.new('(local)\sqlexpress'))
DBEntity.open('HanRuEdu') do |db|
  
  diff = MDDiffer.new.compare_area(db_area,my_area)
  diff.show_diff
  #diff.db_transform(db)
  #p db.execute("DROP TABLE EDU_ELE_01_APP\nDROP TABLE EDU_ELE_01_CONFIG")
end


