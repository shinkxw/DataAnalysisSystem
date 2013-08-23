#网站会员
md.get_table_info(['edu_wzgl_associator'])
config = { SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           LOGINNAME: { fn: 'UserName', p: Proc.new{|str| str}},
           LOGINPWD: { fn: 'PassWord', p: Proc.new{|str| str}},
           REALNAME: { fn: 'Name', p: Proc.new{|str| str}},
           EMAIL: { fn: 'Email', p: Proc.new{|str| str}},
           MOBILE: { fn: 'Station', p: Proc.new{|str| str}},
           QQ: { fn: '', p: Proc.new{|i| ''}},
           AUDITSTATU: { fn: '', p: Proc.new{|i| ''}},
           AUDITOR: { fn: '', p: Proc.new{|i| ''}},
           AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},}
md.convert_data('EDU_WZXT_VIP',config)
#网站文章
md.get_table_info(['edu_wzgl_sparticle'])
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
           CONTENT: { fn: 'Content', p: 'content'},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           ATTACHMENTNAME: { fn: 'AttachmentName', p: Proc.new{|str| str}},
           ATTACHMENT: { fn: 'Attachment', p: Proc.new{|str| str}},
           CHICKNUB: { fn: 'ChickNub', p: Proc.new{|str| str}},
           AUDITSTATU: { fn: 'Auditing', p: Proc.new{|str| str}},
           AUDITOR: { fn: 'Auditer', p: Proc.new{|str| str}},
           AUDITORNAME: { fn: '', p: Proc.new{|i| ''}},
           AUDITTIME: { fn: 'AuditerTime', p: 'datetime'},
           REMARK: { fn: 'Remark', p: Proc.new{|str| str}},
           SUMMARY: { fn: 'Summary', p: Proc.new{|str| str}},
           DISPLAYTYPE: { fn: 'DisplayType', p: Proc.new{|str| str}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '1'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           }
md.convert_data('EDU_WZXT_MHXT_WZWZ',config)
#发布权限
md.get_table_info(['edu_wzgl_sparticlepower'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           LOGINNAME: { fn: 'TeacherID', p: Proc.new{|str| str}},
           LMLIST: { fn: 'ArticleLst', p: Proc.new{|str| str}},
           LMNAMELIST: { fn: 'ArticleNameLst', p: Proc.new{|str| str}},
           }
md.convert_data('EDU_WZXT_MHXT_FBQX',config)
#网站栏目
md.get_table_info(['edu_wzgl_sparticletype'])
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
           SHOWNUMBER: { fn: '', p: Proc.new{|i| '0'}},
           OPENFLAG: { fn: '', p: Proc.new{|i| '1'}},
           LLQX: { fn: '', p: Proc.new{|i| '0'}},
           }
