#!/usr/bin/env ruby -w
# encoding: GBK

class Qypz
  ary = [22, '1119', 38, '1119', 24, '1120', 26, '1121', 42, '1121', 12, '1122', 86, '1123', 124, '1124', 125, '1125', 19, '1127', 21, '1128', 70, '1129', 71, '1130', 107, '1130', 110, '1130', 72, '1131', 73, '1134', 65, '1138', 67, '1139', 64, '1140', 28, '1142', 30, '1143', 29, '1144', 27, '1145', 123, '1148', 130, '1150', 131, '1151']
  @@hash = Hash[*ary]
  @@hash.default = '-1'
  @@qz = '/WZXT/HrSchoolFiles/28/UpFiles/sxjd/'
          
  def self.get_lmid(classid); @@hash[classid] end
  def self.ew_change(str)
    str = str.gsub(/'/, "''")
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
    data_hash['IMAGEURL'] = adata['picnews'] == '' ? '' : @@qz + adata['picnews']#图片
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
    url, fname, size = dh['d_url'], dh['d_filename'], sprintf("%.3f", (dh['d_size'].to_i)/1048576.0)
    hz = url.split('.')[-1].downcase
    url = @@qz + url;
    case hz
    when 'jpg','gif','bmp'
          "
          <CENTER><a href='#{url}' target=_blank><IMG src='#{url}' border=0 onload='if(this.width>500) this.width=500' ></a></CENTER>
          "
    when 'mid','mp3','avi','asf','asx','wmv','wma','mpg'
          "
          <CENTER><object classid='clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95' type='application/x-oleobject' width=350  height=280 align='middle' standby='Loading Microsoft?Windows?Media Player components...' id='MediaPlayer1'>
          <param name='transparentAtStart' value='True'>
          <param name='transparentAtStop' value='True'>
          <param name='AnimationAtStart' value='Ture'>
          <param name='AutoStart' value='True'>
          <param name='AutoRewind' value='true'>
          <param name='DisplaySize' value='0'>
          <param name='AutoSize' value='false'>
          <param name='ShowDisplay' value='false'>
          <param name='ShowStatusBar' value='ture'>
          <param name='ShowControls' value='ture'>
          <param name='FileName' value='#{url}'>
          <param name='Volume' value='0'>
          <embed src='' width='350' height=280 autostart='True' align='middle' transparentatstart='True' transparentatstop='True' animationatstart='Ture' autorewind='true' displaysize='0' autosize='false' showdisplay='False' showstatusbar='-1' showcontrols='ture' filename='#{url}' volume='0'>
          </embed> 
          </object></CENTER>
          "
    when 'ra','rm','ram'
          "
          <CENTER><object ID='video' CLASSID='clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA' HEIGHT='280' WIDTH='350' align='center'>  
          <param name='_ExtentX' value='9260'>
          <param name='_ExtentY' value='6350'>
          <param name='AUTOSTART' value='-1'>
          <param name='SHUFFLE' value='0'>
          <param name='PREFETCH' value='0'>
          <param name='NOLABELS' value='0'>
          <param name='SRC' value='#{url}'>
          <param name='CONTROLS' value='ImageWindow'>
          <param name='CONSOLE' value='Clip1'>
          <param name='LOOP' value='0'>
          <param name='NUMLOOP' value='0'>
          <param name='CENTER' value='0'>
          <param name='MAINTAINASPECT' value='0'>
          <param name='BACKGROUNDCOLOR' value='#000000'><embed SRC='4.rpm' type='audio/x-pn-realaudio-plugin' CONSOLE='Clip1' CONTROLS='ImageWindow' HEIGHT='240' WIDTH='352' AUTOSTART='false'>
          </object><br>
          <object ID='video' CLASSID='clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA' HEIGHT='40' WIDTH='350' align='center'>
          <param name='_ExtentX' value='9260'>
          <param name='_ExtentY' value='1058'>
          <param name='AUTOSTART' value='-1'>
          <param name='SHUFFLE' value='0'>
          <param name='PREFETCH' value='0'>
          <param name='NOLABELS' value='0'>
          <param name='CONTROLS' value='ControlPanel,StatusBar'>
          <param name='CONSOLE' value='Clip1'>
          <param name='LOOP' value='0'>
          <param name='NUMLOOP' value='0'>
          <param name='CENTER' value='0'>
          <param name='MAINTAINASPECT' value='0'>
          <param name='BACKGROUNDCOLOR' value='#000000'><embed type='audio/x-pn-realaudio-plugin' CONSOLE='Clip1' CONTROLS='ControlPanel,StatusBar' HEIGHT='60' WIDTH='275' AUTOSTART='false'>
          </object></CENTER>
          "
    when 'swf'
          "
          <CENTER><param NAME='_cx' VALUE='10583'>  
          <param NAME='_cy' VALUE='7937'>  
          <param NAME='Movie' VALUE='#{url}'>  
          <param NAME='Src' VALUE='#{url}'>  
          <param NAME='WMode' VALUE='Window'>  
          <param NAME='Play' VALUE='0'>  
          <param NAME='Loop' VALUE='-1'>  
          <param NAME='Quality' VALUE='High'>  
          <param NAME='SAlign' VALUE>  
          <param NAME='Menu' VALUE='-1'>  
          <param NAME='Base' VALUE>  
          <param NAME='Scale' VALUE='ExactFit'>  
          <param NAME='DeviceFont' VALUE='0'>  
          <param NAME='EmbedMovie' VALUE='0'>  
          <param NAME='BGColor' VALUE>  
          <param NAME='SWRemote' VALUE>  
          <param NAME='Stacking' VALUE='below'><embed src='#{url}' quality='high'  pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlas h' type='application/x-shockwave-flash' width='500' height='380'> </CENTER>
          "
    else#下载
          "
          <br>
          <table width=450 cellspacing=1 cellpadding=3 bgcolor=#2286D0 style='background: #afd0fc; border: 1px solid #3475b3 ;'>
          <tr bgcolor=#2E7CCB> 
          <td colspan=2><b><a href='#{url}' target=_blank><font color=#FFFFFF>附件名称:#{fname}</font></a></b></td>
          </tr>
          <tr bgcolor=#FBFDFF> 
          <td width=50%><font color=#FF0000>附件名称:</font><a href='#{url}' target=_blank>#{fname}</a></td>
          <td width=50%><font color=#FF0000>本站如有密码，请使用下面的解压密码</font></td>
          </tr>
          <tr bgcolor=#FBFDFF> 
          <td ><font color=#FF0000>附件大小:</font>#{size} M</td>
          <td ><font color=#FF0000>www.jxsxjd.cn</font></td>
          </tr>
          </table>
          "
    end
  end
end
$wz_config = { ID: proc{|d| d['ID']},#
          SCHOOLID: proc{|d| '28'},#
          WEBID: proc{|d| '12362'},#
          TYPENAME: proc{|d| ''},#
          LMID: proc{|d| Qypz.get_lmid(d['LMID'])},#
          TITLE: proc{|d| d['TITLE'][0, 100]},#
          PUBLISHERNAME: proc{|d| d['PUBLISHERNAME']},#
          AUTHOR: proc{|d| d['AUTHOR']},#
          AUTHORDEPART: proc{|d| ''},#
          PUBLISHDATE: proc{|d, c| c.int_to_datetime(d['PUBLISHDATE'])},#
          CONTENT: proc{|d| Qypz.ew_change(d['CONTENT'])},#
          URL: proc{|d| ''},#
          IMAGEURL: proc{|d| d['IMAGEURL']},#
          ATTACHMENTNAME: proc{|d| ''},#
          ATTACHMENT: proc{|d| ''},#
          CHICKNUB: proc{|d| d['CHICKNUB']},#
          AUDITSTATU: proc{|d| '1'},#
          AUDITOR: proc{|d| 'admin'},#
          AUDITORNAME: proc{|d| 'admin'},#
          AUDITTIME: proc{|d, c| c.int_to_datetime(d['AUDITTIME'])},#
          REMARK: proc{|d| ''},#
          SUMMARY: proc{|d| ''},#
          DISPLAYTYPE: proc{|d| '0'},#
          OPENFLAG: proc{|d| '1'},#
          LLQX: proc{|d| '0'},#
          INDEXSHOW: proc{|d| '0'},#
          SFZD: proc{|d| '1'},#
          ZDYXJ: proc{|d| '0'},#
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
        