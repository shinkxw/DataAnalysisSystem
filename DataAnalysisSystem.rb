#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

AreaManager.open("HANRU") do |work_area|
  #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  #work_area.export_testdata(config)
  work_area.export_all
end

#~ DBEntity.set_connector(DBConnector.new('(local)\sqlexpress'))
#~ DBEntity.open('HanRuEdu') do |db|
  #~ #p db.get_table_data('EDU_ELE_03_APPRZ')
  #~ p db.execute("DROP TABLE EDU_ELE_01_APP\nDROP TABLE EDU_ELE_01_CONFIG")
#~ end


