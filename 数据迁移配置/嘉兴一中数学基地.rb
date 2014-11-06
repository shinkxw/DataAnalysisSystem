#!/usr/bin/env ruby -w
# encoding: GBK

class Qypz
  ary = [318, '1166', 259, '1190', 327, '1178']
  @@hash = Hash[*ary]
  @@hash.default = '-1'
          
  def self.get_lmid(classid); @@hash[classid] end
  def self.ew_change(str)
    str = str.gsub(/'/, "''")
    str = str.gsub(/\[InstallDir_ChannelDir\]\{\$UploadDir\}/, "/WZXT/Content/eWebeditor/uploadfile")
    str
  end
  def self.get_data_hash(adata, rdata, ddata_arr)
    data_hash = {}
    data_hash['ID'] = adata['id']#栏目
    data_hash['LMID'] = adata['fid']#栏目
    data_hash['TITLE'] = adata['title']#标题
    data_hash['PUBLISHERNAME'] = adata['lastposter']#发布人
    data_hash['AUTHOR'] = adata['author']#作者
    data_hash['PUBLISHDATE'] = adata['posttime']#发布时间
    data_hash['IMAGEURL'] = adata['picnews']#图片
    data_hash['CHICKNUB'] = adata['hits']#点击量
    data_hash['AUDITTIME'] = adata['posttime']#审核时间
    s_content = rdata ? rdata['r_content'] : ""
    d_content = ""
    ddata_arr ||= []
    ddata_arr.each do |ddata|
      s_content.gsub!("[MMCBBS]#{ddata['d_url']}", '')#替换标签
      d_content << get_dhtml(ddata)#追加下载信息
    end
    data_hash['CONTENT'] = s_content + d_content#内容
    data_hash
  end
  def self.get_dhtml(dh)
    url, fname, size = dh['d_url'], dh['d_filename'], dh['d_size']
    hz = url.split('.')[-1].downcase
    dhtml = ''
    case hz
    when 'jpg','gif','bmp'
      ''
    when 'mid','mp3','avi','asf','asx','wmv','wma','mpg'
      ''
    when 'ra','rm','ram'
      ''
    when 'swf'
      ''
    else#下载
      
    end
    dhtml
  end
end

$wz_config = { ID: proc{|d| d['r_id']},
          SCHOOLID: proc{|d| '28'},
          WEBID: proc{|d| '12365'},
          TYPENAME: proc{|d| ''},
          LMID: proc{|d| get_lmid(5)},
          TITLE: proc{|d| d['TITLE'][0, 20]},
          PUBLISHERNAME: proc{|d| 'admin'},
          AUTHOR: proc{|d| ''},
          AUTHORDEPART: proc{|d| ''},
          PUBLISHDATE: proc{|d, c| c.datetime(d['CreateTime'])},
          CONTENT: proc{|d| ew_change(d['r_content'])},
          URL: proc{|d| ''},
          IMAGEURL: proc{|d| ''},
          ATTACHMENTNAME: proc{|d| ''},
          ATTACHMENT: proc{|d| ''},
          CHICKNUB: proc{|d| ''},
          AUDITSTATU: proc{|d| '1'},
          AUDITOR: proc{|d| 'admin'},
          AUDITORNAME: proc{|d| 'admin'},
          AUDITTIME: proc{|d, c| c.datetime(d['CreateTime'])},#
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
        