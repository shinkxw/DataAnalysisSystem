#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

#~ t = Time.now
#~ @work_area = AreaManager.load_work_area("HANRU")
#~ @work_area.export_all
#~ @work_area.save_and_close_work_area
#~ p Time.now - t

#'one' => 1, 
conn = SqlServer.new('(local)\SQLEXPRESS','sa','123@abc')
md = MigrateData.new('CloudEdu',conn)

content_proc = Proc.new do |str|
  str
end
md.get_table_info('edu_wzgl_sparticle')
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '0'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           TYPENAME: { fn: '', p: Proc.new{|i| ''}},
           LMID: { fn: 'TypeID', p: Proc.new{|str| str}},
           TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           PUBLISHERNAME: { fn: 'AuthorID', p: Proc.new{|str| str}},
           AUTHOR: { fn: 'Author', p: Proc.new{|str| str}},
           AUTHORDEPART: { fn: 'Authordepart', p: Proc.new{|str| str}},
           PUBLISHDATE: { fn: 'PublishDate', p: Proc.new{|str| str}},
           CONTENT: { fn: 'Content', p: content_proc},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           ATTACHMENTNAME: { fn: 'AttachmentName', p: Proc.new{|str| str}},
           ATTACHMENT: { fn: 'Attachment', p: Proc.new{|str| str}},
           CHICKNUB: { fn: 'ChickNub', p: Proc.new{|str| str}},
           AUDITSTATU: { fn: 'Auditing', p: Proc.new{|str| str}},
           AUDITOR: { fn: 'Auditer', p: Proc.new{|str| str}},
           AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
           AUDITTIME: { fn: 'AuditerTime', p: Proc.new{|str| str}},
           REMARK: { fn: 'Remark', p: Proc.new{|str| str}},
           SUMMARY: { fn: 'Summary', p: Proc.new{|str| str}},
           DISPLAYTYPE: { fn: 'DisplayType', p: Proc.new{|str| str}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           }
md.convert_data('EDU_WZXT_MHXT_WZWZ',config)

conn.close

