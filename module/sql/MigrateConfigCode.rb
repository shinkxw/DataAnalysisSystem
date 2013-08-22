#网站会员
#~ md.get_table_info(['edu_wzgl_associator'])
#~ config = { SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           #~ LOGINNAME: { fn: 'UserName', p: Proc.new{|str| str}},
           #~ LOGINPWD: { fn: 'PassWord', p: Proc.new{|str| str}},
           #~ REALNAME: { fn: 'Name', p: Proc.new{|str| str}},
           #~ EMAIL: { fn: 'Email', p: Proc.new{|str| str}},
           #~ MOBILE: { fn: 'Station', p: Proc.new{|str| str}},
           #~ QQ: { fn: '', p: Proc.new{|i| ''}},
           #~ AUDITSTATU: { fn: '', p: Proc.new{|i| ''}},
           #~ AUDITOR: { fn: '', p: Proc.new{|i| ''}},
           #~ AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},}
#~ md.convert_data('EDU_WZXT_VIP',config)
#网站文章
#~ md.get_table_info(['edu_wzgl_sparticle'])
#~ config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           #~ TYPENAME: { fn: '', p: Proc.new{|i| ''}},
           #~ LMID: { fn: 'TypeID', p: Proc.new{|str| str}},
           #~ TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           #~ PUBLISHERNAME: { fn: 'AuthorID', p: Proc.new{|str| str}},
           #~ AUTHOR: { fn: 'Author', p: Proc.new{|str| str}},
           #~ AUTHORDEPART: { fn: 'Authordepart', p: Proc.new{|str| str}},
           #~ PUBLISHDATE: { fn: 'PublishDate', p: Proc.new{|str| str}},
           #~ CONTENT: { fn: 'Content', p: Proc.new{|str| str}},
           #~ URL: { fn: 'Url', p: Proc.new{|str| str}},
           #~ IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           #~ ATTACHMENTNAME: { fn: 'AttachmentName', p: Proc.new{|str| str}},
           #~ ATTACHMENT: { fn: 'Attachment', p: Proc.new{|str| str}},
           #~ CHICKNUB: { fn: 'ChickNub', p: Proc.new{|str| str}},
           #~ AUDITSTATU: { fn: 'Auditing', p: Proc.new{|str| str}},
           #~ AUDITOR: { fn: 'Auditer', p: Proc.new{|str| str}},
           #~ AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
           #~ AUDITTIME: { fn: 'AuditerTime', p: Proc.new{|str| str}},
           #~ REMARK: { fn: 'Remark', p: Proc.new{|str| str}},
           #~ SUMMARY: { fn: 'Summary', p: Proc.new{|str| str}},
           #~ DISPLAYTYPE: { fn: 'DisplayType', p: Proc.new{|str| str}},
           #~ OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
           #~ LLQX: { fn: '', p: Proc.new{|i| '0'}},
           #~ }
#~ md.convert_data('EDU_WZXT_MHXT_WZWZ',config)
#发布权限
#~ md.get_table_info(['edu_wzgl_sparticlepower'])
#~ config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           #~ LOGINNAME: { fn: 'TeacherID', p: Proc.new{|str| str}},
           #~ LMLIST: { fn: 'ArticleLst', p: Proc.new{|str| str}},
           #~ LMNAMELIST: { fn: 'ArticleNameLst', p: Proc.new{|str| str}},
           #~ }
#~ md.convert_data('EDU_WZXT_MHXT_FBQX',config)
#网站栏目
#~ md.get_table_info(['edu_wzgl_sparticletype'])
#~ config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           #~ LMSHOWSTYLE: { fn: 'ImageShow', p: Proc.new{|str| str}},
           #~ NAME: { fn: 'Name', p: Proc.new{|str| str}},
           #~ URL: { fn: 'Url', p: Proc.new{|str| str}},
           #~ IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           #~ DEPTH: { fn: 'Depth', p: Proc.new{|str| str}},
           #~ PID: { fn: 'SuperiorID', p: Proc.new{|str| str}},
           #~ LISTSHOWSTYLE: { fn: '', p: Proc.new{|i| '0'}},
           #~ ORDERTYPE: { fn: '', p: Proc.new{|i| '0'}},
           #~ SHOWNUMBER: { fn: '', p: Proc.new{|i| '0'}},
           #~ OPENFLAG: { fn: '', p: Proc.new{|i| '0'}},
           #~ LLQX: { fn: '', p: Proc.new{|i| '0'}},
           #~ }
#~ md.convert_data('EDU_WZXT_MHXT_WZLM',config)
#友情链接
#~ md.get_table_info(['edu_wzgl_splink'])
#~ config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           #~ TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           #~ TYPEID: { fn: 'Typeid', p: Proc.new{|str| str}},
           #~ IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           #~ URL: { fn: 'Url', p: Proc.new{|str| str}},
           #~ }
#~ md.convert_data('EDU_WZXT_MHXT_YQLJ',config)
#友情链接类型
#~ md.get_table_info(['edu_wzgl_splinktype'])
#~ config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           #~ SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           #~ WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           #~ NAME: { fn: 'Name', p: Proc.new{|str| str}},
           #~ SHOWSTYLE: { fn: 'Typeid', p: Proc.new{|str| str}},
           #~ }
#~ md.convert_data('EDU_WZXT_MHXT_YQLJLX',config)
#
