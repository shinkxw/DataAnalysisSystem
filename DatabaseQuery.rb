#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

connector = DBConnector.new('192.168.0.8')#, db_type: 'ac'
DBEntityForQuery.open('HanruEdu', connector) do |db|
  p db.EDU_JY_JSZYQK
end
