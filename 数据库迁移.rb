#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器
load "数据迁移配置\\秀州门户迁移.rb"

connector = DBConnector.new('localhost', db_type: 'mysql', username: 'root')
DBEntity.open('school2', connector) do |db|
  
  data_hash_arr = db.get_table_data('sho_news_con')
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, $wz_config)
  out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ', 10)#
  
end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365