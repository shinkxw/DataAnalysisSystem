#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

DBEntityForQuery.open('HanruEdu', DBConnector.new('192.168.0.8')) do |db|
  p db.EDU_ZZJX_01_A01_KCPJ.view
  p db.select{|table| table.name.length > 36}
end