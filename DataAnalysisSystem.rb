#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

#~ AreaManager.open("HANRU") do |work_area|
  #~ #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  #~ #work_area.export_testdata(config)
  #~ work_area.export_all
#~ end

DbEntity.set_connector(DbConnector.new('(local)\sqlexpress'))
DbEntity.open('HanRuEdu') do |db|
  p db.get_table_exp('EDU_GB_DP')
end



