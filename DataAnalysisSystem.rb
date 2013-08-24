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

#~ conn = SqlServer.new('(local)')
#~ md = MigrateData.new('CloudEdu',conn)

#~ md.get_table_info(['edu_ele_student'])
#~ config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ ZYXXID: { fn: '', p: Proc.new{|i| ''}},
           #~ XNID: { fn: '', p: Proc.new{|i| ''}},
           #~ ZZXQID: { fn: '', p: Proc.new{|i| ''}},
           #~ JTDZQH: { fn: '', p: Proc.new{|i| ''}},
           #~ JTXXDZ: { fn: 'HomeAdd', p: Proc.new{|s| s}},
           #~ HJXXDZ: { fn: '', p: Proc.new{|i| ''}},
           #~ HJXZ: { fn: '', p: Proc.new{|i| ''}},
           #~ BYJX: { fn: '', p: Proc.new{|i| ''}},
           #~ CSBZR: { fn: '', p: Proc.new{|i| ''}},
           #~ DRZW: { fn: '', p: Proc.new{|i| ''}},
           #~ YYDR: { fn: '', p: Proc.new{|i| ''}},
           #~ BZ: { fn: '', p: Proc.new{|i| ''}},
           #~ BYLX: { fn: '', p: Proc.new{|i| ''}},
           #~ XSLX: { fn: '', p: Proc.new{|i| ''}},
           #~ SFZS: { fn: '', p: Proc.new{|i| ''}},
           #~ XSBMSJ: { fn: '', p: Proc.new{|i| ''}},
           #~ }
#~ md.insert_data('EDU_ZZXS_01_A01_XSXX',config)

#~ conn.close

