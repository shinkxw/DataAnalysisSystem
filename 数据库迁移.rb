#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������
load "����Ǩ������\\�����������Ǩ��.rb"

connector = DBConnector.new('E:\������Ŀ\Ǩ��\�����������\Swjd_201119.mdb', db_type: 'ac')#, db_type: 'ac'
DBEntity.open('HanruEdu', connector) do |db|
  data_hash_arr = db.get_table_data('PE_Article')
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, $config1)
  
  #~ data_hash_arr = db.get_table_data('PE_Soft')
  #~ out_hash_arr = DataMigrate.convert_data(data_hash_arr, $config2)
  
  out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365