#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#�ű�������

def get_lmid(pkind, psort)
  return '1060' if (pkind == '����Ƶ��' && psort == '�������')
  return '1061' if (pkind == '����Ƶ��' && psort == 'У������')
  return '1062' if (pkind == '����Ƶ��' && psort == '���Ҷ�̬')
  return '1063' if (pkind == '����Ƶ��' && psort == '�༶��̬')
  return '1067' if (pkind == '��ʦƵ��' && psort == '�μ�չʾ')
  return '1068' if (pkind == '��ʦƵ��' && psort == '���Ŀ���')
  return '1079' if (pkind == 'ѧ��Ƶ��' && psort == '��������')
  return '1098' if (pkind == '֪ͨ����')
  
  return '1085' if (pkind == '����֮Լ' && psort == 'ר��')
  return '1086' if (pkind == '����֮Լ' && psort == '�������')
  return '1086' if (pkind == '����֮Լ' && psort == '����֪ʶ')
  return '1087' if (pkind == '����֮Լ' && psort == '��������')
  
  return '1064' if (pkind == 'ְ��У��')
  return '1081' if (pkind == '����У԰' || pkind == 'ְ��ʫ��')
  return '-1'
end

def img(str)
  img = str ? str.split('|')[0] : nil
  img ? ('/WZXT\\HrSchoolFiles\\1\\UpFiles\\oldimg\\' + img) : nil
end

def pdf(d)
  return '/WZXT\\HrSchoolFiles\\1\\UpFiles\\tsg\\pdf\\' + d['pfile2'] if d['kind'] == 'ְ��У��'
end

def tsg_img(d)
  return nil if d['kind'] == 'ְ��У��'
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

connector = DBConnector.new('E:\������Ŀ\ƽ��ְҵ�Ż�Ǩ��\data.mdb', db_type: 'ac')#, db_type: 'ac'
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

connector = DBConnector.new('E:\������Ŀ\ƽ��ְҵ�Ż�Ǩ��\book.mdb', db_type: 'ac')#, db_type: 'ac'
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
