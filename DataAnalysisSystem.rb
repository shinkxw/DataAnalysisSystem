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

#网站栏目
pid_proc = Proc.new{|s| s.include?(',') ? s.split(',')[-2] : '0'}
md.get_table_info('zydn_Menu')
config = { ID: { fn: 'MID', p: Proc.new{|s| s}},
           NAME: { fn: 'MName', p: Proc.new{|s| s}},
           PID: { fn: 'UpListID', p: pid_proc},
           }
md.out_info('LMSM',config)

conn.close
