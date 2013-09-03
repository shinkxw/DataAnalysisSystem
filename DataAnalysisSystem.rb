#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

AreaManager.open("HANRU") do |work_area|
  #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  #work_area.export_testdata()
  #work_area.export_all
  
  db_conn = DBConnector.new('D:\待迁移数据库\百花.mdb', db_type: 'ac')
  DBEntity.open('HanRuEdu',db_conn) do |db|
    #work_area.show_db_diff(db)
    #work_area.update_db(db)
    
    dm = DBDataMigrate.new(db)
    dm.get_table_info('PE_User')
    config = { LOGINNAME: { fn: '', p: Proc.new{|i| ''}},
               SCHOOLID: { fn: '', p: Proc.new{|i| ''}},
               APPID: { fn: '', p: Proc.new{|i| ''}},
               PWD: { fn: '', p: Proc.new{|i| ''}},
               STATUS: { fn: '', p: Proc.new{|i| ''}},
               USERTYPE: { fn: '', p: Proc.new{|i| ''}},
               USERID: { fn: '', p: Proc.new{|i| ''}},
               ROLEIDLst: { fn: '', p: Proc.new{|i| ''}},
               XM: { fn: '', p: Proc.new{|i| ''}},
               XB: { fn: '', p: Proc.new{|i| ''}},
               QQ: { fn: '', p: Proc.new{|i| ''}},
               DZYJ: { fn: '', p: Proc.new{|i| ''}},
               LXDH: { fn: '', p: Proc.new{|i| ''}},
               ZJDLSJ: { fn: '', p: Proc.new{|i| ''}},
               DLCGCS: { fn: '', p: Proc.new{|i| ''}},
               YHCJSJ: { fn: '', p: Proc.new{|i| ''}},
    dm.insert_data('EDU_ELE_01_USER',config)
  end
end

