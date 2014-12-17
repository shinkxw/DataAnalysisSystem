#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器
load "数据迁移配置\\湖州附小门户迁移.rb"

connector = DBConnector.new('b')#, db_type: 'ac'
DBEntity.open('HSFX', connector) do |db|
  
  data_hash_arr = db.get_table_data('TD_Article')
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, $wz_config)
  out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
  
end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365