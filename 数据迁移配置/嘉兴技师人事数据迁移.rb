#!/usr/bin/env ruby -w
# encoding: GBK
par_arr = %w(ID	姓名 密码 性别 出生年月 职称 证件照	民族 政治面貌 身份证号码 
            参加工作时间 进入本单位时间 最高学历 学位 毕业学校 所学专业 
            现任教学科 教师资格种类 是否教师 专业技术资格 职务层次 职业资格 
            脱产下企业时段 参加国培时段 职业资格证书照 岗位级别 科室 系部 
            办公室 教研组 学历证书照片 学位证书照片)
J人事数据 = Struct.new('J人事数据', *par_arr)
$sid = '1'
$xb_hash = Hash[*%w(男 1 女 2)]
$mz_hash = Hash[*%w(汉族 01 蒙古族 02 土家族 15 畲族 22 回族 03 满族 11)]
$zzmm_hash = Hash[*%w(群众 13 中国共产党党员 01 中国共产主义青年团团员 03 中国民主同盟盟员 05 中国共产党预备党员 02 其他 12)]
class Qypz
  def self.img(str)
    if (str != nil && str != "" && str != '无')
      return '/ZZZZ_RSXT/HrSchoolFiles/jxjsjgxx/' + str
    else
      return ''
    end
  end
  def self.gzjy(脱产下企业时段, 参加国培时段)
    str = ''
    str << "脱产下企业时段: #{脱产下企业时段}   " if (脱产下企业时段 != '' && 脱产下企业时段 != '无')
    str << "参加国培时段: #{参加国培时段}" if (参加国培时段 != '' && 参加国培时段 != '无')
    return str.strip
  end
  def self.yxzy(毕业学校, 所学专业)
    if (毕业学校 != '' && 所学专业 != '')
      return "#{毕业学校}-#{所学专业}"
    elsif (毕业学校 != '' || 所学专业 != '')
      return 毕业学校 + 所学专业
    else
      return ''
    end
  end
end
$jb_config = { ID:               proc{|d| d.ID.to_i},#编号
               SCHOOLID:         proc{|d| $sid},#学校ID
               GH:               proc{|d| d.ID.to_i},#工号
               XM:               proc{|d| d.姓名},#姓名
               YWXM:             proc{|d| ''},#英文姓名
               XMPY:             proc{|d| ''},#姓名拼音
               CYM:              proc{|d| ''},#曾用名
               SFZJLXM:          proc{|d| '1'},#身份证件类型码
               SFZJH:            proc{|d| d.身份证号码},#身份证件号
               CSRQ:             proc{|d, c| c.time_to_8(d.出生年月)},#出生日期
               XBM:              proc{|d| $xb_hash[d.性别]},#性别码
               MZM:              proc{|d| $mz_hash[d.民族]},#民族码
               XXM:              proc{|d| ''},#血型码
               JKZKM:            proc{|d| ''},#健康状况码
               HYZTM:            proc{|d| ''},#婚姻状态码
               ZZMMM:            proc{|d| $zzmm_hash[d.政治面貌]},#政治面貌码
               GATQWM:           proc{|d| ''},#港澳台侨外码
               JG:               proc{|d| ''},#籍贯
               GJDQM:            proc{|d| '156'},#国籍/地区码
               CSDXZQHM:         proc{|d| ''},#出生地行政区划码
               XYZJM:            proc{|d| ''},#信仰宗教码
               JZGHKSZDXZQHM:    proc{|d| ''},#教职工户口所在地行政区划码
               HKLBM:            proc{|d| ''},#户口类别码
               DQZZ:             proc{|d| ''},#当前住址
               DQZZYZBM:         proc{|d| ''},#当前住址邮政编码
               CJGZNY:           proc{|d, c| c.time_to_6(d.参加工作时间)},#参加工作年月
               CJNY:             proc{|d| ''},#从教年月
               LXNY:             proc{|d, c| c.time_to_6(d.进入本单位时间)},#来校年月
               BZLBM:            proc{|d| d.是否教师 == '教师' ? '10' : '99'},#编制类别码
               JZGLBM:           proc{|d| ''},#教职工类别码
               GWLBM:            proc{|d| ''},#岗位类别码
               SFJZJS:           proc{|d| ''},#是否兼职教师
               SFSSXJS:          proc{|d| ''},#是否双师型教师
               ZP:               proc{|d| Qypz.img(d.证件照)},#照片(路径)
               DQZTM:            proc{|d| '11'},#当前状态码
               YDDH:             proc{|d| ''},#移动电话
               GDDH:             proc{|d| ''},#固定电话
               TXDZYZBM:         proc{|d| ''},#通信地址邮政编码
               TXDZ:             proc{|d| ''},#通信地址
               DZXX:             proc{|d| ''},#电子信箱
               WLDZ:             proc{|d| ''},#网络地址
               JSTXH:            proc{|d| ''},#即时通讯号
               JSKQJS:           proc{|d| '教师'},#教师考勤角色
               }
