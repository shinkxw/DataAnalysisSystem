using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.Entity;
using System.Collections;
using HanRuEdu.LDAL;
using System.Text;
using System.Data.Entity.Validation;
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class JZGJBSJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP> model = db_zxjz.VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.ID.Contains(searchkey)).ToList();
            }

            if (!String.IsNullOrEmpty(sort))
            {
                if (order.Equals("desc"))
                {
                    model = model.OrderBy(e => GetPropertyValue(e, sort)).ToList();
                }
                else
                {
                    model = model.OrderByDescending(e => GetPropertyValue(e, sort)).ToList();
                }
            }
            return "{\"total\":" + model.Count + ",\"rows\":" + HanRuEdu.Utils.JsonHelp.JsonSerialize(model.Skip(page * rows - rows).Take(rows).ToList()) + "}";
        }

        public void AddJzgjbsj(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            jzgjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgjbsj(jzgjbsj);
        }

        public void UpdJzgjbsj(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            //设置默认值
            if (jzgjbsj.ID == 0) jzgjbsj.ID = 0;//编号
            if (jzgjbsj.SCHOOLID == 0) jzgjbsj.SCHOOLID = 0;//学校名学校ID
            if (string.IsNullOrEmpty(jzgjbsj.GH)) jzgjbsj.GH = "";//工号工号 编号：JCJG010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
            if (string.IsNullOrEmpty(jzgjbsj.XM)) jzgjbsj.XM = "";//姓名姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
            if (string.IsNullOrEmpty(jzgjbsj.YWXM)) jzgjbsj.YWXM = "";//英文姓名英文姓名 编号：JCTB020102 引用自JCTB020102 YWXM 英文姓名 C 60 NULL NULL 例：ChristopherFrancisPatten NULL
            if (string.IsNullOrEmpty(jzgjbsj.XMPY)) jzgjbsj.XMPY = "";//姓名拼音姓名拼音 编号：JCTB020103 引用自JCTB020103 XMPY 姓名拼音 C 60 NULL NULL 例：ZHANGZhenhua， NULL
            if (string.IsNullOrEmpty(jzgjbsj.CYM)) jzgjbsj.CYM = "";//曾用名曾用名 编号：JCTB020104 引用自JCTB020104 CYM 曾用名 C 36 NULL NULL 指曾经正式使用过的姓名 NULL
            if (string.IsNullOrEmpty(jzgjbsj.XBM)) jzgjbsj.XBM = "";//性别码性别码 编号：JCTB020105 引用自JCTB020105 XBM 性别码 C 1 NULL GB/T2261.1 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.CSRQ)) jzgjbsj.CSRQ = "";//出生日期出生日期 编号：JCTB020106 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
            if (string.IsNullOrEmpty(jzgjbsj.CSDM)) jzgjbsj.CSDM = "";//出生地码出生地码 编号：JCTB020107 引用自JCTB020107 CSDM 出生地码 C 6 NULL GB/T2260 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.JG)) jzgjbsj.JG = "";//籍贯籍贯 编号：JCTB020108 引用自JCTB020108 JG 籍贯 C 20 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.MZM)) jzgjbsj.MZM = "";//民族码民族码 编号：JCTB020109 引用自JCTB020109 MZM 民族码 C 2 NULL GB/T3304 取用2位数字代码，如：01汉族，02蒙古族 NULL
            if (string.IsNullOrEmpty(jzgjbsj.GJDQM)) jzgjbsj.GJDQM = "";//国籍/地区码国籍/地区码 编号：JCTB020110 引用自JCTB020110 GJDQM 国籍/地区码 C 3 NULL GB/T2659 采用三字母代码，如：CHN中国，USA美国 NULL
            if (string.IsNullOrEmpty(jzgjbsj.SFZJLXM)) jzgjbsj.SFZJLXM = "";//身份证件类型码身份证件类型码 编号：JCTB020111 引用自JCTB020111 SFZJLXM 身份证件类型码 C 1 NULL JY/T1001SFZJLX身份证件类型代码 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.SFZJH)) jzgjbsj.SFZJH = "";//身份证件号身份证件号 编号：JCTB020112 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
            if (string.IsNullOrEmpty(jzgjbsj.HYZKM)) jzgjbsj.HYZKM = "";//婚姻状况码婚姻状况码 编号：JCTB020113 引用自JCTB020113 HYZKM 婚姻状况码 C 2 NULL GB/T2261.2 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.GATQWM)) jzgjbsj.GATQWM = "";//港澳台侨外码港澳台侨外码 编号：JCTB020114 引用自JCTB020114 GATQWM 港澳台侨外码 C 2 NULL JY/T1001GATQW港澳台侨外代码 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.ZZMMM)) jzgjbsj.ZZMMM = "";//政治面貌码政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
            if (string.IsNullOrEmpty(jzgjbsj.JKZKM)) jzgjbsj.JKZKM = "";//健康状况码健康状况码 编号：JCTB020116 引用自JCTB020116 JKZKM 健康状况码 C 1 NULL GB/T2261.3 采用1位数字代码 NULL
            if (string.IsNullOrEmpty(jzgjbsj.XYZJM)) jzgjbsj.XYZJM = "";//信仰宗教码信仰宗教码 编号：JCTB020117 引用自JCTB020117 XYZJM 信仰宗教码 C 2 NULL GA214.12 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.XXM)) jzgjbsj.XXM = "";//血型码血型码 编号：JCTB020118 引用自JCTB020118 XXM 血型码 C 1 NULL JY/T1001XX血型代码 NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.ZP)) jzgjbsj.ZP = "";//照片照片 编号：JCTB020119 引用自JCTB020119 ZP 照片 B NULL NULL NULL 近期正面免冠证件照片 NULL
            if (string.IsNullOrEmpty(jzgjbsj.SFZJYXQ)) jzgjbsj.SFZJYXQ = "";//身份证件有效期身份证件有效期 编号：JCTB020122 引用自JCTB020122 SFDSZN 是否独生子女 C 1 NULL JY/T1001SFBZ是否标志代码 1是独生子女0不是独生子女 NULL
            if (string.IsNullOrEmpty(jzgjbsj.JGH)) jzgjbsj.JGH = "";//机构号机构号 编号：ZXJZ010101 解释/举例：本人所属机构号 引用自ZXXX030001 BJRYCH 班级荣誉称号 C 40 O NULL 班级获得的荣誉称号 NULL
            if (string.IsNullOrEmpty(jzgjbsj.JTZZ)) jzgjbsj.JTZZ = "";//家庭住址家庭住址 编号：ZXJZ010102 解释/举例：指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）的详细地址 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
            if (string.IsNullOrEmpty(jzgjbsj.XZZ)) jzgjbsj.XZZ = "";//现住址现住址 编号：ZXJZ010103 解释/举例：指本人当前的常住地址 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
            if (string.IsNullOrEmpty(jzgjbsj.HKSZD)) jzgjbsj.HKSZD = "";//户口所在地户口所在地 编号：ZXJZ010104 解释/举例：指户口所在地址，包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）详细地址 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
            if (string.IsNullOrEmpty(jzgjbsj.HKXZM)) jzgjbsj.HKXZM = "";//户口性质码户口性质码 编号：ZXJZ010105 值空间：GA324.1 解释/举例：指公安户籍部门确认的农业户口或非农业户口 
            if (string.IsNullOrEmpty(jzgjbsj.XLM)) jzgjbsj.XLM = "";//学历码学历码 编号：ZXJZ010106 值空间：参见GB/T4658 解释/举例：指最高学历 
            if (string.IsNullOrEmpty(jzgjbsj.GZNY)) jzgjbsj.GZNY = "";//参加工作年月参加工作年月 编号：ZXJZ010107 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
            if (string.IsNullOrEmpty(jzgjbsj.LXNY)) jzgjbsj.LXNY = "";//来校年月来校年月 编号：ZXJZ010108 解释/举例：来校工作的实际报到年月，以人事部门记载为准 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
            if (string.IsNullOrEmpty(jzgjbsj.CJNY)) jzgjbsj.CJNY = "";//从教年月从教年月 编号：ZXJZ010109 解释/举例：指本人开始从事教育工作的年月 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
            if (string.IsNullOrEmpty(jzgjbsj.BZLBM)) jzgjbsj.BZLBM = "";//编制类别码编制类别码 编号：ZXJZ010110 值空间：JY/T1001ZXXBZLB中小学编制类别代码 
            if (string.IsNullOrEmpty(jzgjbsj.DABH)) jzgjbsj.DABH = "";//档案编号档案编号 编号：ZXJZ010111 解释/举例：存档案部门为本人档案确定的管理编号 
            if (string.IsNullOrEmpty(jzgjbsj.DAWB)) jzgjbsj.DAWB = "";//档案文本档案文本 编号：ZXJZ010112 解释/举例：档案的具体内容 
            if (string.IsNullOrEmpty(jzgjbsj.TXDZ)) jzgjbsj.TXDZ = "";//通信地址通信地址 编号：ZXJZ010113 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
            if (string.IsNullOrEmpty(jzgjbsj.LXDH)) jzgjbsj.LXDH = "";//联系电话联系电话 编号：ZXJZ010114 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
            if (string.IsNullOrEmpty(jzgjbsj.YZBM)) jzgjbsj.YZBM = "";//邮政编码邮政编码 编号：ZXJZ010115 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzgjbsj.DZXX)) jzgjbsj.DZXX = "";//电子信箱电子信箱 编号：ZXJZ010116 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
            if (string.IsNullOrEmpty(jzgjbsj.ZYDZ)) jzgjbsj.ZYDZ = "";//主页地址主页地址 编号：ZXJZ010117 引用自JCTB010107 WLDZ 网络地址 C 60 NULL NULL 如主页、博客、微博网址 NULL
            if (string.IsNullOrEmpty(jzgjbsj.TC)) jzgjbsj.TC = "";//特长特长 编号：ZXJZ010118 解释/举例：指本人在某一方面的特殊能力或技能 
            if (string.IsNullOrEmpty(jzgjbsj.GWZYM)) jzgjbsj.GWZYM = "";//岗位职业码岗位职业码 编号：ZXJZ010119 值空间：JY/T1001GWZY岗位职业代码 
            if (string.IsNullOrEmpty(jzgjbsj.ZYRKXD)) jzgjbsj.ZYRKXD = "";//主要任课学段主要任课学段 编号：ZXJZ010120 值空间：JY/T1001RKXD任课学段代码 
            EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj_model = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.FirstOrDefault(e => e.ID == jzgjbsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgjbsj_model != null)
            {
                jzgjbsj_model.ID = jzgjbsj.ID;//编号
                jzgjbsj_model.SCHOOLID = jzgjbsj.SCHOOLID;//学校名学校ID
                jzgjbsj_model.GH = jzgjbsj.GH;//工号工号 编号：JCJG010101 引用自JCTB020120 RYH 人员号 C 20 NULL NULL 学号或工号 NULL
                jzgjbsj_model.XM = jzgjbsj.XM;//姓名姓名 编号：JCTB020101 引用自JCTB020101 XM 姓名 C 36 NULL NULL 例：张振华；买买提·阿不都热依木 NULL
                jzgjbsj_model.YWXM = jzgjbsj.YWXM;//英文姓名英文姓名 编号：JCTB020102 引用自JCTB020102 YWXM 英文姓名 C 60 NULL NULL 例：ChristopherFrancisPatten NULL
                jzgjbsj_model.XMPY = jzgjbsj.XMPY;//姓名拼音姓名拼音 编号：JCTB020103 引用自JCTB020103 XMPY 姓名拼音 C 60 NULL NULL 例：ZHANGZhenhua， NULL
                jzgjbsj_model.CYM = jzgjbsj.CYM;//曾用名曾用名 编号：JCTB020104 引用自JCTB020104 CYM 曾用名 C 36 NULL NULL 指曾经正式使用过的姓名 NULL
                jzgjbsj_model.XBM = jzgjbsj.XBM;//性别码性别码 编号：JCTB020105 引用自JCTB020105 XBM 性别码 C 1 NULL GB/T2261.1 NULL NULL
                jzgjbsj_model.CSRQ = jzgjbsj.CSRQ;//出生日期出生日期 编号：JCTB020106 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
                jzgjbsj_model.CSDM = jzgjbsj.CSDM;//出生地码出生地码 编号：JCTB020107 引用自JCTB020107 CSDM 出生地码 C 6 NULL GB/T2260 NULL NULL
                jzgjbsj_model.JG = jzgjbsj.JG;//籍贯籍贯 编号：JCTB020108 引用自JCTB020108 JG 籍贯 C 20 NULL NULL NULL NULL
                jzgjbsj_model.MZM = jzgjbsj.MZM;//民族码民族码 编号：JCTB020109 引用自JCTB020109 MZM 民族码 C 2 NULL GB/T3304 取用2位数字代码，如：01汉族，02蒙古族 NULL
                jzgjbsj_model.GJDQM = jzgjbsj.GJDQM;//国籍/地区码国籍/地区码 编号：JCTB020110 引用自JCTB020110 GJDQM 国籍/地区码 C 3 NULL GB/T2659 采用三字母代码，如：CHN中国，USA美国 NULL
                jzgjbsj_model.SFZJLXM = jzgjbsj.SFZJLXM;//身份证件类型码身份证件类型码 编号：JCTB020111 引用自JCTB020111 SFZJLXM 身份证件类型码 C 1 NULL JY/T1001SFZJLX身份证件类型代码 NULL NULL
                jzgjbsj_model.SFZJH = jzgjbsj.SFZJH;//身份证件号身份证件号 编号：JCTB020112 引用自JCTB020112 SFZJH 身份证件号 C 20 NULL NULL 如：公民身份号码 NULL
                jzgjbsj_model.HYZKM = jzgjbsj.HYZKM;//婚姻状况码婚姻状况码 编号：JCTB020113 引用自JCTB020113 HYZKM 婚姻状况码 C 2 NULL GB/T2261.2 NULL NULL
                jzgjbsj_model.GATQWM = jzgjbsj.GATQWM;//港澳台侨外码港澳台侨外码 编号：JCTB020114 引用自JCTB020114 GATQWM 港澳台侨外码 C 2 NULL JY/T1001GATQW港澳台侨外代码 NULL NULL
                jzgjbsj_model.ZZMMM = jzgjbsj.ZZMMM;//政治面貌码政治面貌码 编号：JCTB020115 引用自JCTB020115 ZZMMM 政治面貌码 C 2 NULL GB/T4762 可采用简称，如：01中共党员，04民革会员 NULL
                jzgjbsj_model.JKZKM = jzgjbsj.JKZKM;//健康状况码健康状况码 编号：JCTB020116 引用自JCTB020116 JKZKM 健康状况码 C 1 NULL GB/T2261.3 采用1位数字代码 NULL
                jzgjbsj_model.XYZJM = jzgjbsj.XYZJM;//信仰宗教码信仰宗教码 编号：JCTB020117 引用自JCTB020117 XYZJM 信仰宗教码 C 2 NULL GA214.12 NULL NULL
                jzgjbsj_model.XXM = jzgjbsj.XXM;//血型码血型码 编号：JCTB020118 引用自JCTB020118 XXM 血型码 C 1 NULL JY/T1001XX血型代码 NULL NULL
                jzgjbsj_model.ZP = jzgjbsj.ZP;//照片照片 编号：JCTB020119 引用自JCTB020119 ZP 照片 B NULL NULL NULL 近期正面免冠证件照片 NULL
                jzgjbsj_model.SFZJYXQ = jzgjbsj.SFZJYXQ;//身份证件有效期身份证件有效期 编号：JCTB020122 引用自JCTB020122 SFDSZN 是否独生子女 C 1 NULL JY/T1001SFBZ是否标志代码 1是独生子女0不是独生子女 NULL
                jzgjbsj_model.JGH = jzgjbsj.JGH;//机构号机构号 编号：ZXJZ010101 解释/举例：本人所属机构号 引用自ZXXX030001 BJRYCH 班级荣誉称号 C 40 O NULL 班级获得的荣誉称号 NULL
                jzgjbsj_model.JTZZ = jzgjbsj.JTZZ;//家庭住址家庭住址 编号：ZXJZ010102 解释/举例：指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）的详细地址 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
                jzgjbsj_model.XZZ = jzgjbsj.XZZ;//现住址现住址 编号：ZXJZ010103 解释/举例：指本人当前的常住地址 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
                jzgjbsj_model.HKSZD = jzgjbsj.HKSZD;//户口所在地户口所在地 编号：ZXJZ010104 解释/举例：指户口所在地址，包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）详细地址 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
                jzgjbsj_model.HKXZM = jzgjbsj.HKXZM;//户口性质码户口性质码 编号：ZXJZ010105 值空间：GA324.1 解释/举例：指公安户籍部门确认的农业户口或非农业户口 
                jzgjbsj_model.XLM = jzgjbsj.XLM;//学历码学历码 编号：ZXJZ010106 值空间：参见GB/T4658 解释/举例：指最高学历 
                jzgjbsj_model.GZNY = jzgjbsj.GZNY;//参加工作年月参加工作年月 编号：ZXJZ010107 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
                jzgjbsj_model.LXNY = jzgjbsj.LXNY;//来校年月来校年月 编号：ZXJZ010108 解释/举例：来校工作的实际报到年月，以人事部门记载为准 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
                jzgjbsj_model.CJNY = jzgjbsj.CJNY;//从教年月从教年月 编号：ZXJZ010109 解释/举例：指本人开始从事教育工作的年月 引用自JCTB010202 NY 年月 C 6 NULL GB/T7408 格式：YYYYMM，如：200604表示2006年4月 NULL
                jzgjbsj_model.BZLBM = jzgjbsj.BZLBM;//编制类别码编制类别码 编号：ZXJZ010110 值空间：JY/T1001ZXXBZLB中小学编制类别代码 
                jzgjbsj_model.DABH = jzgjbsj.DABH;//档案编号档案编号 编号：ZXJZ010111 解释/举例：存档案部门为本人档案确定的管理编号 
                jzgjbsj_model.DAWB = jzgjbsj.DAWB;//档案文本档案文本 编号：ZXJZ010112 解释/举例：档案的具体内容 
                jzgjbsj_model.TXDZ = jzgjbsj.TXDZ;//通信地址通信地址 编号：ZXJZ010113 引用自JCTB010102 TXDZ 通信地址 C 180 NULL NULL 指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址 NULL
                jzgjbsj_model.LXDH = jzgjbsj.LXDH;//联系电话联系电话 编号：ZXJZ010114 引用自JCTB010103 DH 电话 C 30 NULL NULL 即电话号码 NULL
                jzgjbsj_model.YZBM = jzgjbsj.YZBM;//邮政编码邮政编码 编号：ZXJZ010115 引用自JCTB010101 YZBM 邮政编码 C 6 NULL NULL NULL NULL
                jzgjbsj_model.DZXX = jzgjbsj.DZXX;//电子信箱电子信箱 编号：ZXJZ010116 引用自JCTB010106 DZXX 电子信箱 C 40 NULL NULL 电子邮件地址 NULL
                jzgjbsj_model.ZYDZ = jzgjbsj.ZYDZ;//主页地址主页地址 编号：ZXJZ010117 引用自JCTB010107 WLDZ 网络地址 C 60 NULL NULL 如主页、博客、微博网址 NULL
                jzgjbsj_model.TC = jzgjbsj.TC;//特长特长 编号：ZXJZ010118 解释/举例：指本人在某一方面的特殊能力或技能 
                jzgjbsj_model.GWZYM = jzgjbsj.GWZYM;//岗位职业码岗位职业码 编号：ZXJZ010119 值空间：JY/T1001GWZY岗位职业代码 
                jzgjbsj_model.ZYRKXD = jzgjbsj.ZYRKXD;//主要任课学段主要任课学段 编号：ZXJZ010120 值空间：JY/T1001RKXD任课学段代码 
                db_zxjz.Entry(jzgjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Add(jzgjbsj);
            }
            db_zxjz.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJZ_01_01_JZGJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJZ_01_01_JZGJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj= db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Remove(jzgjbsj);
                db_zxjz.SaveChanges();
                return "删除成功！";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "删除出错！" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "删除出错！" + e.Message;
            }
        }*/

        public String Delete(String idLst)
        {
            try
            {
                int[] idlst = Utils.Utils.GetSafeIdsArr(idLst, LDALConstant.DefSpear);
                foreach (int id in idlst)
                {
                    EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Remove(jzgjbsj);
                    db_zxjz.SaveChanges();
                }
                return "删除成功！"
;            }
            catch (DbEntityValidationException dbEx)
            {
                return "删除出错！" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "删除出错！" + e.Message;
            }
        }

        private static int Max_JZGJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取教职工基本数据子类表最大ID
        public int GetMax_JZGJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGJBSJ_ID == 0)
                {
                    EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.FirstOrDefault();
                    if (jzgjbsj == null)
                    {
                        Max_JZGJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JZGJBSJ_ID = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGJBSJ_ID++;
                }
                maxId = Max_JZGJBSJ_ID;
            }
            return maxId;
        }

    }
}
