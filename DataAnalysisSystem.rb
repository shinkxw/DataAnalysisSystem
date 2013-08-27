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

md.get_table_info('edu_ele_student')
config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           XH: { fn: 'ID', p: Proc.new{|s| s}},
           XM: { fn: 'Name', p: Proc.new{|s| s}},
           YWXM: { fn: '', p: Proc.new{|i| ''}},
           XMPY: { fn: '', p: Proc.new{|i| ''}},
           CYM: { fn: '', p: Proc.new{|i| ''}},
           SFZJLXM: { fn: '', p: Proc.new{|i| '1'}},
           SFZJH: { fn: 'IDcard', p: Proc.new{|s| s}},
           XBM: { fn: 'XbID', p: Proc.new{|s| s == 0 ? '1' : '2'}},
           XXM: { fn: '', p: Proc.new{|i| ''}},
           CSRQ: { fn: 'Birthday', p: 'time_to_8'},
           CSDM: { fn: '', p: Proc.new{|i| ''}},
           JG: { fn: '', p: Proc.new{|i| ''}},
           MZM: { fn: '', p: Proc.new{|i| '01'}},
           HYZKM: { fn: '', p: Proc.new{|i| ''}},
           XYZJM: { fn: '', p: Proc.new{|i| ''}},
           GATQWM: { fn: '', p: Proc.new{|i| ''}},
           JKZKM: { fn: '', p: Proc.new{|i| ''}},
           ZZMMM: { fn: '', p: Proc.new{|i| ''}},
           HKSZDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           HKLBM: { fn: '', p: Proc.new{|i| ''}},
           SFSLDRK: { fn: '', p: Proc.new{|i| ''}},
           GJDQM: { fn: '', p: Proc.new{|i| ''}},
           TC: { fn: '', p: Proc.new{|i| ''}},
           XSLXDH: { fn: 'Mobile', p: Proc.new{|s| s}},
           WLDZ: { fn: '', p: Proc.new{|i| ''}},
           JSTXH: { fn: '', p: Proc.new{|i| ''}},
           DZXX: { fn: '', p: Proc.new{|i| ''}},
           ZP: { fn: 'Imageurl', p: Proc.new{|s| s}},
           }
md.insert_data('EDU_ZZXS_01_01_XSXX',config)

conn.close
