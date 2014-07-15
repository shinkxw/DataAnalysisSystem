#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

DBEntityForQuery.open('HanruEdu', DBConnector.new('192.168.0.8')) do |db|
  #p db.select{|table| table.name.length > 36}
  p db.EDU_ZZJG_01_01_JZGJBSJ.find{|d| d.schoolid == 1 && d.gh == '2'}
end
