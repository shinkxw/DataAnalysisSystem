#!/usr/bin/env ruby -w
# encoding: GBK
$root = Dir.pwd
$:.unshift($root)
require 'ScriptLoader'#脚本加载器

ary = [100, '1153', 101, '1154', 102, '1155']
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
  str
end

connector = DBConnector.new('localhost', db_type: 'mysql', username: 'root')#, db_type: 'ac'
DBEntity.open('jxyz', connector) do |db|
  
  config1 = { ID: proc{|d| d['id']},#
             SCHOOLID: proc{|d| '28'},#
             WEBID: proc{|d| '12362'},#
             TYPENAME: proc{|d| d['Keyword'][0, 20]},
             LMID: proc{|d| get_lmid(d['ClassID'])},
             TITLE: proc{|d| d['title']},#
             PUBLISHERNAME: proc{|d| 'admin'},
             AUTHOR: proc{|d| d['Author']},
             AUTHORDEPART: proc{|d| d['CopyFrom']},
             PUBLISHDATE: proc{|d, c| c.datetime(d['CreateTime'])},
             CONTENT: proc{|d| ew_change(d['Content'])},
             URL: proc{|d| ''},
             IMAGEURL: proc{|d| img(d['DefaultPicUrl'])},
             ATTACHMENTNAME: proc{|d| ''},
             ATTACHMENT: proc{|d| ''},
             CHICKNUB: proc{|d| d['Hits'].to_i},
             AUDITSTATU: proc{|d| '1'},
             AUDITOR: proc{|d| 'admin'},
             AUDITORNAME: proc{|d| 'admin'},
             AUDITTIME: proc{|d, c| c.datetime(d['CreateTime'])},
             REMARK: proc{|d| d['TitleIntact']},
             SUMMARY: proc{|d| d['Subheading']},
             DISPLAYTYPE: proc{|d| '0'},#
             OPENFLAG: proc{|d| '1'},#
             LLQX: proc{|d| '0'},#
             INDEXSHOW: proc{|d| '0'},#
             SFZD: proc{|d| '1'},#
             ZDYXJ: proc{|d| '0'},#
           }
  data_hash_arr = db.get_table_data('lfj_artic')
  out_hash_arr = DataMigrate.convert_data(data_hash_arr, config1)
  out_hash_arr.delete_if {|hash| hash[:LMID] == '-1'}
  DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_WZXT_MHXT_WZWZ')
  
end
#delete [EDU_WZXT_MHXT_WZWZ] where [SCHOOLID] = 27 and [WEBID] = 12365