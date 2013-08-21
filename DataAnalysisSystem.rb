#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

#~ t = Time.now
#~ @work_area = AreaManager.load_work_area("HANRU")
#~ @work_area.export_all
#~ @work_area.save_and_close_work_area
#~ p Time.now - t

#Dir.pwd << "/db.mdb"
#'one' => 1, 
conn = SqlServer.new('192.168.0.8')
md = MigrateData.new('CloudEdu',conn)
md.get_table_info('edu_ele_student')
#hash_1 = { field_name: nil, proc: Proc.new{|i| i + 1}}
config = { ID: { field_name: nil, proc: Proc.new{|i| i + 1}},
           XM: { field_name: 'Name', proc: Proc.new{|str| str}}, 
           XH: { field_name: 'ID', proc: Proc.new{|str| str}}, }
md.convert_data('EDU_ZZXS_01_01_XSXX',config)

conn.close
