#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������
load "����Ǩ������\\���˼�ʦ��������Ǩ��.rb"

#~ connector = DBConnector.new('localhost', db_type: 'mysql', username: 'root')
#~ DBEntity.open('school2', connector) do |db|
#~ end

path = 'E:\������Ŀ\���˼�ʦ\��ʦ����.xls'
sheet_data = ExcelLoader.get_sheet_data(path, 'teacher')
sheet_data.shift
sj_arr = sheet_data.map{|data| J��������.new(*data)}
#���ݼ���ʽ��
#[:�Ա�, :����, :������ò].each{|xm| p sj_arr.map(&xm).uniq}
#����ת��
out_hash_arr = DataMigrate.convert_data(sj_arr, $jb_config)
DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_01_JZGJBSJ')

out_hash_arr = DataMigrate.convert_data(sj_arr, $kz_config)
DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_A01_JZGKZ')

out_hash_arr = DataMigrate.convert_data(sj_arr, $nlzs_config)
DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_A02_JZGNLZS')

out_hash_arr = DataMigrate.convert_data(sj_arr, $zynl_config)
out_hash_arr = out_hash_arr.delete_if {|hash| hash[:ZSMC] == '' && hash[:ZSBZ] == ''}
DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_07_01_JZGZYNL')

#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365