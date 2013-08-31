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

DbEntity.set_connector(DbConnector.new('(local)\sqlexpress'))
DbEntity.open('HanRuEdu') do |db|
  hash = db.get_table_fields_info('EDU_ZZXS_01_01_XSXX')
  p hash['COLUMN_NAME']
  p hash['IS_NULLABLE']
  p hash['DATA_TYPE']
  p hash['CHARACTER_MAXIMUM_LENGTH']
end



