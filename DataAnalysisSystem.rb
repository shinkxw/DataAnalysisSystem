#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

AreaManager.open("HANRU") do |work_area|
  #~ build_hash = {'EDU_WZXT_MHXT_WZWZ' => {'num' => 500,
                                         #~ 'SCHOOLID' => Proc.new{'123'}}}
  #~ work_area.export_testdata(build_hash)
  #work_area.export_all
  
  db_conn = DBConnector.new('le')#192.168.0.8,1444
  DBEntity.open('HanRuEdu',db_conn) do |db|
    #work_area.show_db_diff(db)
    work_area.update_db(db)
  end
  
end

