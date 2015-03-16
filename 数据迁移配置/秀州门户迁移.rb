#!/usr/bin/env ruby -w
# encoding: GBK
class Qypz
  ary = [1,'1339',2,'1339',3,'1339',57,'1339',62,'1316',63,'1315',68,'1352',74,'1374',136,'1475',210,'1476',211,'1477',
        216,'1322',217,'1323',218,'1324',219,'1325',220,'1326',228,'1317',229,'1318',231,'1319',232,'1320',
        236,'1321',137,'1347',138,'1347',154,'1350',148,'1352',156,'1352',144,'1356',161,'1359',157,'1363',
        159,'1377',165,'1378',166,'1379',167,'1380',168,'1381',169,'1382',170,'1383',171,'1384',172,'1385',
        173,'1386',174,'1387',175,'1388',176,'1389',189,'1390',190,'1391',191,'1392',192,'1393',193,'1394',
        194,'1395',195,'1396',196,'1397',197,'1398',198,'1399',199,'1400',200,'1401',177,'1402',178,'1403',
        179,'1404',180,'1405',181,'1406',182,'1407',183,'1408',184,'1409',185,'1410',186,'1411',187,'1412',
        188,'1413',206,'1414',207,'1415',208,'1416',209,'1417',201,'1418',202,'1419',203,'1420',204,'1421']
  @@hash = Hash[*ary]
  @@hash.default = '-1'
  
  @@cp_hash = Hash[*[1,'1311',2,'1313',3,'1376']]
  @@cp_hash.default = '-1'
  
  plus_ary = [76,'1305',80,'1306',108,'1307',81,'1308',112,'1309',109,'1310',	
             111,'1344',113,'1345',110,'1348']
  @@plus_hash = Hash[*plus_ary]
  @@plus_hash.default = '-1'
  
  title_ary = [76,'学校简介',80,'历届学生',108,'历届领导',81,'校训校风',
              112,'学校校歌',109,'学校标志',111,'学校荣誉',113,'合作交流',110,'发展规划']
  @@title_hash = Hash[*title_ary]
  @@title_hash.default = '-1'
          
  def self.get_news_lmid(news_cat_id); @@hash[news_cat_id] end
  def self.get_cp_lmid(cp_cat_id); @@cp_hash[cp_cat_id] end
  def self.get_plus_lmid(menuid); @@plus_hash[menuid] end
  def self.get_plus_title(menuid); @@title_hash[menuid] end
  def self.ew_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/jwt\/info/, "WZXT/HrSchoolFiles/57230/jwt/info")
    str = str.gsub(/http:\/\/www.jxxzzx.com\/pic/, "/WZXT/HrSchoolFiles/57230/pic")
    str
  end
  def self.cp_change(str, imgurl)
    if img(imgurl) != nil
      imgstr = '<p align="center"><img alt="" src="' + img(imgurl) + '" border="0"></p>'
      str += imgstr
    end
    ew_change(str)
  end
  def self.img(str)
    if (str != "" && str != nil)
      str = '/WZXT/HrSchoolFiles/57230/jxxzzx/' + str
    else
      str = nil
    end
    str
  end
end
$news_config = { ID: proc{|d| 20000 + d['id']},#
               SCHOOLID: proc{|d| '30'},#
               WEBID: proc{|d| '12375'},#
               TYPENAME: proc{|d| ''},#
               LMID: proc{|d| Qypz.get_news_lmid(d['catid'])},#
               TITLE: proc{|d| d['title'][0, 100].strip},#
               PUBLISHERNAME: proc{|d| d['source'] ? d['source'][0, 50] : ''},#
               AUTHOR: proc{|d| d['author']},#
               AUTHORDEPART: proc{|d| ''},#
               PUBLISHDATE: proc{|d, c| c.int_to_datetime(d['dtime'])},#
               CONTENT: proc{|d| Qypz.ew_change(d['body'])},#
               URL: proc{|d| ''},#
               IMAGEURL: proc{|d| Qypz.img(d['src'])},#
               ATTACHMENTNAME: proc{|d| ''},#
               ATTACHMENT: proc{|d| ''},#
               CHICKNUB: proc{|d| d['0']},#
               AUDITSTATU: proc{|d| '1'},#
               AUDITOR: proc{|d| 'admin'},#
               AUDITORNAME: proc{|d| 'admin'},#
               AUDITTIME: proc{|d, c| c.int_to_datetime(d['dtime'])},#
               REMARK: proc{|d| ''},#
               SUMMARY: proc{|d| ''},#
               DISPLAYTYPE: proc{|d| '0'},#
               OPENFLAG: proc{|d| '1'},#
               LLQX: proc{|d| '0'},#
               INDEXSHOW: proc{|d| '0'},#
               SFZD: proc{|d| '1'},#
               ZDYXJ: proc{|d| '0'},#
               }
