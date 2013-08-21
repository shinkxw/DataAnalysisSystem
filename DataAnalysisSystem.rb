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
conn = SqlServer.new('192.168.0.8')
md = MigrateData.new('CloudEdu',conn)
md.get_table_info('edu_ele_student')
md.convert_data('edu_ele_student',)

conn.close
