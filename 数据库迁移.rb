#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器
load "数据迁移配置\\嘉兴一中数学基地.rb"

def find_c(f, arr, text, depth = 0, tab = '  ')
  text << "#{tab * depth}#{f['name'].fill_cn(24)}    #{f['id']}\n"
  arr.select{|d| d['fid'] == f['id']}.each{|c| find_c(c, arr, text, depth + 1)}
end

connector = DBConnector.new('localhost', db_type: 'mysql', username: 'root')#, db_type: 'ac'
DBEntity.open('jxyz', connector) do |db|
  #~ out_hash_arr = DataMigrate.convert_data(db.get_table_data('lfj_members'), $yh_config)
  #~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ELE_01_USER')
  
  adata_hash_arr = db.get_table_data('lfj_artic')
  rdata_hash_arr = db.get_table_data('lfj_reply')
  ddata_hash_arr = db.get_table_data('lfj_download')
  rdata_hash = rdata_hash_arr.select{|rd| rd['r_rid'] == 0}.group_by{|rd| rd['r_aid']}
  ddata_hash = ddata_hash_arr.group_by{|rd| rd['d_aid']}
  data_hash_arr = adata_hash_arr.map do |adata|
    rdata_arr = rdata_hash[adata['id']]
    rdata = rdata_arr ? rdata_arr.min{|rd| rd['r_id']} : nil
    ddata_arr = ddata_hash[adata['id']]
    Qypz.get_data_hash(adata, rdata, ddata_arr)
  end
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, $wz_config)
  out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ', 10)
  
  #~ text = ''
  #~ lm_hash_arr = db.get_table_data('lfj_sort')#id, fid, name
  #~ lm_hash_arr.select{|h| h['fid'] == 0}.each do |flm|{ find_c(flm, lm_hash_arr, text)}
  #~ FileWriter.new("#{$root}/QY/helper.txt").write_str(text)
end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365