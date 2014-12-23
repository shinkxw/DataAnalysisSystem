#!/usr/bin/env ruby -w
# encoding: GBK

class Qypz
  ary = ['000064','1288','000014','1238','000056','1279','000022','1233','000063','1287','000036','1256','000032','1252','000002','1120','000058','1282','000008','1126','000055','1278',
         '000035','1255','000028','1247','000026','1245','000054','1277','000049','1272','000010','1133','000061','1285','000009','1232','000042','1264','000005','1123','000040','1262',
         '000044','1267','000033','1253','000067','1241','000059','1283','000030','1250','000024','1257','000004','1122','000045','1268','000043','1266','000006','1124','000025','1258',
         '000015','1239','000052','1275','000051','1274','000041','1263','000068','1265','000031','1251','000062','1286','000053','1276','000046','1269','000012','1236','000048','1271',
         '000037','1259','000021','1248','000003','1121','000034','1254','000029','1249','000020','1235','000013','1237','000057','1280','000011','1118','000050','1273','000047','1270',
         '000007','1125','000001','1119','000017','1242','000018','1243','000027','1246','000023','1234','000039','1261','000038','1260','000019','1244','000060','1284','000016','1240']
  @@hash = Hash[*ary]
  @@hash.default = '-1'
    
  def self.get_lmid(classid); @@hash[classid] end
  
  def self.img(str)
    if (str != "" && str != nil)
      str = str.gsub(/\/JxszWeb\/UploadFiles\//, '')
      str = ('/WZXT/Content/eWebeditor/uploadfile/' + str)
    else
      str = nil
    end
    str
  end
  
  def self.ew_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/\/kindeditor\/attached\/image\//, "/WZXT/Content/eWebeditor/uploadfile/qy/")
    str = str.gsub(/\/kindeditor\/asp.net\/..\/attached\/image\//, "/WZXT/Content/eWebeditor/uploadfile/qy/")
    str
  end
end

$wz_config = { ID: proc{|d| d['ArticleID'].to_i},
          SCHOOLID: proc{|d| '572001'},#101
          WEBID: proc{|d| '1'},
          TYPENAME: proc{|d| ''},
          LMID: proc{|d| Qypz.get_lmid(d['TypeID'])},
          TITLE: proc{|d| d['Title']},
          PUBLISHERNAME: proc{|d| ''},
          AUTHOR: proc{|d| d['Author']},
          AUTHORDEPART: proc{|d| ''},
          PUBLISHDATE: proc{|d, c| c.str_to_datetime(d['InputTime'])},
          CONTENT: proc{|d| Qypz.ew_change(d['Detail'])},
          URL: proc{|d| ''},
          IMAGEURL: proc{|d| ''},#
          ATTACHMENTNAME: proc{|d| ''},
          ATTACHMENT: proc{|d| ''},
          CHICKNUB: proc{|d| d['ReadTimes']},
          AUDITSTATU: proc{|d| '1'},
          AUDITOR: proc{|d| 'admin'},
          AUDITORNAME: proc{|d| 'admin'},
          AUDITTIME: proc{|d, c| c.str_to_datetime(d['UpdateTime'] ? d['UpdateTime'] : d['InputTime'])},
          REMARK: proc{|d| ''},
          SUMMARY: proc{|d| ''},
          DISPLAYTYPE: proc{|d| '0'},
          OPENFLAG: proc{|d| '1'},
          LLQX: proc{|d| '0'},
          INDEXSHOW: proc{|d| '0'},
          SFZD: proc{|d| '1'},
          ZDYXJ: proc{|d| '0'},
        }
$yh_config = { LOGINNAME: proc{|d| d['username']},#
          SCHOOLID: proc{|d| '28'},#
          APPID: proc{|d| '10'},#
          PWD: proc{|d| d['password']},#
          STATUS: proc{|d| '1'},#
          USERTYPE: proc{|d| '0'},#
          USERID: proc{|d| '0'},#
          ROLEIDLst: proc{|d| '0'},#
          XM: proc{|d| ''},#
          XB: proc{|d| d['gender']},#
          QQ: proc{|d| ''},#
          DZYJ: proc{|d| d['email']},#
          LXDH: proc{|d| ''},#
          ZJDLSJ: proc{|d, c| c.int_to_datetime(d['lastvisit'])},#
          DLCGCS: proc{|d| d['loginnum']},#
          YHCJSJ: proc{|d, c| c.int_to_datetime(d['regdate'])},#
          YHRY: proc{|d| '0'},#
          YHJF: proc{|d| '0'},#
        }