md.convert_data('EDU_WZXT_MHXT_WZLM',config)
#友情链接
md.get_table_info(['edu_wzgl_splink'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           TITLE: { fn: 'Title', p: Proc.new{|str| str}},
           TYPEID: { fn: 'Typeid', p: Proc.new{|str| str}},
           IMAGEURL: { fn: 'ImageUrl', p: Proc.new{|str| str}},
           URL: { fn: 'Url', p: Proc.new{|str| str}},
           }
md.convert_data('EDU_WZXT_MHXT_YQLJ',config)
#友情链接类型
md.get_table_info(['edu_wzgl_splinktype'])
config = { ID: { fn: 'ID', p: Proc.new{|str| str}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           WEBID: { fn: 'SpwebID', p: Proc.new{|str| str}},
           NAME: { fn: 'Name', p: Proc.new{|str| str}},
           SHOWSTYLE: { fn: 'Typeid', p: Proc.new{|str| str}},
           }
md.convert_data('EDU_WZXT_MHXT_YQLJLX',config)
#教师表
md.get_table_info(['edu_ele_teacher'])
config = { ID: { fn: '', p: Proc.new{|i| i}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           GH: { fn: 'ID', p: Proc.new{|s| s}},
           XM: { fn: 'Name', p: Proc.new{|s| s}},
           YWXM: { fn: '', p: Proc.new{|i| ''}},
           XMPY: { fn: '', p: Proc.new{|i| ''}},
           CYM: { fn: '', p: Proc.new{|i| ''}},
           SFZJLXM: { fn: '', p: Proc.new{|i| '1'}},
           SFZJH: { fn: 'IDcard', p: Proc.new{|s| s}},
           CSRQ: { fn: 'Birthday', p: 'time_to_8'},
           XBM: { fn: 'XbID', p: Proc.new{|s| s == '0' ? '1' : '0'}},
           MZM: { fn: '', p: Proc.new{|i| ''}},
           XXM: { fn: '', p: Proc.new{|i| ''}},
           JKZKM: { fn: '', p: Proc.new{|i| ''}},
           HYZTM: { fn: '', p: Proc.new{|i| ''}},
           ZZMMM: { fn: '', p: Proc.new{|i| ''}},
           GATQWM: { fn: '', p: Proc.new{|i| ''}},
           JG: { fn: '', p: Proc.new{|i| ''}},
           GJDQM: { fn: '', p: Proc.new{|i| ''}},
           CSDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           XYZJM: { fn: '', p: Proc.new{|i| ''}},
           JZGHKSZDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           HKLBM: { fn: '', p: Proc.new{|i| ''}},
           DQZZ: { fn: 'NowAdd', p: Proc.new{|s| s}},
           DQZZYZBM: { fn: '', p: Proc.new{|i| ''}},
           CJGZNY: { fn: '', p: Proc.new{|i| ''}},
           CJNY: { fn: '', p: Proc.new{|i| ''}},
           LXNY: { fn: 'JoinTime', p: 'time_to_6'},
           BZLBM: { fn: '', p: Proc.new{|i| ''}},
           JZGLBM: { fn: '', p: Proc.new{|i| ''}},
           GWLBM: { fn: '', p: Proc.new{|i| ''}},
           SFJZJS: { fn: '', p: Proc.new{|i| ''}},
           SFSSXJS: { fn: '', p: Proc.new{|i| ''}},
           ZP: { fn: 'Imageurl', p: Proc.new{|s| s}},
           DQZTM: { fn: '', p: Proc.new{|i| ''}},
           YDDH: { fn: 'Mobile', p: Proc.new{|s| s}},
           GDDH: { fn: 'OfficeTel', p: Proc.new{|s| s}},
           TXDZYZBM: { fn: '', p: Proc.new{|i| ''}},
           TXDZ: { fn: '', p: Proc.new{|i| ''}},
           DZXX: { fn: 'Email', p: Proc.new{|s| s}},
           WLDZ: { fn: '', p: Proc.new{|i| ''}},
           JSTXH: { fn: '', p: Proc.new{|i| ''}},
           }
md.convert_data('EDU_ZZJG_01_01_JZGJBSJ',config)
#学生表
md.get_table_info(['edu_ele_student'])
config = { ID: { fn: '', p: Proc.new{|i| i}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           XH: { fn: 'ID', p: Proc.new{|s| s}},
           XM: { fn: 'Name', p: Proc.new{|s| s}},
           YWXM: { fn: '', p: Proc.new{|i| ''}},
           XMPY: { fn: '', p: Proc.new{|i| ''}},
           CYM: { fn: '', p: Proc.new{|i| ''}},
           SFZJLXM: { fn: '', p: Proc.new{|i| '1'}},
           SFZJH: { fn: 'IDcard', p: Proc.new{|s| s}},
           XBM: { fn: 'XbID', p: Proc.new{|s| s == '0' ? '1' : '0'}},
           XXM: { fn: '', p: Proc.new{|i| ''}},
           CSRQ: { fn: 'Birthday', p: 'time_to_8'},
           CSDM: { fn: '', p: Proc.new{|i| ''}},
           JG: { fn: '', p: Proc.new{|i| ''}},
           MZM: { fn: '', p: Proc.new{|i| ''}},
           HYZKM: { fn: '', p: Proc.new{|i| ''}},
           XYZJM: { fn: '', p: Proc.new{|i| ''}},
           GATQWM: { fn: '', p: Proc.new{|i| ''}},
           JKZKM: { fn: '', p: Proc.new{|i| ''}},
           ZZMMM: { fn: '', p: Proc.new{|i| ''}},
           HKSZDXZQHM: { fn: '', p: Proc.new{|i| ''}},
           HKLBM: { fn: '', p: Proc.new{|i| ''}},
           SFSLDRK: { fn: '', p: Proc.new{|i| ''}},
           GJDQM: { fn: '', p: Proc.new{|i| ''}},
           TC: { fn: '', p: Proc.new{|i| ''}},
           XSLXDH: { fn: 'Mobile', p: Proc.new{|s| s}},
           WLDZ: { fn: '', p: Proc.new{|i| ''}},
           JSTXH: { fn: '', p: Proc.new{|i| ''}},
           DZXX: { fn: '', p: Proc.new{|i| ''}},
           ZP: { fn: 'Imageurl', p: Proc.new{|s| s}},
           }
md.convert_data('EDU_ZZXS_01_01_XSXX',config)
#
