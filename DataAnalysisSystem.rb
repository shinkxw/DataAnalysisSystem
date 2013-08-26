#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

#~ t = Time.now
#~ work_area = AreaManager.load_work_area("HANRU")
#~ work_area.export_all
#~ work_area.save_and_close_work_area
#~ p Time.now - t

conn = SqlServer.new('(local)')
md = MigrateData.new('jinyun',conn)

md.get_table_info(['zydn_User_Base'])
config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
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
           }
md.insert_data('EDU_ELE_01_USER',config)

conn.close

