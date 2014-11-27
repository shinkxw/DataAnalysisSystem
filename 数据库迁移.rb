#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器
load "数据迁移配置\\嘉兴三中门户迁移.rb"

connector = DBConnector.new('E:\经手项目\迁移\嘉兴三中迁移\data.mdb', db_type: 'ac')#, db_type: 'ac'
DBEntity.open('HanruEdu', connector) do |db|
  lm_hash_arr = db.get_table_data('PE_Class')#id, fid, name
  text = DataMigrate.show_data_tree(lm_hash_arr, 183, 'ClassID', 'ParentID', 'ClassName')
  FileWriter.new("#{$root}/QY/helper.txt").write_str(text)
  
  config1 = { ID: proc{|d| d['ArticleID']},#
             SCHOOLID: proc{|d| '27'},#
             WEBID: proc{|d| '12365'},#
             TYPENAME: proc{|d| d['Keyword'][0, 20]},#
             LMID: proc{|d| Qypz.get_lmid(d['ClassID'])},
             TITLE: proc{|d| d['Title']},#
             PUBLISHERNAME: proc{|d| 'admin'},#
             AUTHOR: proc{|d| d['Author']},#
             AUTHORDEPART: proc{|d| d['CopyFrom']},#
             PUBLISHDATE: proc{|d, c| c.datetime(d['CreateTime'])},#
             CONTENT: proc{|d| Qypz.ew_change(d['Content'])},#
             URL: proc{|d| ''},#
             IMAGEURL: proc{|d| Qypz.img(d['DefaultPicUrl'])},#
             ATTACHMENTNAME: proc{|d| ''},#
             ATTACHMENT: proc{|d| ''},#UploadFiles
             CHICKNUB: proc{|d| d['Hits'].to_i},#
             AUDITSTATU: proc{|d| '1'},#
             AUDITOR: proc{|d| 'admin'},#
             AUDITORNAME: proc{|d| 'admin'},#
             AUDITTIME: proc{|d, c| c.datetime(d['CreateTime'])},#
             REMARK: proc{|d| d['TitleIntact']},#
             SUMMARY: proc{|d| d['Subheading']},#
             DISPLAYTYPE: proc{|d| '0'},#
             OPENFLAG: proc{|d| '1'},#
             LLQX: proc{|d| '0'},#
             INDEXSHOW: proc{|d| '0'},#
             SFZD: proc{|d| '1'},#
             ZDYXJ: proc{|d| '0'},#
           }
  data_hash_arr = db.get_table_data('PE_Article')
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, config1)
  out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
  
  config2 = { ID: proc{|d| 4000 + d['ID']},#
             SCHOOLID: proc{|d| '27'},#
             WEBID: proc{|d| '12365'},#
             TYPENAME: proc{|d| ''},#
             LMID: proc{|d| '1209'},
             TITLE: proc{|d| d['Title']},#
             PUBLISHERNAME: proc{|d| 'admin'},#
             AUTHOR: proc{|d| d['Author']},#
             AUTHORDEPART: proc{|d| ''},#
             PUBLISHDATE: proc{|d, c| c.datetime(d['DateAndTime'])},#
             CONTENT: proc{|d| Qypz.ew_change(d['Content'])},#
             URL: proc{|d| ''},#
             IMAGEURL: proc{|d| ''},#
             ATTACHMENTNAME: proc{|d| ''},#
             ATTACHMENT: proc{|d| ''},#
             CHICKNUB: proc{|d| '1'},#
             AUDITSTATU: proc{|d| '1'},#
             AUDITOR: proc{|d| 'admin'},#
             AUDITORNAME: proc{|d| 'admin'},#
             AUDITTIME: proc{|d, c| c.datetime(d['DateAndTime'])},#
             REMARK: proc{|d| ''},#
             SUMMARY: proc{|d| ''},#
             DISPLAYTYPE: proc{|d| '0'},#
             OPENFLAG: proc{|d| '1'},#
             LLQX: proc{|d| '0'},#
             INDEXSHOW: proc{|d| '0'},#
             SFZD: proc{|d| '1'},#
             ZDYXJ: proc{|d| '0'},#
           }
  #~ data_hash_arr = db.get_table_data('PE_Announce')
  #~ out_hash_arr = DataMigrate.convert_data(data_hash_arr, config2)
  #~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365