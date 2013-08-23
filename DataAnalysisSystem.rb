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
md = MigrateData.new('CloudEdu',conn)

md.get_table_info(['edu_ssgl_manage'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           YHID: { fn: 'UserID', p: Proc.new{|s| s}},
           SSLID: { fn: 'ApartmentID', p: Proc.new{|s| s}},
           SSID: { fn: 'DormitoryID', p: Proc.new{|s| s}},
           CWID: { fn: 'BedID', p: Proc.new{|s| s}},
           YHXM: { fn: 'UserName', p: Proc.new{|s| s}},
           RZRLX: { fn: '', p: Proc.new{|i| '0'}},
           RZSJ: { fn: 'InDate', p: 'datetime'},
           SHZT: { fn: '', p: Proc.new{|i| '0'}},
           SHSJ: { fn: '', p: Proc.new{|i| ''}},
           SHR: { fn: '', p: Proc.new{|i| '0'}},
           }
md.insert_data('EDU_ZZFC_08_A02_YHZSJL', config)

conn.close
