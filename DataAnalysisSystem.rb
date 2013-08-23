#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

t = Time.now
@work_area = AreaManager.load_work_area("HANRU")
@work_area.export_all
@work_area.save_and_close_work_area
p Time.now - t

#~ conn = SqlServer.new('(local)')
#~ md = MigrateData.new('CloudEdu',conn)

#~ content_proc = Proc.new do |str|
  #~ str.gsub(/'/, "''")
#~ end
#~ time_proc = Proc.new do |time|
  #~ ":sec, :min, :hour, :mday, :day, :mon, :month, :year, :wday, :yday, :tv_sec, :tv_usec, :usec, :tv_nsec, :nsec,  "
  #~ "CAST('#{time}' AS DateTime)"
  #~ ""
#~ end
#~ time_to_6_proc = Proc.new{|time| time.to_s.split(" ")[0].delete("-")[0,5]}
#~ time_to_8_proc = Proc.new{|time| time.to_s.split(" ")[0].delete("-")}

#~ md.get_table_info(['edu_ele_student'])
#~ config = { ID: { fn: '', p: Proc.new{|i| i}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ JZWH: { fn: '', p: Proc.new{|i| ''}},
           #~ JZWMC: { fn: '', p: Proc.new{|i| ''}},
           #~ SYZKM: { fn: '', p: Proc.new{|i| ''}},
           #~ FWCQ: { fn: '', p: Proc.new{|i| ''}},
           #~ XQH: { fn: '', p: Proc.new{|i| ''}},
           #~ }
#~ md.convert_data('test',config)

#~ conn.close