$kz_config = { JZGJBSJID:        proc{|d| d.ID.to_i},#教工基本信息ID
               SCHOOLID:         proc{|d| $sid},#学校ID
               JL:               proc{|d| ''},#教龄
               GL:               proc{|d| ''},#工龄
               GZJY:             proc{|d| Qypz.gzjy(d.脱产下企业时段, d.参加国培时段)},#工作经验
               LDJN:             proc{|d| ''},#劳动技能
               XXJL:             proc{|d| ''},#学习经历
               WJGLSJ:           proc{|d| ''},#未记工龄时间
               RDSJ:             proc{|d| ''},#入党（团）时间
               JRBDWSJ:          proc{|d| ''},#进入本单位时间
               XZZW:             proc{|d| ''},#行政职务
               ZYJSZG:           proc{|d| d.专业技术资格},#专业技术资格
               ZYJSZGHDSJ:       proc{|d| ''},#专业技术资格取得时间
               XL:               proc{|d| d.最高学历},#学历
               BYYXXJZY:         proc{|d| Qypz.yxzy(d.毕业学校, d.所学专业)},#毕业院校系及专业
               BYSJ:             proc{|d| ''},#毕业时间
               XW:               proc{|d| d.学位},#学位
               ZZJYXL:           proc{|d| ''},#在职教育学历
               ZZJYBYYXXJZY:      proc{|d| ''},#在职教育毕业院校系及专业
               ZZJYXW:           proc{|d| ''},#在职教育学位
               ZZJYBYSJ:         proc{|d| ''},#在职教育毕业时间
               PTHDJ:            proc{|d| ''},#普通话等级
               JSZGZZL:          proc{|d| d.教师资格种类},#教师资格证种类
               XPYGW:            proc{|d| ''},#现聘用岗位
               GWDJ:             proc{|d| d.岗位级别},#岗位等级
               ZWCC:             proc{|d| d.职务层次},#职务层次
               KS:               proc{|d| d.科室},#科室
               XB:               proc{|d| d.系部},#系部
               BGS:              proc{|d| d.办公室},#办公室
               JYZ:              proc{|d| d.教研组},#教研组
               XRJXK:            proc{|d| d.现任教学科},#现任教学科
               }
$nlzs_config = { JZGJBSJID:        proc{|d| d.ID.to_i},#教工基本信息ID
                 SCHOOLID:         proc{|d| $sid},#学校ID
                 BYZS:             proc{|d| ''},#毕业证书
                 XWZS:             proc{|d| Qypz.img(d.学位证书照片)},#学位证书
                 ZCZS:             proc{|d| ''},#职称证书
                 PTHZS:            proc{|d| ''},#普通话证书
                 JSZGZ:            proc{|d| ''},#教师资格证
                 JSJHGZ:           proc{|d| ''},#计算机合格证
                 JNZS:             proc{|d| ''},#技能证书
                 ZGXL:             proc{|d| Qypz.img(d.学历证书照片)},#最高学历
                 }
$zynl_config = { SCHOOLID:         proc{|d| $sid},#学校ID
                 JZGJBSJID:        proc{|d| d.ID.to_i},#教工基本信息ID
                 ZSMC:             proc{|d| d.职业资格 != '无' ? d.职业资格[0, 40] : ''},#证书名称
                 ZSBH:             proc{|d| ''},#证书编号
                 ZSBFDW:           proc{|d| ''},#证书颁发单位
                 ZSBFRQ:           proc{|d| ''},#证书颁发日期
                 ZSBZ:             proc{|d| Qypz.img(d.职业资格证书照)},#证书备注
                 SFSZYZGZS:        proc{|d| '3'},#是否是职业资格证书
                 JJ:               proc{|d| ''},#简介
                 ZSDJID:           proc{|d| ''},#证书等级ID
                 }

#~ load "数据迁移配置\\嘉兴技师人事数据迁移.rb"
#~ path = 'E:\经手项目\嘉兴技师\教师数据.xls'
#~ sheet_data = ExcelLoader.get_sheet_data(path, 'teacher')
#~ sheet_data.shift
#~ sj_arr = sheet_data.map{|data| J人事数据.new(*data)}
#~ #数据及格式化
#~ #[:性别, :民族, :政治面貌].each{|xm| p sj_arr.map(&xm).uniq}
#~ #数据转换
#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $jb_config)
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_01_JZGJBSJ')

#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $kz_config)
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_A01_JZGKZ')

#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $nlzs_config)
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_01_A02_JZGNLZS')

#~ out_hash_arr = DataMigrate.convert_data(sj_arr, $zynl_config)
#~ out_hash_arr = out_hash_arr.delete_if {|hash| hash[:ZSMC] == '' && hash[:ZSBZ] == ''}
#~ DataMigrate.export_text('insert_data', out_hash_arr, 'EDU_ZZJG_07_01_JZGZYNL')