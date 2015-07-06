#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器
load "数据迁移配置\\嘉兴技师人事数据迁移.rb"

#~ connector = DBConnector.new('localhost', db_type: 'mysql', username: 'root')
#~ DBEntity.open('school2', connector) do |db|
#~ end

path = 'E:\经手项目\嘉兴技师\教师数据.xls'
sheet_data = ExcelLoader.get_sheet_data(path, 'teacher')
sheet_data.shift
sj_arr = sheet_data.map{|data| J人事数据.new(*data)}
#数据及格式化
#[:性别, :民族, :政治面貌].each{|xm| p sj_arr.map(&xm).uniq}
#数据转换
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