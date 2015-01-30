#!/usr/bin/env ruby -w
# encoding: GBK
class Qypz
  ary = [63,'1315',62,'1316',165,'1327',171,'1328',173,'1329',189,'1330',195,'1331',197,'1332',177,'1333',181,'1334',185,'1335',206,'1336',201,'1337',136,'1303',
        166,'1327',172,'1328',174,'1329',190,'1330',194,'1331',198,'1332',178,'1333',183,'1334',186,'1335',207,'1336',202,'1337',210,'1303',167,'1327',169,'1328',
        175,'1329',192,'1330',196,'1331',199,'1332',179,'1333',182,'1334',187,'1335',208,'1336',203,'1337',211,'1303',168,'1327',170,'1328',176,'1329',191,'1330',
        193,'1331',200,'1332',180,'1333',184,'1334',188,'1335',209,'1336',204,'1337',226,'1303']
  @@hash = Hash[*ary]
  @@hash.default = '-1'
  @@qz = '/WZXT/HrSchoolFiles/28/UpFiles/sxjd/'
          
  def self.get_lmid(news_cat_id); @@hash[news_cat_id] end
  def self.ew_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/jwt\/info/, "WZXT/HrSchoolFiles/57230/jwt/info")
    str = str.gsub(/http:\/\/www.jxxzzx.com\/pic/, "/WZXT/HrSchoolFiles/57230/pic")
    str
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
$wz_config = { ID: proc{|d| d['id']},#
               SCHOOLID: proc{|d| '57230'},#
               WEBID: proc{|d| '12375'},#
               TYPENAME: proc{|d| ''},#
               LMID: proc{|d| Qypz.get_lmid(d['catid'])},#
               TITLE: proc{|d| d['title'][0, 100]},#
               PUBLISHERNAME: proc{|d| d['source']},#
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
        