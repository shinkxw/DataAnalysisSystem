#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

connector = DBConnector.new('E:\������Ŀ\ƽ��ְҵ�Ż�Ǩ��\data.mdb', db_type: 'ac')#, db_type: 'ac'
DBEntity.open('HanruEdu', connector) do |db|
  
  config = { ID: proc{|d| d['ID']},
             SCHOOLID: proc{|d| 's'},
             WEBID: proc{|d| 's'},
             TYPENAME: proc{|i| ''},
             LMID: proc{|d| 's'},
             TITLE: proc{|d| d['topic']},
             PUBLISHERNAME: proc{|d| ''},
             AUTHOR: proc{|d| d['author']},
             AUTHORDEPART: proc{|d| d['pdep']},
             PUBLISHDATE: proc{|d, c| c.datetime(d['pdate'])},
             CONTENT: proc{|d, c| c.content(d['content'])},
             URL: proc{|d| 's'},
             IMAGEURL: proc{|d| 's'},
             ATTACHMENTNAME: proc{|d| 's'},
             ATTACHMENT: proc{|d| 's'},
             CHICKNUB: proc{|d| d['hits']},
             AUDITSTATU: proc{|d| '1'},
             AUDITOR: proc{|d| 's'},
             AUDITORNAME: proc{|d| ''},
             AUDITTIME: proc{|d| 's'},
             REMARK: proc{|d| 's'},
             SUMMARY: proc{|d| 's'},
             DISPLAYTYPE: proc{|d| 's'},
             OPENFLAG: proc{|d| '1'},
             LLQX: proc{|d| '0'},
             INDEXSHOW: proc{|d| '0'},
             SFZD: proc{|d| '1'},
             ZDYXJ: proc{|d| '0'},
           }
  data_hash_arr = db.get_table_data('main')
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, config)
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')

end