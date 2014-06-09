#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

def get_lmid(pkind, psort)
  return '1060' if (pkind == '新闻频道' && psort == '社会新闻')
  return '1061' if (pkind == '新闻频道' && psort == '校内新闻')
  return '1062' if (pkind == '新闻频道' && psort == '组室动态')
  return '1063' if (pkind == '新闻频道' && psort == '班级动态')
  return '1067' if (pkind == '教师频道' && psort == '课件展示')
  return '1068' if (pkind == '教师频道' && psort == '论文课题')
  return '1079' if (pkind == '学生频道' && psort == '魅力社团')
  return '1098' if (pkind == '通知公告')
  
  return '1085' if (pkind == '心灵之约' && psort == '专题活动')
  return '1086' if (pkind == '心灵之约' && psort == '心情故事')
  return '1086' if (pkind == '心灵之约' && psort == '心理知识')
  return '1087' if (pkind == '心灵之约' && psort == '心理信箱')
  
  return '1064' if (pkind == '职中校报')
  return '1081' if (pkind == '书香校园' || pkind == '职中诗教')
  return '-1'
end

def img(str)
  img = str ? str.split('|')[0] : nil
  img ? ('/WZXT\\HrSchoolFiles\\1\\UpFiles\\oldimg\\' + img) : nil
end

def pdf(d)
  return '/WZXT\\HrSchoolFiles\\1\\UpFiles\\tsg\\pdf\\' + d['pfile2'] if d['kind'] == '职中校报'
end

def tsg_img(d)
  return nil if d['kind'] == '职中校报'
  img = d['pfile2'] ? d['pfile2'].split('|')[0] : nil
  img ? ('/WZXT\\HrSchoolFiles\\1\\UpFiles\\tsg\\img\\' + img) : nil
end

