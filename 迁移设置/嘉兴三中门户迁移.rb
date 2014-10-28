
ary = [100, '1153', 101, '1154', 102, '1155', 103, '1156', 104, '1158', 107, '1159', 114, '1162', 116, '1163', 117, '1164', 119, '1165', 314, '1166', 131, '1168', 110, '1169', 115, '1170', 126, '1171', 128, '1172', 130, '1173', 129, '1175', 319, '1176', 184, '1178', 262, '1179', 138, '1181', 176, '1182', 122, '1184', 121, '1185', 123, '1186', 124, '1187', 125, '1188', 137, '1189', 159, '1190', 136, '1192', 102, '1194', 132, '1195', 246, '1196', 134, '1197', 149, '1198', 147, '1199', 148, '1200', 323, '1212', 108, '1214']
$hash = Hash[*ary]
$hash.default = '-1'
  
def get_lmid(classid); $hash[classid] end

def img(str)
  if (str != "" && str != nil)
    str = str.gsub(/\/JxszWeb\/UploadFiles\//, '')
    str = ('/WZXT/Content/eWebeditor/uploadfile/' + str)
  else
    str = nil
  end
  str
end

def ew_change(str)
  str = str.gsub(/'/, "''")
  str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/, "/WZXT/Content/eWebeditor/uploadfile")
  str = str.gsub(/http:\/\/10.10.11.3:8888\/JxszWeb\/\{\$UploadDir\}/, "/WZXT/Content/eWebeditor/uploadfile")
  str = str.gsub(/\/JxszWeb\/UploadFiles/, "/WZXT/Content/eWebeditor/uploadfile")
  str = str.gsub(/\[InstallDir_ChannelDir\]ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
  str = str.gsub(/http:\/\/www.jxsz.com\/JxszWeb\/ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
  str = str.gsub(/\/JxszWeb\/ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
  str
end

connector = DBConnector.new('E:\经手项目\迁移\嘉兴三中迁移\data.mdb', db_type: 'ac')#, db_type: 'ac'
DBEntity.open('HanruEdu', connector) do |db|
  
  config1 = { ID: proc{|d| d['ArticleID']},#
             SCHOOLID: proc{|d| '27'},#
             WEBID: proc{|d| '12365'},#
             TYPENAME: proc{|d| d['Keyword'][0, 20]},#
             LMID: proc{|d| get_lmid(d['ClassID'])},
             TITLE: proc{|d| d['Title']},#
             PUBLISHERNAME: proc{|d| 'admin'},#
             AUTHOR: proc{|d| d['Author']},#
             AUTHORDEPART: proc{|d| d['CopyFrom']},#
             PUBLISHDATE: proc{|d, c| c.datetime(d['CreateTime'])},#
             CONTENT: proc{|d| ew_change(d['Content'])},#
             URL: proc{|d| ''},#
             IMAGEURL: proc{|d| img(d['DefaultPicUrl'])},#
             ATTACHMENTNAME: proc{|d| ''},#
             ATTACHMENT: proc{|d| ''},#UploadFiles
             CHICKNUB: proc{|d| d['Hits'].to_i},#
             AUDITSTATU: proc{|d| '1'},#
             AUDITOR: proc{|d| 'admin'},#
             AUDITORNAME: proc{|d| 'admin'},#
             AUDITTIME: proc{|d, c| c.datetime(d['CreateTime'])},#
             REMARK: proc{|d| d['TitleIntact']},#
             SUMMARY: proc{|d| d['Subheading']},#
             DISPLAYTYPE: proc{|d| '0'},#
             OPENFLAG: proc{|d| '1'},#
             LLQX: proc{|d| '0'},#
             INDEXSHOW: proc{|d| '0'},#
             SFZD: proc{|d| '1'},#
             ZDYXJ: proc{|d| '0'},#
           }
  data_hash_arr = db.get_table_data('PE_Article')
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, config1)
  out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
  
  config2 = { ID: proc{|d| 4000 + d['ID']},#
             SCHOOLID: proc{|d| '27'},#
             WEBID: proc{|d| '12365'},#
             TYPENAME: proc{|d| ''},#
             LMID: proc{|d| '1209'},
             TITLE: proc{|d| d['Title']},#
             PUBLISHERNAME: proc{|d| 'admin'},#
             AUTHOR: proc{|d| d['Author']},#
             AUTHORDEPART: proc{|d| ''},#
             PUBLISHDATE: proc{|d, c| c.datetime(d['DateAndTime'])},#
             CONTENT: proc{|d| ew_change(d['Content'])},#
             URL: proc{|d| ''},#
             IMAGEURL: proc{|d| ''},#
             ATTACHMENTNAME: proc{|d| ''},#
             ATTACHMENT: proc{|d| ''},#
             CHICKNUB: proc{|d| '1'},#
             AUDITSTATU: proc{|d| '1'},#
             AUDITOR: proc{|d| 'admin'},#
             AUDITORNAME: proc{|d| 'admin'},#
             AUDITTIME: proc{|d, c| c.datetime(d['DateAndTime'])},#
             REMARK: proc{|d| ''},#
             SUMMARY: proc{|d| ''},#
             DISPLAYTYPE: proc{|d| '0'},#
             OPENFLAG: proc{|d| '1'},#
             LLQX: proc{|d| '0'},#
             INDEXSHOW: proc{|d| '0'},#
             SFZD: proc{|d| '1'},#
             ZDYXJ: proc{|d| '0'},#
           }
  #~ data_hash_arr = db.get_table_data('PE_Announce')
  #~ out_hash_arr = DataMigrate.convert_data(data_hash_arr, config2)
  #~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365