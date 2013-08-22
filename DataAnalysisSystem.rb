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

#'one' => 1, 
conn = SqlServer.new('(local)\SQLEXPRESS','sa','123@abc')
md = MigrateData.new('CloudEdu',conn)

content_proc = Proc.new do |str|
  str.gsub(/'/, "''")
end
time_proc = Proc.new do |time|
  ":sec, :min, :hour, :mday, :day, :mon, :month, :year, :wday, :yday, :tv_sec, :tv_usec, :usec, :tv_nsec, :nsec,  "
  "CAST('#{time}' AS DateTime)"
  ""
end
time_to_str_proc = Proc.new do |time|
  time
end

md.get_table_info(['edu_ele_teacher'])
config = { ID: { fn: '', p: Proc.new{|i| i}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           GH: { fn: 'ID', p: Proc.new{|s| s}},
           XM: { fn: 'Name', p: Proc.new{|s| s}},
           YWXM: { fn: '', p: Proc.new{|i| ''}},
           XMPY: { fn: '', p: Proc.new{|i| ''}},
           CYM: { fn: '', p: Proc.new{|i| ''}},
           SFZJLXM: { fn: '', p: Proc.new{|i| '1'}},
           SFZJH: { fn: 'IDcard', p: Proc.new{|s| s}},
           CSRQ: { fn: 'Birthday', p: time_to_str_proc},
           XBM: { fn: 'XbID', p: Proc.new{|s| s == '0' ? '1' : '0'}},
           MZM: { fn: '', p: Proc.new{|i| ''}},
           XXM: { fn: '', p: Proc.new{|i| ''}},
           JKZKM: { fn: '', p: Proc.new{|i| ''}},
           HYZTM: { fn: '', p: Proc.new{|i| ''}},
           ZZMMM: { fn: '', p: Proc.new{|i| ''}},
           GATQWM: { fn: '', p: Proc.new{|i| ''}},
           JG: { fn: '', p: Proc.new{|i| ''}},
           GJDQM: { fn: '', p: Proc.new{|i| ''}},
           CSDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           XYZJM: { fn: '', p: Proc.new{|i| ''}},
           JZGHKSZDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           HKLBM: { fn: '', p: Proc.new{|i| ''}},
           DQZZ: { fn: 'NowAdd', p: Proc.new{|s| s}},
           DQZZYZBM: { fn: '', p: Proc.new{|i| ''}},
           CJGZNY: { fn: '', p: Proc.new{|i| ''}},
           CJNY: { fn: '', p: Proc.new{|i| ''}},
           LXNY: { fn: 'JoinTime', p: time_to_str_proc},
           BZLBM: { fn: '', p: Proc.new{|i| ''}},
           JZGLBM: { fn: '', p: Proc.new{|i| ''}},
           GWLBM: { fn: '', p: Proc.new{|i| ''}},
           SFJZJS: { fn: '', p: Proc.new{|i| ''}},
           SFSSXJS: { fn: '', p: Proc.new{|i| ''}},
           ZP: { fn: 'Imageurl', p: Proc.new{|s| s}},
           DQZTM: { fn: '', p: Proc.new{|i| ''}},
           YDDH: { fn: 'Mobile', p: Proc.new{|s| s}},
           GDDH: { fn: 'OfficeTel', p: Proc.new{|s| s}},
           TXDZYZBM: { fn: '', p: Proc.new{|i| ''}},
           TXDZ: { fn: '', p: Proc.new{|i| ''}},
           DZXX: { fn: 'Email', p: Proc.new{|s| s}},
           WLDZ: { fn: '', p: Proc.new{|i| ''}},
           JSTXH: { fn: '', p: Proc.new{|i| ''}},
           }
md.convert_data('EDU_ZZJG_01_01_JZGJBSJ',config)

conn.close
