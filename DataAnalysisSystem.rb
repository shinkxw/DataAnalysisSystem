#!/usr/bin/env ruby -w
# encoding: GBK
#数据分析系统
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

#~ t = Time.now
#~ work_area = AreaManager.load_work_area("HANRU")
#~ work_area.export_all
#~ work_area.save_and_close_work_area
#~ p Time.now - t

conn = SqlServer.new('(local)')
md = MigrateData.new('jinyun',conn)

#网站文章
md.get_table_info('tab_News')
config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '0'}},
           WEBID: { fn: '', p: Proc.new{|i| '1'}},
           TYPENAME: { fn: 'Kind', p: Proc.new{|s| s}},
           LMID: { fn: 'menuid', p: Proc.new{|s| s}},
           TITLE: { fn: 'title', p: Proc.new{|s| s}},
           PUBLISHERNAME: { fn: 'SaveUser', p: Proc.new{|s| s}},
           AUTHOR: { fn: 'SaveUser', p: Proc.new{|s| s}},
           AUTHORDEPART: { fn: '', p: Proc.new{|i| ''}},
           PUBLISHDATE: { fn: 'SaveDate', p: 'datetime'},
           CONTENT: { fn: 'content', p: 'content'},
           URL: { fn: '', p: Proc.new{|i| ''}},
           IMAGEURL: { fn: '', p: Proc.new{|i| ''}},
           ATTACHMENTNAME: { fn: '', p: Proc.new{|i| ''}},
           ATTACHMENT: { fn: 'TabImage', p: Proc.new{|s| s}},
           CHICKNUB: { fn: '', p: Proc.new{|i| '0'}},
           AUDITSTATU: { fn: '', p: Proc.new{|i| '1'}},
           AUDITOR: { fn: '', p: Proc.new{|i| ''}},
           AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
           AUDITTIME: { fn: 'SaveDate', p: 'datetime'},
           REMARK: { fn: '', p: Proc.new{|i| ''}},
           SUMMARY: { fn: 'CBS', p: Proc.new{|s| s}},
           DISPLAYTYPE: { fn: '', p: Proc.new{|i| '0'}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           }
md.insert_data('EDU_WZXT_MHXT_WZWZ',config)
#网站栏目
pid_proc = Proc.new{|s| s.include?(',') ? s.split(',')[-2] : '0'}
md.get_table_info('zydn_Menu')
config = { ID: { fn: 'MID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '0'}},
           WEBID: { fn: '', p: Proc.new{|i| '1'}},
           LMSHOWSTYLE: { fn: '', p: Proc.new{|i| ''}},
           NAME: { fn: 'MName', p: Proc.new{|s| s}},
           URL: { fn: '', p: Proc.new{|i| ''}},
           IMAGEURL: { fn: '', p: Proc.new{|i| ''}},
           DEPTH: { fn: 'layer', p: Proc.new{|s| s}},
           PID: { fn: 'UpListID', p: pid_proc},
           LISTSHOWSTYLE: { fn: '', p: Proc.new{|i| ''}},
           ORDERTYPE: { fn: '', p: Proc.new{|i| ''}},
           SHOWNUMBER: { fn: '', p: Proc.new{|i| ''}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           }
md.insert_data('EDU_WZXT_MHXT_WZLM',config)
#网站用户
md.get_table_info('zydn_User_Base')
config = { LOGINNAME: { fn: 'UserName', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '0'}},
           APPID: { fn: '', p: Proc.new{|i| '10'}},
           PWD: { fn: '', p: Proc.new{|i| 'C3F64A921C134351A0A52974BD8797C5'}},
           STATUS: { fn: '', p: Proc.new{|i| '1'}},
           USERTYPE: { fn: '', p: Proc.new{|i| ''}},
           USERID: { fn: '', p: Proc.new{|i| ''}},
           ROLEIDLst: { fn: '', p: Proc.new{|i| ''}},
           XM: { fn: 'UserName', p: Proc.new{|s| s}},
           XB: { fn: '', p: Proc.new{|i| ''}},
           QQ: { fn: '', p: Proc.new{|i| ''}},
           DZYJ: { fn: 'Email', p: Proc.new{|s| s}},
           LXDH: { fn: '', p: Proc.new{|i| ''}},
           ZJDLSJ: { fn: 'Date_Login', p: 'datetime'},
           DLCGCS: { fn: 'Count_Login', p: Proc.new{|s| s}},
           YHCJSJ: { fn: 'RegDate', p: 'datetime'},
           }
md.insert_data('EDU_ELE_01_USER',config)

conn.close
