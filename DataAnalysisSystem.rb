#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

AreaManager.open("HANRU") do |work_area|
  #config = {'EDU_WZXT_MHXT_WZLM' => 5, 'EDU_WZXT_MHXT_WZWZ' => 500}
  #work_area.export_testdata()
  #work_area.export_all
  
  DBEntity.open('HanRuEdu',DBConnector.new('(local)\sqlexpress')) do |db|
    work_area.show_db_diff(db)
    #work_area.update_db(db)
    
    #~ dm = DBDataMigrate.new(db)
    #~ #网站文章
    #~ dm.get_table_info('EDU_WZXT_MHXT_WZWZ')
    #~ config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
             #~ SCHOOLID: { fn: 'SCHOOLID', p: Proc.new{|i| '0'}},
             #~ WEBID: { fn: 'WEBID', p: Proc.new{|i| '1'}},
             #~ TYPENAME: { fn: 'TYPENAME', p: Proc.new{|s| s}},
             #~ LMID: { fn: 'LMID', p: Proc.new{|s| s}},
             #~ TITLE: { fn: 'TITLE', p: Proc.new{|s| s}},
             #~ PUBLISHERNAME: { fn: 'PUBLISHERNAME', p: Proc.new{|s| s}},
             #~ AUTHOR: { fn: 'AUTHOR', p: Proc.new{|s| s}},
             #~ AUTHORDEPART: { fn: 'AUTHORDEPART', p: Proc.new{|i| ''}},
             #~ PUBLISHDATE: { fn: 'PUBLISHDATE', p: 'datetime'},
             #~ CONTENT: { fn: 'CONTENT', p: 'content_change'},
             #~ URL: { fn: '', p: Proc.new{|i| ''}},
             #~ IMAGEURL: { fn: '', p: Proc.new{|i| ''}},
             #~ ATTACHMENTNAME: { fn: '', p: Proc.new{|i| ''}},
             #~ ATTACHMENT: { fn: 'ATTACHMENT', p: Proc.new{|s| s}},
             #~ CHICKNUB: { fn: '', p: Proc.new{|i| '0'}},
             #~ AUDITSTATU: { fn: '', p: Proc.new{|i| '1'}},
             #~ AUDITOR: { fn: '', p: Proc.new{|i| ''}},
             #~ AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
             #~ AUDITTIME: { fn: 'AUDITTIME', p: 'datetime'},
             #~ REMARK: { fn: '', p: Proc.new{|i| ''}},
             #~ SUMMARY: { fn: 'SUMMARY', p: Proc.new{|s| s}},
             #~ DISPLAYTYPE: { fn: 'DISPLAYTYPE', p: Proc.new{|i| '0'}},
             #~ OPENFLAG: { fn: 'OPENFLAG', p: Proc.new{|i| '0'}},
             #~ LLQX: { fn: 'LLQX', p: Proc.new{|i| '0'}},
             #~ }
    #~ dm.insert_data('EDU_WZXT_MHXT_WZWZ',config)
  end
end

