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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class JZWJBSJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP> model = db_zzfc.VIEW_EDU_ZZFC_02_01_JZWJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.SCHOOLID.Contains(searchkey)).ToList();
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

        public void AddJzwjbsj(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            jzwjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzwjbsj(jzwjbsj);
        }

        public void UpdJzwjbsj(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            //设置默认值
            if (jzwjbsj.SCHOOLID == 0) jzwjbsj.SCHOOLID = 0;//学校名学校ID
            if (jzwjbsj.ID == 0) jzwjbsj.ID = 0;//建筑物ID
            if (string.IsNullOrEmpty(jzwjbsj.JZWH)) jzwjbsj.JZWH = "";//建筑物号学校自编
            if (string.IsNullOrEmpty(jzwjbsj.JZWMC)) jzwjbsj.JZWMC = "";//建筑物名称指建筑物的汉字名称
            if (string.IsNullOrEmpty(jzwjbsj.SYZKM)) jzwjbsj.SYZKM = "";//使用状况码引用自JCBX020204 SYZKM 使用状况码
            if (string.IsNullOrEmpty(jzwjbsj.FWCQ)) jzwjbsj.FWCQ = "";//房屋产权引用自JCBX020203 FWCQM 房屋产权码
            if (string.IsNullOrEmpty(jzwjbsj.XQH)) jzwjbsj.XQH = "";//校区号学校自编
            if (string.IsNullOrEmpty(jzwjbsj.JZWFLM)) jzwjbsj.JZWFLM = "";//建筑物分类码
            if (string.IsNullOrEmpty(jzwjbsj.JZWJGM)) jzwjbsj.JZWJGM = "";//建筑物结构码
            if (jzwjbsj.JZWCS == 0) jzwjbsj.JZWCS = 0;//建筑物层数单位：层 NULL
            if (string.IsNullOrEmpty(jzwjbsj.JCNY)) jzwjbsj.JCNY = "";//建成年月格式：YYYYMM，如：200604表示2006年4月 NULL
            if (jzwjbsj.JZWTZZE == 0) jzwjbsj.JZWTZZE = 0;//建筑物投资总额单位：元
            if (string.IsNullOrEmpty(jzwjbsj.JFLYM)) jzwjbsj.JFLYM = "";//经费来源码引用自JCBX020210 JFLYM 经费来源码
            if (jzwjbsj.ZJZMJ == 0) jzwjbsj.ZJZMJ = 0;//总建筑面积单位：平方米 NULL
            if (jzwjbsj.ZSYMJ == 0) jzwjbsj.ZSYMJ = 0;//总使用面积单位：平方米 NULL
            if (string.IsNullOrEmpty(jzwjbsj.KZSFLDM)) jzwjbsj.KZSFLDM = "";//抗震设防烈度码值空间：JY/T1001KZSFLD抗震设防烈度代码 
            if (string.IsNullOrEmpty(jzwjbsj.KZSFBZM)) jzwjbsj.KZSFBZM = "";//抗震设防标准码引用自JCBX020214 KZSFBZM 抗震设防标准码
            if (string.IsNullOrEmpty(jzwjbsj.JZWDZ)) jzwjbsj.JZWDZ = "";//建筑物地址指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址
            if (string.IsNullOrEmpty(jzwjbsj.JZWZKM)) jzwjbsj.JZWZKM = "";//建筑物状况码引用自JCBX020216 JZWZKM 建筑物状况码
            if (string.IsNullOrEmpty(jzwjbsj.JZWTP)) jzwjbsj.JZWTP = "";//建筑物图片指建筑物的照片
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMT)) jzwjbsj.JZWPMT = "";//建筑物平面图指建筑物的建筑平面图
            if (string.IsNullOrEmpty(jzwjbsj.XXDWCCM)) jzwjbsj.XXDWCCM = "";//学校单位层次码值空间：JY/T1001XXDWCC学校单位层次代码 
            if (string.IsNullOrEmpty(jzwjbsj.JZWWZZK)) jzwjbsj.JZWWZZK = "";//建筑物位置状况值空间：JY/T1001SFBZ是否标志代码 解释/举例：1校内0校外 
            if (string.IsNullOrEmpty(jzwjbsj.GHSPWH)) jzwjbsj.GHSPWH = "";//规划审批文号
            if (string.IsNullOrEmpty(jzwjbsj.ZHFZNL)) jzwjbsj.ZHFZNL = "";//综合防灾能力
            if (jzwjbsj.GHSYNX == 0) jzwjbsj.GHSYNX = 0;//规划使用年限
            if (string.IsNullOrEmpty(jzwjbsj.SFYYJBXCS)) jzwjbsj.SFYYJBXCS = "";//是否有预警避险措施值空间：JY/T1001SFBZ是否标志代码 
            if (string.IsNullOrEmpty(jzwjbsj.SFKYYYJBNCS)) jzwjbsj.SFKYYYJBNCS = "";//是否可用于应急避难场所值空间：JY/T1001SFBZ是否标志代码 
            if (string.IsNullOrEmpty(jzwjbsj.CQZH)) jzwjbsj.CQZH = "";//产权证号
            if (string.IsNullOrEmpty(jzwjbsj.JZWYTM)) jzwjbsj.JZWYTM = "";//建筑物用途码值空间：JY/T1001JZWYT建筑物用途代码 
            if (jzwjbsj.JZWZGD == 0) jzwjbsj.JZWZGD = 0;//建筑物总高度解释/举例：单位：米 
            if (string.IsNullOrEmpty(jzwjbsj.WFJDBM)) jzwjbsj.WFJDBM = "";//危房鉴定部门引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzwjbsj.WFJDWH)) jzwjbsj.WFJDWH = "";//危房鉴定文号
            if (string.IsNullOrEmpty(jzwjbsj.WFJDRQ)) jzwjbsj.WFJDRQ = "";//危房鉴定日期格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
            if (string.IsNullOrEmpty(jzwjbsj.GNFSM)) jzwjbsj.GNFSM = "";//供暖方式码值空间：JY/T1001GNFS供暖方式代码 
            if (string.IsNullOrEmpty(jzwjbsj.JZWJCXSM)) jzwjbsj.JZWJCXSM = "";//建筑物基础形式码值空间：JY/T1001JZWJCXS建筑物基础形式代码 
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMXSM)) jzwjbsj.JZWPMXSM = "";//建筑物平面形式码值空间：JY/T1001JZWPMXS建筑物平面形式代码 
            if (string.IsNullOrEmpty(jzwjbsj.JZWLBXSM)) jzwjbsj.JZWLBXSM = "";//建筑物楼板形式码值空间：JY/T1001JZWLBXS建筑物楼板形式代码 
            if (string.IsNullOrEmpty(jzwjbsj.SFYGZZ)) jzwjbsj.SFYGZZ = "";//是否有构造柱值空间：JY/T1001SFBZ是否标志代码 
            if (string.IsNullOrEmpty(jzwjbsj.QL)) jzwjbsj.QL = "";//圈梁值空间：JY/T1001SFBZ是否标志代码 
            if (string.IsNullOrEmpty(jzwjbsj.ZJAQGZWCRQ)) jzwjbsj.ZJAQGZWCRQ = "";//最近安全改造完成日期格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
            if (jzwjbsj.ZJAQGZHYJSYNX == 0) jzwjbsj.ZJAQGZHYJSYNX = 0;//最近安全改造后预计使用年限单位：年 
            if (string.IsNullOrEmpty(jzwjbsj.ZXLXM)) jzwjbsj.ZXLXM = "";//专项类型解释/举例：1中央专项项目0非中央专项项目 
            if (string.IsNullOrEmpty(jzwjbsj.ZYZXTZBZMCM)) jzwjbsj.ZYZXTZBZMCM = "";//中央专项投资补助名称码值空间：JY/T1001ZYZXTZBZMC中央专项投资补助名称代码 
            if (string.IsNullOrEmpty(jzwjbsj.WWJZDJM)) jzwjbsj.WWJZDJM = "";//文物建筑等级码值空间：JY/T1001WWJZDJ文物建筑等级代码 
            if (jzwjbsj.JXJFZYF == 0) jzwjbsj.JXJFZYF = 0;//教学及辅助用房解释/举例：该数据项为教室、实验室、图书室、微机室、语音室、体育活动室及其他教辅用房的总和，单位：平方米 
            if (jzwjbsj.QZJS == 0) jzwjbsj.QZJS = 0;//其中教室解释/举例：单位：平方米 
            if (jzwjbsj.QZSYS == 0) jzwjbsj.QZSYS = 0;//其中实验室解释/举例：单位：平方米 
            if (jzwjbsj.QZTSS == 0) jzwjbsj.QZTSS = 0;//其中图书室解释/举例：单位：平方米 
            if (jzwjbsj.QZWJS == 0) jzwjbsj.QZWJS = 0;//其中微机室解释/举例：单位：平方米 
            if (jzwjbsj.QZYYS == 0) jzwjbsj.QZYYS = 0;//其中语音室解释/举例：单位：平方米 
            if (jzwjbsj.QZTYHDS == 0) jzwjbsj.QZTYHDS = 0;//其中体育活动室解释/举例：单位：平方米 
            if (jzwjbsj.QZQTJFYF == 0) jzwjbsj.QZQTJFYF = 0;//其中其他教辅用房解释/举例：单位：平方米 
            if (jzwjbsj.SHYF == 0) jzwjbsj.SHYF = 0;//生活用房解释/举例：该数据项为学生宿舍、食堂、厕所、锅炉房（开水房）、浴室、教工宿舍及其他生活用房的总和，单位：平方米 
            if (jzwjbsj.QZXSSS == 0) jzwjbsj.QZXSSS = 0;//其中学生宿舍解释/举例：单位：平方米 
            if (jzwjbsj.QZST == 0) jzwjbsj.QZST = 0;//其中食堂单位：平方米 
            if (jzwjbsj.QZCS == 0) jzwjbsj.QZCS = 0;//其中厕所单位：平方米 
            if (jzwjbsj.QZGLF == 0) jzwjbsj.QZGLF = 0;//其中锅炉房(开水房)解释/举例：单位：平方米 
            if (jzwjbsj.QZYS == 0) jzwjbsj.QZYS = 0;//其中浴室解释/举例：单位：平方米 
            if (jzwjbsj.QZJGSS == 0) jzwjbsj.QZJGSS = 0;//其中教工宿舍解释/举例：单位：平方米 
            if (jzwjbsj.QZQTSHYF == 0) jzwjbsj.QZQTSHYF = 0;//其中其他生活用房解释/举例：单位：平方米 
            if (jzwjbsj.XZBGYF == 0) jzwjbsj.XZBGYF = 0;//行政办公用房解释/举例：该数据项为教职工办公室、卫生保健室及其他行政办公用房的总和，单位：平方米 
            if (jzwjbsj.QZJSBGS == 0) jzwjbsj.QZJSBGS = 0;//其中教职工办公室解释/举例：单位：平方米 
            if (jzwjbsj.QZWSBJS == 0) jzwjbsj.QZWSBJS = 0;//其中卫生保健室解释/举例：单位：平方米 
            if (jzwjbsj.QZQTXZBGYF == 0) jzwjbsj.QZQTXZBGYF = 0;//其中其他行政办公用房解释/举例：单位：平方米 
            if (jzwjbsj.QTYF == 0) jzwjbsj.QTYF = 0;//其他用房解释/举例：非教学及辅助用房、生活用房、行政办公用房的用房总和，单位：平方米 
            EDU_ZZFC_02_01_JZWJBSJ jzwjbsj_model = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.FirstOrDefault(e => e.SCHOOLID == jzwjbsj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzwjbsj_model != null)
            {
                jzwjbsj_model.SCHOOLID = jzwjbsj.SCHOOLID;//学校名学校ID
                jzwjbsj_model.ID = jzwjbsj.ID;//建筑物ID
                jzwjbsj_model.JZWH = jzwjbsj.JZWH;//建筑物号学校自编
                jzwjbsj_model.JZWMC = jzwjbsj.JZWMC;//建筑物名称指建筑物的汉字名称
                jzwjbsj_model.SYZKM = jzwjbsj.SYZKM;//使用状况码引用自JCBX020204 SYZKM 使用状况码
                jzwjbsj_model.FWCQ = jzwjbsj.FWCQ;//房屋产权引用自JCBX020203 FWCQM 房屋产权码
                jzwjbsj_model.XQH = jzwjbsj.XQH;//校区号学校自编
                jzwjbsj_model.JZWFLM = jzwjbsj.JZWFLM;//建筑物分类码
                jzwjbsj_model.JZWJGM = jzwjbsj.JZWJGM;//建筑物结构码
                jzwjbsj_model.JZWCS = jzwjbsj.JZWCS;//建筑物层数单位：层 NULL
                jzwjbsj_model.JCNY = jzwjbsj.JCNY;//建成年月格式：YYYYMM，如：200604表示2006年4月 NULL
                jzwjbsj_model.JZWTZZE = jzwjbsj.JZWTZZE;//建筑物投资总额单位：元
                jzwjbsj_model.JFLYM = jzwjbsj.JFLYM;//经费来源码引用自JCBX020210 JFLYM 经费来源码
                jzwjbsj_model.ZJZMJ = jzwjbsj.ZJZMJ;//总建筑面积单位：平方米 NULL
                jzwjbsj_model.ZSYMJ = jzwjbsj.ZSYMJ;//总使用面积单位：平方米 NULL
                jzwjbsj_model.KZSFLDM = jzwjbsj.KZSFLDM;//抗震设防烈度码值空间：JY/T1001KZSFLD抗震设防烈度代码 
                jzwjbsj_model.KZSFBZM = jzwjbsj.KZSFBZM;//抗震设防标准码引用自JCBX020214 KZSFBZM 抗震设防标准码
                jzwjbsj_model.JZWDZ = jzwjbsj.JZWDZ;//建筑物地址指包括省（自治区、直辖市）/地（市、州）/县（区、旗）/乡（镇）/街（村）/门牌号的详细地址
                jzwjbsj_model.JZWZKM = jzwjbsj.JZWZKM;//建筑物状况码引用自JCBX020216 JZWZKM 建筑物状况码
                jzwjbsj_model.JZWTP = jzwjbsj.JZWTP;//建筑物图片指建筑物的照片
                jzwjbsj_model.JZWPMT = jzwjbsj.JZWPMT;//建筑物平面图指建筑物的建筑平面图
                jzwjbsj_model.XXDWCCM = jzwjbsj.XXDWCCM;//学校单位层次码值空间：JY/T1001XXDWCC学校单位层次代码 
                jzwjbsj_model.JZWWZZK = jzwjbsj.JZWWZZK;//建筑物位置状况值空间：JY/T1001SFBZ是否标志代码 解释/举例：1校内0校外 
                jzwjbsj_model.GHSPWH = jzwjbsj.GHSPWH;//规划审批文号
                jzwjbsj_model.ZHFZNL = jzwjbsj.ZHFZNL;//综合防灾能力
                jzwjbsj_model.GHSYNX = jzwjbsj.GHSYNX;//规划使用年限
                jzwjbsj_model.SFYYJBXCS = jzwjbsj.SFYYJBXCS;//是否有预警避险措施值空间：JY/T1001SFBZ是否标志代码 
                jzwjbsj_model.SFKYYYJBNCS = jzwjbsj.SFKYYYJBNCS;//是否可用于应急避难场所值空间：JY/T1001SFBZ是否标志代码 
                jzwjbsj_model.CQZH = jzwjbsj.CQZH;//产权证号
                jzwjbsj_model.JZWYTM = jzwjbsj.JZWYTM;//建筑物用途码值空间：JY/T1001JZWYT建筑物用途代码 
                jzwjbsj_model.JZWZGD = jzwjbsj.JZWZGD;//建筑物总高度解释/举例：单位：米 
                jzwjbsj_model.WFJDBM = jzwjbsj.WFJDBM;//危房鉴定部门引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
                jzwjbsj_model.WFJDWH = jzwjbsj.WFJDWH;//危房鉴定文号
                jzwjbsj_model.WFJDRQ = jzwjbsj.WFJDRQ;//危房鉴定日期格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
                jzwjbsj_model.GNFSM = jzwjbsj.GNFSM;//供暖方式码值空间：JY/T1001GNFS供暖方式代码 
                jzwjbsj_model.JZWJCXSM = jzwjbsj.JZWJCXSM;//建筑物基础形式码值空间：JY/T1001JZWJCXS建筑物基础形式代码 
                jzwjbsj_model.JZWPMXSM = jzwjbsj.JZWPMXSM;//建筑物平面形式码值空间：JY/T1001JZWPMXS建筑物平面形式代码 
                jzwjbsj_model.JZWLBXSM = jzwjbsj.JZWLBXSM;//建筑物楼板形式码值空间：JY/T1001JZWLBXS建筑物楼板形式代码 
                jzwjbsj_model.SFYGZZ = jzwjbsj.SFYGZZ;//是否有构造柱值空间：JY/T1001SFBZ是否标志代码 
                jzwjbsj_model.QL = jzwjbsj.QL;//圈梁值空间：JY/T1001SFBZ是否标志代码 
                jzwjbsj_model.ZJAQGZWCRQ = jzwjbsj.ZJAQGZWCRQ;//最近安全改造完成日期格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
                jzwjbsj_model.ZJAQGZHYJSYNX = jzwjbsj.ZJAQGZHYJSYNX;//最近安全改造后预计使用年限单位：年 
                jzwjbsj_model.ZXLXM = jzwjbsj.ZXLXM;//专项类型解释/举例：1中央专项项目0非中央专项项目 
                jzwjbsj_model.ZYZXTZBZMCM = jzwjbsj.ZYZXTZBZMCM;//中央专项投资补助名称码值空间：JY/T1001ZYZXTZBZMC中央专项投资补助名称代码 
                jzwjbsj_model.WWJZDJM = jzwjbsj.WWJZDJM;//文物建筑等级码值空间：JY/T1001WWJZDJ文物建筑等级代码 
                jzwjbsj_model.JXJFZYF = jzwjbsj.JXJFZYF;//教学及辅助用房解释/举例：该数据项为教室、实验室、图书室、微机室、语音室、体育活动室及其他教辅用房的总和，单位：平方米 
                jzwjbsj_model.QZJS = jzwjbsj.QZJS;//其中教室解释/举例：单位：平方米 
                jzwjbsj_model.QZSYS = jzwjbsj.QZSYS;//其中实验室解释/举例：单位：平方米 
                jzwjbsj_model.QZTSS = jzwjbsj.QZTSS;//其中图书室解释/举例：单位：平方米 
                jzwjbsj_model.QZWJS = jzwjbsj.QZWJS;//其中微机室解释/举例：单位：平方米 
                jzwjbsj_model.QZYYS = jzwjbsj.QZYYS;//其中语音室解释/举例：单位：平方米 
                jzwjbsj_model.QZTYHDS = jzwjbsj.QZTYHDS;//其中体育活动室解释/举例：单位：平方米 
                jzwjbsj_model.QZQTJFYF = jzwjbsj.QZQTJFYF;//其中其他教辅用房解释/举例：单位：平方米 
                jzwjbsj_model.SHYF = jzwjbsj.SHYF;//生活用房解释/举例：该数据项为学生宿舍、食堂、厕所、锅炉房（开水房）、浴室、教工宿舍及其他生活用房的总和，单位：平方米 
                jzwjbsj_model.QZXSSS = jzwjbsj.QZXSSS;//其中学生宿舍解释/举例：单位：平方米 
                jzwjbsj_model.QZST = jzwjbsj.QZST;//其中食堂单位：平方米 
                jzwjbsj_model.QZCS = jzwjbsj.QZCS;//其中厕所单位：平方米 
                jzwjbsj_model.QZGLF = jzwjbsj.QZGLF;//其中锅炉房(开水房)解释/举例：单位：平方米 
                jzwjbsj_model.QZYS = jzwjbsj.QZYS;//其中浴室解释/举例：单位：平方米 
                jzwjbsj_model.QZJGSS = jzwjbsj.QZJGSS;//其中教工宿舍解释/举例：单位：平方米 
                jzwjbsj_model.QZQTSHYF = jzwjbsj.QZQTSHYF;//其中其他生活用房解释/举例：单位：平方米 
                jzwjbsj_model.XZBGYF = jzwjbsj.XZBGYF;//行政办公用房解释/举例：该数据项为教职工办公室、卫生保健室及其他行政办公用房的总和，单位：平方米 
                jzwjbsj_model.QZJSBGS = jzwjbsj.QZJSBGS;//其中教职工办公室解释/举例：单位：平方米 
                jzwjbsj_model.QZWSBJS = jzwjbsj.QZWSBJS;//其中卫生保健室解释/举例：单位：平方米 
                jzwjbsj_model.QZQTXZBGYF = jzwjbsj.QZQTXZBGYF;//其中其他行政办公用房解释/举例：单位：平方米 
                jzwjbsj_model.QTYF = jzwjbsj.QTYF;//其他用房解释/举例：非教学及辅助用房、生活用房、行政办公用房的用房总和，单位：平方米 
                db_zzfc.Entry(jzwjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Add(jzwjbsj);
            }
            db_zzfc.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZFC_02_01_JZWJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZFC_02_01_JZWJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzwjbsj(jzwjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzwjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzwjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZFC_02_01_JZWJBSJ jzwjbsj= db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzwjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZFC_02_01_JZWJBSJ jzwjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzwjbsj(jzwjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzwjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzwjbsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZFC_02_01_JZWJBSJ jzwjbsj = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Remove(jzwjbsj);
                db_zzfc.SaveChanges();
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
                    EDU_ZZFC_02_01_JZWJBSJ jzwjbsj = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Remove(jzwjbsj);
                    db_zzfc.SaveChanges();
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

        private static int Max_JZWJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取建筑物基本数据类表最大ID
        public int GetMax_JZWJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZWJBSJ_ID == 0)
                {
                    EDU_ZZFC_02_01_JZWJBSJ jzwjbsj = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.FirstOrDefault();
                    if (jzwjbsj == null)
                    {
                        Max_JZWJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JZWJBSJ_ID = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZWJBSJ_ID++;
                }
                maxId = Max_JZWJBSJ_ID;
            }
            return maxId;
        }

    }
}
