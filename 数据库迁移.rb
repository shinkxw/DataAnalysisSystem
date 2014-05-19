#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

#AreaManager.set_conn(DBConnector.new('D:\待迁移数据库\交通数据库.mdb',db_type: 'ac'))
AreaManager.set_conn(DBConnector.new('b'))#192.168.0.8
AreaManager.load_area_and_db('HANRU','CloudEdu') do |work_area,db|
  md = DBDataMigrate.new(db)
  #网站文章
  md.get_table_info('edu_wzgl_sparticle')
  config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           TYPENAME: { fn: '', p: Proc.new{|i| ''}},
           LMID: { fn: 'TypeID', p: Proc.new{|str| str}},
           TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           PUBLISHERNAME: { fn: 'AuthorID', p: Proc.new{|str| str}},
           AUTHOR: { fn: 'Author', p: Proc.new{|str| str}},
           AUTHORDEPART: { fn: 'Authordepart', p: Proc.new{|str| str}},
           PUBLISHDATE: { fn: 'PublishDate', p: 'datetime'},
           CONTENT: { fn: 'Content', p: 'content_change'},
           URL: { fn: 'PdfURL', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: 'content_change'},
           ATTACHMENTNAME: { fn: 'AttachmentName', p: Proc.new{|str| str}},
           ATTACHMENT: { fn: 'Attachment', p: Proc.new{|str| str}},
           CHICKNUB: { fn: 'ChickNub', p: Proc.new{|str| str}},
           AUDITSTATU: { fn: '', p: Proc.new{|i| '1'}},
           AUDITOR: { fn: 'Auditer', p: Proc.new{|str| str}},
           AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
           AUDITTIME: { fn: 'AuditerTime', p: 'datetime'},
           REMARK: { fn: 'Remark', p: Proc.new{|str| str}},
           SUMMARY: { fn: 'Summary', p: Proc.new{|str| str}},
           DISPLAYTYPE: { fn: 'DisplayType', p: Proc.new{|str| str}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '1'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           INDEXSHOW: { fn: '', p: Proc.new{|i| '0'}},
           SFZD: { fn: '', p: Proc.new{|i| '1'}},
           ZDYXJ: { fn: '', p: Proc.new{|i| '0'}},
           }
  md.insert_data('EDU_WZXT_MHXT_WZWZ',config)
  #网站栏目
  md.get_table_info('edu_wzgl_sparticletype')
  config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           LMSHOWSTYLE: { fn: 'ImageShow', p: Proc.new{|str| str}},
           NAME: { fn: 'Name', p: Proc.new{|str| str}},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           DEPTH: { fn: 'Depth', p: Proc.new{|str| str}},
           PID: { fn: 'SuperiorID', p: Proc.new{|str| str}},
           LISTSHOWSTYLE: { fn: '', p: Proc.new{|i| '0'}},
           ORDERTYPE: { fn: '', p: Proc.new{|i| '0'}},
           SHOWNUMBER: { fn: '', p: Proc.new{|i| '10'}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '1'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           PLSX: { fn: '', p: Proc.new{|i| '0'}},
           }
  md.insert_data('EDU_WZXT_MHXT_WZLM',config)
  #友情链接
  md.get_table_info('edu_wzgl_splink')
  config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           TYPEID: { fn: 'Typeid', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: 'content_change'},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           }
  md.insert_data('EDU_WZXT_MHXT_YQLJ',config)
  #友情链接类型
  md.get_table_info('edu_wzgl_splinktype')
  config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           NAME: { fn: 'Name', p: Proc.new{|str| str}},
           SHOWSTYLE: { fn: 'Typeid', p: Proc.new{|str| str}},
           }
  md.insert_data('EDU_WZXT_MHXT_YQLJLX',config)
end
