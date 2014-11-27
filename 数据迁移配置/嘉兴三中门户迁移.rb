#!/usr/bin/env ruby -w
# encoding: GBK

class Qypz
  #ary = [100, '1153', 101, '1154', 102, '1155', 103, '1156', 104, '1158', 107, '1159', 114, '1162', 116, '1163', 117, '1164', 119, '1165', 314, '1166', 131, '1168', 110, '1169', 115, '1170', 126, '1171', 128, '1172', 130, '1173', 129, '1175', 319, '1176', 184, '1178', 262, '1179', 138, '1181', 176, '1182', 122, '1184', 121, '1185', 123, '1186', 124, '1187', 125, '1188', 137, '1189', 159, '1190', 136, '1192', 102, '1194', 132, '1195', 246, '1196', 134, '1197', 149, '1198', 147, '1199', 148, '1200', 323, '1212', 108, '1214']
  ary = [183, '1180', 193, '1290', 223, '1318', 224, '1319', 225, '1320', 226, '1321', 
         278, '1322', 293, '1323', 308, '1324', 194, '1291', 227, '1325', 228, '1326', 
         229, '1327', 230, '1328', 279, '1329', 294, '1330', 309, '1331', 195, '1292', 
         231, '1332', 232, '1333', 233, '1334', 234, '1335', 280, '1338', 295, '1336', 
         310, '1337', 196, '1293', 235, '1339', 236, '1340', 237, '1341', 238, '1342', 
         281, '1343', 296, '1344', 311, '1345', 197, '1294', 239, '1346', 240, '1347', 
         241, '1348', 282, '1349', 297, '1349', 198, '1294', 242, '1346', 243, '1347', 
         244, '1348', 283, '1350', 298, '1349', 199, '1295', 245, '1351', 246, '1352', 
         247, '1353', 284, '1354', 299, '1355', 201, '1296', 252, '1356', 253, '1357', 
         254, '1358', 255, '1359', 286, '1360', 301, '1361', 313, '1362', 188, '1215', 
         203, '1272', 204, '1273', 205, '1274', 206, '1275', 273, '1276', 288, '1277', 
         303, '1278', 189, '1279', 207, '1280', 208, '1281', 209, '1282', 210, '1283', 
         274, '1284', 289, '1285', 304, '1286', 190, '1287', 211, '1297', 212, '1298', 
         213, '1299', 214, '1300', 275, '1301', 290, '1302', 305, '1303', 191, '1288', 
         215, '1304', 216, '1305', 217, '1306', 218, '1307', 276, '1308', 291, '1309', 
         306, '1310', 192, '1289', 219, '1311', 220, '1312', 221, '1313', 222, '1314', 
         277, '1317', 292, '1315', 307, '1316']
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
    str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/, "/WZXT/Content/eWebeditor/uploadfile")
    str = str.gsub(/http:\/\/10.10.11.3:8888\/JxszWeb\/\{\$UploadDir\}/, "/WZXT/Content/eWebeditor/uploadfile")
    str = str.gsub(/\/JxszWeb\/UploadFiles/, "/WZXT/Content/eWebeditor/uploadfile")
    str = str.gsub(/\[InstallDir_ChannelDir\]ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
    str = str.gsub(/http:\/\/www.jxsz.com\/JxszWeb\/ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
    str = str.gsub(/\/JxszWeb\/ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
    str
  end
end

#~ connector = DBConnector.new('E:\经手项目\迁移\嘉兴三中迁移\data.mdb', db_type: 'ac')#, db_type: 'ac'
#~ DBEntity.open('HanruEdu', connector) do |db|
  
  #~ config1 = { ID: proc{|d| d['ArticleID']},#
             #~ SCHOOLID: proc{|d| '27'},#
             #~ WEBID: proc{|d| '12365'},#
             #~ TYPENAME: proc{|d| d['Keyword'][0, 20]},#
             #~ LMID: proc{|d| get_lmid(d['ClassID'])},
             #~ TITLE: proc{|d| d['Title']},#
             #~ PUBLISHERNAME: proc{|d| 'admin'},#
             #~ AUTHOR: proc{|d| d['Author']},#
             #~ AUTHORDEPART: proc{|d| d['CopyFrom']},#
             #~ PUBLISHDATE: proc{|d, c| c.datetime(d['CreateTime'])},#
             #~ CONTENT: proc{|d| ew_change(d['Content'])},#
             #~ URL: proc{|d| ''},#
             #~ IMAGEURL: proc{|d| img(d['DefaultPicUrl'])},#
             #~ ATTACHMENTNAME: proc{|d| ''},#
             #~ ATTACHMENT: proc{|d| ''},#UploadFiles
             #~ CHICKNUB: proc{|d| d['Hits'].to_i},#
             #~ AUDITSTATU: proc{|d| '1'},#
             #~ AUDITOR: proc{|d| 'admin'},#
             #~ AUDITORNAME: proc{|d| 'admin'},#
             #~ AUDITTIME: proc{|d, c| c.datetime(d['CreateTime'])},#
             #~ REMARK: proc{|d| d['TitleIntact']},#
             #~ SUMMARY: proc{|d| d['Subheading']},#
             #~ DISPLAYTYPE: proc{|d| '0'},#
             #~ OPENFLAG: proc{|d| '1'},#
             #~ LLQX: proc{|d| '0'},#
             #~ INDEXSHOW: proc{|d| '0'},#
             #~ SFZD: proc{|d| '1'},#
             #~ ZDYXJ: proc{|d| '0'},#
           #~ }
  #~ data_hash_arr = db.get_table_data('PE_Article')
  #~ out_hash_arr = DataMigrate.convert_data(data_hash_arr, config1)
  #~ out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  #~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
  
  #~ config2 = { ID: proc{|d| 4000 + d['ID']},#
             #~ SCHOOLID: proc{|d| '27'},#
             #~ WEBID: proc{|d| '12365'},#
             #~ TYPENAME: proc{|d| ''},#
             #~ LMID: proc{|d| '1209'},
             #~ TITLE: proc{|d| d['Title']},#
             #~ PUBLISHERNAME: proc{|d| 'admin'},#
             #~ AUTHOR: proc{|d| d['Author']},#
             #~ AUTHORDEPART: proc{|d| ''},#
             #~ PUBLISHDATE: proc{|d, c| c.datetime(d['DateAndTime'])},#
             #~ CONTENT: proc{|d| ew_change(d['Content'])},#
             #~ URL: proc{|d| ''},#
             #~ IMAGEURL: proc{|d| ''},#
             #~ ATTACHMENTNAME: proc{|d| ''},#
             #~ ATTACHMENT: proc{|d| ''},#
             #~ CHICKNUB: proc{|d| '1'},#
             #~ AUDITSTATU: proc{|d| '1'},#
             #~ AUDITOR: proc{|d| 'admin'},#
             #~ AUDITORNAME: proc{|d| 'admin'},#
             #~ AUDITTIME: proc{|d, c| c.datetime(d['DateAndTime'])},#
             #~ REMARK: proc{|d| ''},#
             #~ SUMMARY: proc{|d| ''},#
             #~ DISPLAYTYPE: proc{|d| '0'},#
             #~ OPENFLAG: proc{|d| '1'},#
             #~ LLQX: proc{|d| '0'},#
             #~ INDEXSHOW: proc{|d| '0'},#
             #~ SFZD: proc{|d| '1'},#
             #~ ZDYXJ: proc{|d| '0'},#
           #~ }
  #~ #data_hash_arr = db.get_table_data('PE_Announce')
  #~ #out_hash_arr = DataMigrate.convert_data(data_hash_arr, config2)
  #~ #DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
#~ end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365