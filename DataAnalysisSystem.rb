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
config = { LOGINNAME: { fn: 'UserName', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           APPID: { fn: '', p: Proc.new{|i| ''}},
           PWD: { fn: 'PassWord', p: Proc.new{|s| s}},
           STATUS: { fn: '', p: Proc.new{|i| ''}},
           USERTYPE: { fn: '', p: Proc.new{|i| ''}},
           USERID: { fn: '', p: Proc.new{|i| ''}},
           ROLEIDLst: { fn: '', p: Proc.new{|i| ''}},
           XM: { fn: 'UserName', p: Proc.new{|s| s}},
           XB: { fn: '', p: Proc.new{|i| ''}},
           QQ: { fn: '', p: Proc.new{|i| ''}},
           DZYJ: { fn: 'Email', p: Proc.new{|s| s}},
           LXDH: { fn: '', p: Proc.new{|i| ''}},
           ZJDLSJ: { fn: 'Date_Login', p: 'datetime'},
           DLCGCS: { fn: 'Count_Login', p: Proc.new{|s| s}},
           YHCJSJ: { fn: 'RegDate', p: 'datetime'},
           }
md.insert_data('EDU_ELE_01_USER',config)

conn.close

