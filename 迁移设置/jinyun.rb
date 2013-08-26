#ÍøÕ¾ÎÄÕÂ
md.get_table_info(['tab_News'])
config = { ID: { fn: 'ID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
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
#ÍøÕ¾À¸Ä¿
pid_proc = Proc.new{|s| s.include?(',') ? s.split(',')[-2] : '0'}
md.get_table_info(['zydn_Menu'])
config = { ID: { fn: 'MID', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
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
#ÍøÕ¾ÓÃ»§
md.get_table_info(['zydn_User_Base'])
config = { LOGINNAME: { fn: 'UserName', p: Proc.new{|s| s}},
           SCHOOLID: { fn: '', p: Proc.new{|i| '1'}},
           APPID: { fn: '', p: Proc.new{|i| ''}},
           PWD: { fn: 'PassWord', p: Proc.new{|s| s}},
           STATUS: { fn: '', p: Proc.new{|i| ''}},
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