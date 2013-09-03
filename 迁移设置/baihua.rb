dm = DBDataMigrate.new(db)
db_conn = DBConnector.new('D:\待迁移数据库\百花.mdb', db_type: 'ac')
  DBEntity.open('HanRuEdu',db_conn) do |db|
    
    lmcon = Proc.new do |s|
      case s.to_s
      when '1' then '14'
      when '3','100','126' then '9'
      when '5' then '12'
      when '6' then '13'
      when '7' then '15'
      when '8' then '26'
      when '9' then '28'
      when '10','85','127','128','137' then '16'
      when '11','92','93','97' then '12'
      when '12','91','130','131' then '15'
      when '13','14' then '16'
      when '16' then '21'
      when '17','105' then '29'
      when '19' then '31'
      when '53','129' then '20'
      when '54','83' then '11'
      when '55' then '10'
      when '82','86','87','94','95','102','103','104' then '18'
      when '101' then '17'
      when '132','133','134','135','136' then '22'
      else '999'
      end
    end
    
    dm = DBDataMigrate.new(db)
    dm.get_table_info('PE_Article')
    config = { ID: { fn: 'ArticleID', p: Proc.new{|s| s}},
               SCHOOLID: { fn: '', p: Proc.new{|i| '2'}},
               WEBID: { fn: '', p: Proc.new{|i| '4'}},
               TYPENAME: { fn: 'Keyword', p: Proc.new{|s| s.delete(' ')[0, 20]}},
               LMID: { fn: 'ClassID', p: lmcon},
               TITLE: { fn: 'Title', p: Proc.new{|s| s}},
               PUBLISHERNAME: { fn: 'Inputer', p: Proc.new{|s| s}},
               AUTHOR: { fn: 'Author', p: Proc.new{|s| s[0, 40]}},
               AUTHORDEPART: { fn: 'CopyFrom', p: Proc.new{|s| s}},
               PUBLISHDATE: { fn: 'UpdateTime', p: 'datetime'},
               CONTENT: { fn: 'Content', p: 'content_change'},
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
    dm.insert_data('EDU_WZXT_MHXT_WZWZ',config,25)
    
    
    dm.get_table_info('PE_User')
    config = { LOGINNAME: { fn: 'UserName', p: Proc.new{|s| s}},
               SCHOOLID: { fn: '', p: Proc.new{|i| '2'}},
               APPID: { fn: '', p: Proc.new{|i| '10'}},
               PWD: { fn: '', p: Proc.new{|i| 'BA51D0C25B4A33B7F03235EA33942C01'}},
               STATUS: { fn: '', p: Proc.new{|i| '1'}},
               USERTYPE: { fn: '', p: Proc.new{|i| '0'}},
               USERID: { fn: '', p: Proc.new{|i| ''}},
               ROLEIDLst: { fn: '', p: Proc.new{|i| ''}},
               XM: { fn: '', p: Proc.new{|i| ''}},
               XB: { fn: '', p: Proc.new{|i| ''}},
               QQ: { fn: '', p: Proc.new{|i| ''}},
               DZYJ: { fn: 'Email', p: Proc.new{|s| s}},
               LXDH: { fn: '', p: Proc.new{|i| ''}},
               ZJDLSJ: { fn: 'LastLoginTime', p: 'datetime'},
               DLCGCS: { fn: 'LoginTimes', p: Proc.new{|s| s}},
               YHCJSJ: { fn: 'RegTime', p: 'datetime'}}
    dm.insert_data('EDU_ELE_01_USER',config)