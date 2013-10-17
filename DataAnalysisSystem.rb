#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

$t_app_name,$t_dir_name = 'OAXT','gzlc'
AreaManager.set_conn(DBConnector.new('192.168.0.8,1444'))#192.168.0.8,1444
#AreaManager.set_conn(DBConnector.new('D:\xz.mdb',db_type: 'ac'))
AreaManager.load_area_and_db('HANRU','HanRuEdu') do |work_area,db|
  #work_area.export_tableinfo
  work_area.export_all#(true)
  #DBUpdater.new(work_area.area,db).show_db_diff
  #DBUpdater.new(work_area.area,db).update_db
  
  #~ i = 0
    #~ proc = Proc.new do |s|
    #~ case s
    #~ when 214;21
    #~ when 216;24
    #~ when 226;23
    #~ when 248;22
    #~ when 245;28
    #~ when 247;27
    #~ when 223;15
    #~ when 234;30
    #~ when 230;19
    #~ when 244;30
    #~ when 236;50
    #~ when 237,241,242;51
    #~ when 238;52
    #~ else p '!' + s.to_s;i += 1;999
    #~ end
  #~ end
  
  #~ md = DBDataMigrate.new(db)
  #~ md.get_table_info('EC_News')
  #~ config = { ID: { fn: '', p: Proc.new{|s| s + 1}},
             #~ SCHOOLID: { fn: '', p: Proc.new{|s| 4}},
             #~ WEBID: { fn: '', p: Proc.new{|s| 11}},
             #~ TYPENAME: { fn: '', p: Proc.new{|s| ''}},
             #~ LMID: { fn: 'E_bigclassid', p: proc},
             #~ TITLE: { fn: 'Title', p: Proc.new{|s| s}},
             #~ PUBLISHERNAME: { fn: 'editor', p: Proc.new{|s| s}},
             #~ AUTHOR: { fn: 'Author', p: Proc.new{|s| s}},
             #~ AUTHORDEPART: { fn: 'Original', p: Proc.new{|s| s}},
             #~ PUBLISHDATE: { fn: 'UpdateTime', p: 'datetime'},
             #~ CONTENT: { fn: 'Content', p: 'content'},
             #~ URL: { fn: '', p: Proc.new{|s| ''}},
             #~ IMAGEURL: { fn: 'picname', p: Proc.new{|s| s}},
             #~ ATTACHMENTNAME: { fn: '', p: Proc.new{|s| ''}},
             #~ ATTACHMENT: { fn: '', p: Proc.new{|s| ''}},
             #~ CHICKNUB: { fn: 'click', p: Proc.new{|s| s}},
             #~ AUDITSTATU: { fn: '', p: Proc.new{|s| '1'}},
             #~ AUDITOR: { fn: '', p: Proc.new{|s| ''}},
             #~ AUDITORNAME: { fn: '', p: Proc.new{|s| ''}},
             #~ AUDITTIME: { fn: '', p: Proc.new{|s| ''}},
             #~ REMARK: { fn: '', p: Proc.new{|s| ''}},
             #~ SUMMARY: { fn: '', p: Proc.new{|s| ''}},
             #~ DISPLAYTYPE: { fn: '', p: Proc.new{|s| '0'}},
             #~ OPENFLAG: { fn: '', p: Proc.new{|s| '0'}},
             #~ LLQX: { fn: '', p: Proc.new{|s| '0'}}}
  #~ md.insert_data('EDU_WZXT_MHXT_WZWZ', config, 30)
  
  #~ p i
end
