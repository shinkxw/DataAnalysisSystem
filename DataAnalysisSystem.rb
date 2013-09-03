#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

AreaManager.open("HANRU") do |work_area|
  #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  #work_area.export_testdata()
  work_area.export_all
  
  db_conn = DBConnector.new('D:\待迁移数据库\百花.mdb', db_type: 'ac')
  DBEntity.open('HanRuEdu',db_conn) do |db|
    #work_area.show_db_diff(db)
    #work_area.update_db(db)
    
    dm = DBDataMigrate.new(db)
    #网站文章
    dm.get_table_info('PE_Article')
    config = { ID: { fn: 'ArticleID', p: Proc.new{|s| s}},
               SCHOOLID: { fn: '', p: Proc.new{|i| '0'}},
               WEBID: { fn: '', p: Proc.new{|i| '1'}},
               TYPENAME: { fn: 'Keyword', p: Proc.new{|s| s.delete(' ')[0, 20]}},
               LMID: { fn: 'ClassID', p: Proc.new{|s| s}},
               TITLE: { fn: 'Title', p: Proc.new{|s| s}},
               PUBLISHERNAME: { fn: 'Inputer', p: Proc.new{|s| s}},
               AUTHOR: { fn: 'Author', p: Proc.new{|s| s}},
               AUTHORDEPART: { fn: 'CopyFrom', p: Proc.new{|s| s}},
               PUBLISHDATE: { fn: 'UpdateTime', p: 'datetime'},
               CONTENT: { fn: 'Content', p: 'content'},
               URL: { fn: 'LinkUrl', p: Proc.new{|s| s}},
               IMAGEURL: { fn: '', p: Proc.new{|i| ''}},
               ATTACHMENTNAME: { fn: '', p: Proc.new{|i| ''}},
               ATTACHMENT: { fn: '', p: Proc.new{|i| ''}},
               CHICKNUB: { fn: 'Hits', p: Proc.new{|s| s}},
               AUDITSTATU: { fn: '', p: Proc.new{|i| '1'}},
               AUDITOR: { fn: 'Editor', p: Proc.new{|s| s}},
               AUDITORNAME: { fn: 'Editor', p: Proc.new{|s| s}},
               AUDITTIME: { fn: 'CreateTime', p: 'datetime'},
               REMARK: { fn: '', p: Proc.new{|i| ''}},
               SUMMARY: { fn: '', p: Proc.new{|i| ''}},
               DISPLAYTYPE: { fn: '', p: Proc.new{|i| '0'}},
               OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
               LLQX: { fn: '', p: Proc.new{|i| '0'}},
               }
    dm.insert_data('EDU_WZXT_MHXT_WZWZ',config,1)
  end
end

