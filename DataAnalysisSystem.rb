#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������
#~ t = Time.now
#~ @work_area = AreaManager.load_work_area("HANRU")
#~ @work_area.export_all
#~ @work_area.save_and_close_work_area
#~ p Time.now - t

db = SqlServer.new('192.168.0.8,1444',)
db.open('HanruEdu')
sql = "select * from EDU_JY_ZCZK"
results = db.query(sql)

puts db.fields.join(" ")

puts results.size

results.each{|result| puts result.inspect}

db.close