def ew_change(str)
  str = str.gsub(/'/, "''")
  str = str.gsub(/eWebEditor4.4/, "WZXT/Content/eWebeditor")
  str = str.gsub(/ewebeditor4.4/, "WZXT/Content/eWebeditor")
  str = str.gsub(/www.phzyzz.net\/news\/photo/, "www.phzyzz.net:8010/news/photo")
  str = str.gsub(/www.phzyzz.net\/xinling\/photo/, "www.phzyzz.net:8010/xinling/photo")
  str
end

connector = DBConnector.new('E:\经手项目\平湖职业门户迁移\data.mdb', db_type: 'ac')#, db_type: 'ac'
DBEntity.open('HanruEdu', connector) do |db|
  
  config1 = { ID: proc{|d| d['ID']},
             SCHOOLID: proc{|d| '1'},
             WEBID: proc{|d| '12326'},
             TYPENAME: proc{|d| d['psort']},
             LMID: proc{|d| get_lmid(d['pkind'], d['psort'])},
             TITLE: proc{|d| d['topic']},
             PUBLISHERNAME: proc{|d| 'admin'},
             AUTHOR: proc{|d| d['author']},
             AUTHORDEPART: proc{|d| d['pdep']},
             PUBLISHDATE: proc{|d, c| c.datetime(d['pdate'])},
             CONTENT: proc{|d| ew_change(d['content'])},
             URL: proc{|d| ''},
             IMAGEURL: proc{|d| img(d['pfile2'])},
             ATTACHMENTNAME: proc{|d| d['pfile']},
             ATTACHMENT: proc{|d| d['pfile']},
             CHICKNUB: proc{|d| d['hits'].to_i},
             AUDITSTATU: proc{|d| '1'},
             AUDITOR: proc{|d| 'admin'},
             AUDITORNAME: proc{|d| 'admin'},
             AUDITTIME: proc{|d, c| c.datetime(d['pdate'])},
             REMARK: proc{|d| ''},
             SUMMARY: proc{|d| ''},
             DISPLAYTYPE: proc{|d| '0'},
             OPENFLAG: proc{|d| '1'},
             LLQX: proc{|d| '0'},
             INDEXSHOW: proc{|d| '0'},
             SFZD: proc{|d| '1'},
             ZDYXJ: proc{|d| '0'},
           }
  #~ data_hash_arr = db.get_table_data('main')
  #~ out_hash_arr = DataMigrate.convert_data(data_hash_arr, config1)
  #~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
  
  config2 = { ID: proc{|d| 10000 + d['ID']},
             SCHOOLID: proc{|d| '1'},
             WEBID: proc{|d| '12326'},
             TYPENAME: proc{|d| d['psort']},
             LMID: proc{|d| get_lmid(d['pkind'], d['psort'])},
             TITLE: proc{|d| d['topic']},
             PUBLISHERNAME: proc{|d| 'admin'},
             AUTHOR: proc{|d| d['author']},
             AUTHORDEPART: proc{|d| d['pdep']},
             PUBLISHDATE: proc{|d, c| c.datetime(d['pdate'])},
             CONTENT: proc{|d| ew_change(d['content'])},
             URL: proc{|d| ''},
             IMAGEURL: proc{|d| ''},
             ATTACHMENTNAME: proc{|d| ''},
             ATTACHMENT: proc{|d| ''},
             CHICKNUB: proc{|d| d['hits'].to_i},
             AUDITSTATU: proc{|d| '1'},
             AUDITOR: proc{|d| 'admin'},
             AUDITORNAME: proc{|d| 'admin'},
             AUDITTIME: proc{|d, c| c.datetime(d['pdate'])},
             REMARK: proc{|d| ''},
             SUMMARY: proc{|d| ''},
             DISPLAYTYPE: proc{|d| '0'},
             OPENFLAG: proc{|d| '1'},
             LLQX: proc{|d| '0'},
             INDEXSHOW: proc{|d| '0'},
             SFZD: proc{|d| '1'},
             ZDYXJ: proc{|d| '0'},
           }
  #~ data_hash_arr = db.get_table_data('xinling')
  #~ out_hash_arr = DataMigrate.convert_data(data_hash_arr, config2)
  #~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
end

connector = DBConnector.new('E:\经手项目\平湖职业门户迁移\book.mdb', db_type: 'ac')#, db_type: 'ac'
DBEntity.open('HanruEdu', connector) do |db|
  config3 = { ID: proc{|d| 20000 + d['ID']},
             SCHOOLID: proc{|d| '1'},
             WEBID: proc{|d| '12326'},
             TYPENAME: proc{|d| d['kind']},
             LMID: proc{|d| get_lmid(d['kind'], nil)},
             TITLE: proc{|d| d['topic']},
             PUBLISHERNAME: proc{|d| 'admin'},
             AUTHOR: proc{|d| d['man']},
             AUTHORDEPART: proc{|d| ''},
             PUBLISHDATE: proc{|d, c| c.datetime(d['ldate'])},
             CONTENT: proc{|d| ew_change(d['content'])},
             URL: proc{|d| pdf(d)},
             IMAGEURL: proc{|d| tsg_img(d)},
             ATTACHMENTNAME: proc{|d| ''},
             ATTACHMENT: proc{|d| ''},
             CHICKNUB: proc{|d| d['hits'].to_i},
             AUDITSTATU: proc{|d| '1'},
             AUDITOR: proc{|d| 'admin'},
             AUDITORNAME: proc{|d| 'admin'},
             AUDITTIME: proc{|d, c| c.datetime(d['ldate'])},
             REMARK: proc{|d| ''},
             SUMMARY: proc{|d| ''},
             DISPLAYTYPE: proc{|d| '0'},
             OPENFLAG: proc{|d| '1'},
             LLQX: proc{|d| '0'},
             INDEXSHOW: proc{|d| '0'},
             SFZD: proc{|d| '1'},
             ZDYXJ: proc{|d| '0'},
           }
  #~ data_hash_arr = db.get_table_data('main')
  #~ out_hash_arr = DataMigrate.convert_data(data_hash_arr, config3)
  #~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
end
