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

md.get_table_info('edu_ele_student', {'edu_ele_class' => {'ClassID' => 'ID'}})
config = { XSXXID: { fn: 'student_ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           ZYXXID: { fn: 'class_MajorID', p: Proc.new{|s| s}},
           ZZBJID: { fn: 'student_ClassID', p: Proc.new{|s| s}},
           ZZNJID: { fn: 'class_GradeID', p: Proc.new{|s| s}},
           RXNY: { fn: '', p: Proc.new{|i| ''}},
           XSLBM: { fn: '', p: Proc.new{|i| ''}},
           XZ: { fn: '', p: Proc.new{|i| ''}},
           ZYM: { fn: '', p: Proc.new{|i| ''}},
           XSDQZTM: { fn: '', p: Proc.new{|i| ''}},
           }
md.insert_data('EDU_ZZXS_07_01_XJSJ',config)

conn.close
