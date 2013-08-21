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
hash_1 = { field_name: nil, proc: Proc.new{|i| i + 1}}
hash_2 = { field_name: Name, proc: Proc.new{|str| str}}
hash_3 = { field_name: ID, proc: Proc.new{|str| str}}
config = { ID: hash_1,
           XM: hash_1, 
           XH: hash_2, }
md.convert_data('edu_ele_student',config)

conn.close
