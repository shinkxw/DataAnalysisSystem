#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

AreaManager.open("HANRU") do |work_area|
  #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  #work_area.export_testdata()
  #work_area.export_all
  
  db_conn = DBConnector.new('D:\��Ǩ�����ݿ�\�ٻ�.mdb', db_type: 'ac')
  DBEntity.open('HanRuEdu',db_conn) do |db|
    #work_area.show_db_diff(db)
    #work_area.update_db(db)
    
    dm = DBDataMigrate.new(db)
    #��վ����
    dm.get_table_info('PE_Article')
    config = { ID: { fn: 'ArticleID', p: Proc.new{|s| s}},
               SCHOOLID: { fn: '', p: Proc.new{|i| '0'}},
               WEBID: { fn: '', p: Proc.new{|i| '1'}},
               TYPENAME: { fn: '', p: Proc.new{|i| ''}},
               LMID: { fn: 'ClassID', p: Proc.new{|s| s}},
               TITLE: { fn: 'Title', p: Proc.new{|s| s}},
               PUBLISHERNAME: { fn: '', p: Proc.new{|s| s}},
               AUTHOR: { fn: '', p: Proc.new{|s| s}},
               AUTHORDEPART: { fn: '', p: Proc.new{|i| ''}},
               PUBLISHDATE: { fn: '', p: 'datetime'},
               CONTENT: { fn: '', p: 'content_change'},
               URL: { fn: '', p: Proc.new{|i| ''}},
               IMAGEURL: { fn: '', p: Proc.new{|i| ''}},
               ATTACHMENTNAME: { fn: '', p: Proc.new{|i| ''}},
               ATTACHMENT: { fn: '', p: Proc.new{|s| s}},
               CHICKNUB: { fn: '', p: Proc.new{|i| '0'}},
               AUDITSTATU: { fn: '', p: Proc.new{|i| '1'}},
               AUDITOR: { fn: '', p: Proc.new{|i| ''}},
               AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
               AUDITTIME: { fn: '', p: 'datetime'},
               REMARK: { fn: '', p: Proc.new{|i| ''}},
               SUMMARY: { fn: '', p: Proc.new{|s| s}},
               DISPLAYTYPE: { fn: '', p: Proc.new{|i| '0'}},
               OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
               LLQX: { fn: '', p: Proc.new{|i| '0'}},
               }
    dm.insert_data('EDU_WZXT_MHXT_WZWZ',config)
  end
end

