#!/usr/bin/env ruby -w
# encoding: GBK
#���ݷ���ϵͳ
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

t = Time.now
work_area = AreaManager.load_work_area("HANRU")
work_area.export_all
work_area.save_and_close_work_area
p Time.now - t

#~ conn = SqlServer.new('(local)')
#~ md = MigrateData.new('jinyun',conn)

#~ #��վ����
#~ md.get_table_info('tab_News')
#~ config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '0'}},
           #~ WEBID: { fn: '', p: Proc.new{|i| '1'}},
           #~ TYPENAME: { fn: 'Kind', p: Proc.new{|s| s}},
           #~ LMID: { fn: 'menuid', p: Proc.new{|s| s}},
           #~ TITLE: { fn: 'title', p: Proc.new{|s| s}},
           #~ PUBLISHERNAME: { fn: 'SaveUser', p: Proc.new{|s| s}},
           #~ AUTHOR: { fn: 'SaveUser', p: Proc.new{|s| s}},
           #~ AUTHORDEPART: { fn: '', p: Proc.new{|i| ''}},
           #~ PUBLISHDATE: { fn: 'SaveDate', p: 'datetime'},
           #~ CONTENT: { fn: 'content', p: 'content'},
           #~ URL: { fn: '', p: Proc.new{|i| ''}},
           #~ IMAGEURL: { fn: '', p: Proc.new{|i| ''}},
           #~ ATTACHMENTNAME: { fn: '', p: Proc.new{|i| ''}},
           #~ ATTACHMENT: { fn: 'TabImage', p: Proc.new{|s| s}},
           #~ CHICKNUB: { fn: '', p: Proc.new{|i| '0'}},
           #~ AUDITSTATU: { fn: '', p: Proc.new{|i| '1'}},
           #~ AUDITOR: { fn: '', p: Proc.new{|i| ''}},
           #~ AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
           #~ AUDITTIME: { fn: 'SaveDate', p: 'datetime'},
           #~ REMARK: { fn: '', p: Proc.new{|i| ''}},
           #~ SUMMARY: { fn: 'CBS', p: Proc.new{|s| s}},
           #~ DISPLAYTYPE: { fn: '', p: Proc.new{|i| '0'}},
           #~ OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
           #~ LLQX: { fn: '', p: Proc.new{|i| '0'}},
           #~ }
#~ md.insert_data('EDU_WZXT_MHXT_WZWZ',config)

#~ conn.close