$cp_config = { ID: proc{|d| 30000 + d['id']},#
               SCHOOLID: proc{|d| '30'},#
               WEBID: proc{|d| '12375'},#
               TYPENAME: proc{|d| ''},#
               LMID: proc{|d| Qypz.get_cp_lmid(d['catid'])},#
               TITLE: proc{|d| d['title'][0, 100].strip},#
               PUBLISHERNAME: proc{|d| d['source'] ? d['source'][0, 50] : ''},#
               AUTHOR: proc{|d| d['author']},#
               AUTHORDEPART: proc{|d| ''},#
               PUBLISHDATE: proc{|d, c| c.int_to_datetime(d['dtime'])},#
               CONTENT: proc{|d| Qypz.cp_change(d['body'],d['src'])},#
               URL: proc{|d| ''},#
               IMAGEURL: proc{|d| Qypz.img(d['src'])},#
               ATTACHMENTNAME: proc{|d| ''},#
               ATTACHMENT: proc{|d| ''},#
               CHICKNUB: proc{|d| d['0']},#
               AUDITSTATU: proc{|d| '1'},#
               AUDITOR: proc{|d| 'admin'},#
               AUDITORNAME: proc{|d| 'admin'},#
               AUDITTIME: proc{|d, c| c.int_to_datetime(d['dtime'])},#
               REMARK: proc{|d| ''},#
               SUMMARY: proc{|d| ''},#
               DISPLAYTYPE: proc{|d| '0'},#
               OPENFLAG: proc{|d| '1'},#
               LLQX: proc{|d| '0'},#
               INDEXSHOW: proc{|d| '0'},#
               SFZD: proc{|d| '1'},#
               ZDYXJ: proc{|d| '0'},#
               }
$plus_config = { ID: proc{|d| 31000 + d['id']},
               SCHOOLID: proc{|d| '30'},
               WEBID: proc{|d| '12375'},
               TYPENAME: proc{|d| ''},
               LMID: proc{|d| Qypz.get_plus_lmid(d['menuid'])},
               TITLE: proc{|d| Qypz.get_plus_title(d['menuid'])},
               PUBLISHERNAME: proc{|d| ''},
               AUTHOR: proc{|d| ''},
               AUTHORDEPART: proc{|d| ''},
               PUBLISHDATE: proc{|d, c| c.datetime(Time.gm(*"2011-03-17".split('-')))},
               CONTENT: proc{|d| Qypz.ew_change(d['body'])},
               URL: proc{|d| ''},
               IMAGEURL: proc{|d| ''},
               ATTACHMENTNAME: proc{|d| ''},
               ATTACHMENT: proc{|d| ''},
               CHICKNUB: proc{|d| d['0']},
               AUDITSTATU: proc{|d| '1'},
               AUDITOR: proc{|d| 'admin'},
               AUDITORNAME: proc{|d| 'admin'},
               AUDITTIME: proc{|d, c| c.datetime(Time.gm(*"2011-03-17".split('-')))},
               REMARK: proc{|d| ''},
               SUMMARY: proc{|d| ''},
               DISPLAYTYPE: proc{|d| '0'},
               OPENFLAG: proc{|d| '1'},
               LLQX: proc{|d| '0'},
               INDEXSHOW: proc{|d| '0'},
               SFZD: proc{|d| '1'},
               ZDYXJ: proc{|d| '0'},
               }
        