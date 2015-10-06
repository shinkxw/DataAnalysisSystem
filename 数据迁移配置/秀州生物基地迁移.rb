#!/usr/bin/env ruby -w
# encoding: GBK

class Qypz
  ary = ['1001-1','1492','10011','1493','10012','1494','10013','1495',
         '10014','1496','1002-1','1497','10025','1498','10026','1499',
         '10027','1500','10028','1501','1003-1','1502','10039','1503',
         '100310','1504','100311','1505','1007-1','1506','100718','1507',
         '100719','1508','100720','1509','100721','1510','1004-1','1511',
         '100412','1512','100413','1513','1005-1','1514','100514','1515',
         '100515','1516','100516','1517','100517','1518','3-1','1519']
  
  @@hash = Hash[*ary]
  @@hash.default = '-1'
    
  def self.get_lmid(chanid, classid)
    lmid = @@hash[chanid.to_s + classid.to_s]
    p "#{chanid} #{classid}" if lmid == '-1'
    lmid
  end
  
  def self.img(str)
    return nil if (str == "" || str == nil)
    '/WZXT/Content/swjd_old_file/' + str
  end
  
  def self.soft_img(str)
    return nil if (str == "" || str == nil)
    str.gsub(/UploadSoftPic/, "/WZXT/Content/swjd_old_file/soft")
  end
  
  def self.ew_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/, "/WZXT/Content/swjd_old_file")
    str = str.gsub(/http:\/\/218.75.62.195:..\/.{4}\/UploadFiles_..../, "/WZXT/Content/swjd_old_file")
    str = str.gsub(/\[InstallDir_ChannelDir\]ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxswjd/NewsDetails?did=")
    str = str.gsub(/http:\/\/218.75.62.195:79\/.{4}\/ShowSoft\.asp\?SoftID=(?=\d\d\d")/, "/WZXT/Sites/jxswjd/NewsDetails?did=10")#3位数ID
    str = str.gsub(/http:\/\/218.75.62.195:79\/.{4}\/ShowSoft\.asp\?SoftID=(?=\d\d\d\d")/, "/WZXT/Sites/jxswjd/NewsDetails?did=1")#4位数ID
    #str = str.gsub(/http:\/\/www.jxsz.com\/JxszWeb\/ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
    #str = str.gsub(/\/JxszWeb\/ShowArticle\.asp\?ArticleID=/, "/WZXT/Sites/jxszmh/NewsDetails?did=")
    str
  end
  
  def self.soft_change(d)
    str = d['SoftIntro'].gsub(/'/, "''")
    str = str.gsub(/http:\/\/218.75.62.195:..\/.{4}\/UploadFiles_..../, "/WZXT/Content/swjd_old_file")
    str = str.gsub(/http:\/\/218.75.62.195:79\/.{4}\/ShowSoft\.asp\?SoftID=(?=\d\d\d")/, "/WZXT/Sites/jxswjd/NewsDetails?did=10")#3位数ID
    str << "<br><table width=450 cellspacing=1 cellpadding=3 >"
      d['DownloadUrl'].split('$$$').each do |wjxx|
        name_and_url = wjxx.split('|')
        url = '/WZXT/Content/swjd_old_file/' + name_and_url[1]
        str << "<tr><td><a href=''#{url}'' target=_blank>#{name_and_url[0]}</a></td></tr>"
      end
    str << "</table>"
    str
  end
end
$config1 = { ID: proc{|d| d['ArticleID']},#
           SCHOOLID: proc{|d| '30'},#
           WEBID: proc{|d| '12378'},#
           TYPENAME: proc{|d| d['Keyword'][0, 20]},#
           LMID: proc{|d| Qypz.get_lmid(d['ChannelID'], d['ClassID'])},#
           TITLE: proc{|d| d['Title'].gsub(/&nbsp;/, ' ')},#
           PUBLISHERNAME: proc{|d| 'admin'},#
           AUTHOR: proc{|d| d['Author']},#
           AUTHORDEPART: proc{|d| d['CopyFrom']},#
           PUBLISHDATE: proc{|d, c| c.datetime(d['CreateTime'])},#
           CONTENT: proc{|d| Qypz.ew_change(d['Content'])},#
           URL: proc{|d| ''},#
           IMAGEURL: proc{|d| Qypz.img(d['DefaultPicUrl'])},#
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
$config2 = { ID: proc{|d| 10000 + d['SoftID']},#
           SCHOOLID: proc{|d| '30'},#
           WEBID: proc{|d| '12378'},#
           TYPENAME: proc{|d| d['Keyword'][0, 20]},#
           LMID: proc{|d| Qypz.get_lmid(d['ChannelID'], d['ClassID'])},#
           TITLE: proc{|d| d['SoftName'].gsub(/&nbsp;/, ' ')},#
           PUBLISHERNAME: proc{|d| 'admin'},#
           AUTHOR: proc{|d| d['Author'].gsub(/&nbsp;/, ' ')},#
           AUTHORDEPART: proc{|d| d['CopyFrom']},#
           PUBLISHDATE: proc{|d, c| c.datetime(d['CreateTime'])},#
           CONTENT: proc{|d| Qypz.soft_change(d)},#
           URL: proc{|d| ''},#
           IMAGEURL: proc{|d| Qypz.soft_img(d['SoftPicUrl'])},#
           ATTACHMENTNAME: proc{|d| ''},#
           ATTACHMENT: proc{|d| ''},#
           CHICKNUB: proc{|d| d['Hits']},#
           AUDITSTATU: proc{|d| '1'},#
           AUDITOR: proc{|d| 'admin'},#
           AUDITORNAME: proc{|d| 'admin'},#
           AUDITTIME: proc{|d, c| c.datetime(d['CreateTime'])},#
           REMARK: proc{|d| ''},#
           SUMMARY: proc{|d| ''},#
           DISPLAYTYPE: proc{|d| '0'},#
           OPENFLAG: proc{|d| '1'},#
           LLQX: proc{|d| '0'},#
           INDEXSHOW: proc{|d| '0'},#
           SFZD: proc{|d| '1'},#
           ZDYXJ: proc{|d| '0'},#
         }
