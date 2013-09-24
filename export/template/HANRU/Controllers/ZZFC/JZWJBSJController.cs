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
using HanRuEdu.JPXT.Common;

namespace HanRuEdu.JPXT.Controllers.JPXT
{
    public class JZWJBSJController : JPXTController
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
            if (jzwjbsj.SCHOOLID == 0) jzwjbsj.SCHOOLID = 0;//学校名   学校配置表
            if (jzwjbsj.ID == 0) jzwjbsj.ID = 0;//建筑物ID
            if (string.IsNullOrEmpty(jzwjbsj.JZWH)) jzwjbsj.JZWH = "";//建筑物号
            if (string.IsNullOrEmpty(jzwjbsj.JZWMC)) jzwjbsj.JZWMC = "";//建筑物名称
            if (string.IsNullOrEmpty(jzwjbsj.SYZKM)) jzwjbsj.SYZKM = "";//使用状况码   使用状况代码表
            if (string.IsNullOrEmpty(jzwjbsj.FWCQ)) jzwjbsj.FWCQ = "";//房屋产权   产权代码表
            if (string.IsNullOrEmpty(jzwjbsj.XQH)) jzwjbsj.XQH = "";//校区号
            if (string.IsNullOrEmpty(jzwjbsj.JZWFLM)) jzwjbsj.JZWFLM = "";//建筑物分类码   建筑物分类代码表
            if (string.IsNullOrEmpty(jzwjbsj.JZWJGM)) jzwjbsj.JZWJGM = "";//建筑物结构码   建筑物结构代码表
            if (jzwjbsj.JZWCS == 0) jzwjbsj.JZWCS = 0;//建筑物层数
            if (string.IsNullOrEmpty(jzwjbsj.JCNY)) jzwjbsj.JCNY = "";//建成年月
            if (jzwjbsj.JZWTZZE == 0) jzwjbsj.JZWTZZE = 0;//建筑物投资总额
            if (string.IsNullOrEmpty(jzwjbsj.JFLYM)) jzwjbsj.JFLYM = "";//经费来源码   经费来源代码表
            if (jzwjbsj.ZJZMJ == 0) jzwjbsj.ZJZMJ = 0;//总建筑面积
            if (jzwjbsj.ZSYMJ == 0) jzwjbsj.ZSYMJ = 0;//总使用面积
            if (string.IsNullOrEmpty(jzwjbsj.KZSFLDM)) jzwjbsj.KZSFLDM = "";//抗震设防烈度码   抗震设防烈度代码
            if (string.IsNullOrEmpty(jzwjbsj.KZSFBZM)) jzwjbsj.KZSFBZM = "";//抗震设防标准码   抗震设防标准代码
            if (string.IsNullOrEmpty(jzwjbsj.JZWDZ)) jzwjbsj.JZWDZ = "";//建筑物地址
            if (string.IsNullOrEmpty(jzwjbsj.JZWZKM)) jzwjbsj.JZWZKM = "";//建筑物状况码   建筑物状况代码表
            if (string.IsNullOrEmpty(jzwjbsj.JZWTP)) jzwjbsj.JZWTP = "";//建筑物图片
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMT)) jzwjbsj.JZWPMT = "";//建筑物平面图
            if (string.IsNullOrEmpty(jzwjbsj.XXDWCCM)) jzwjbsj.XXDWCCM = "";//学校单位层次码   学校单位层次代码表
            if (string.IsNullOrEmpty(jzwjbsj.JZWWZZK)) jzwjbsj.JZWWZZK = "";//建筑物位置状况
            if (string.IsNullOrEmpty(jzwjbsj.GHSPWH)) jzwjbsj.GHSPWH = "";//规划审批文号
            if (string.IsNullOrEmpty(jzwjbsj.ZHFZNL)) jzwjbsj.ZHFZNL = "";//综合防灾能力
            if (jzwjbsj.GHSYNX == 0) jzwjbsj.GHSYNX = 0;//规划使用年限
            if (string.IsNullOrEmpty(jzwjbsj.SFYYJBXCS)) jzwjbsj.SFYYJBXCS = "";//是否有预警避险措施   是否标志代码表
            if (string.IsNullOrEmpty(jzwjbsj.SFKYYYJBNCS)) jzwjbsj.SFKYYYJBNCS = "";//是否可用于应急避难场所   是否标志代码表
            if (string.IsNullOrEmpty(jzwjbsj.CQZH)) jzwjbsj.CQZH = "";//产权证号
            if (string.IsNullOrEmpty(jzwjbsj.JZWYTM)) jzwjbsj.JZWYTM = "";//建筑物用途码   建筑物用途代码表
            if (jzwjbsj.JZWZGD == 0) jzwjbsj.JZWZGD = 0;//建筑物总高度
            if (string.IsNullOrEmpty(jzwjbsj.WFJDBM)) jzwjbsj.WFJDBM = "";//危房鉴定部门
            if (string.IsNullOrEmpty(jzwjbsj.WFJDWH)) jzwjbsj.WFJDWH = "";//危房鉴定文号
            if (string.IsNullOrEmpty(jzwjbsj.WFJDRQ)) jzwjbsj.WFJDRQ = "";//危房鉴定日期
            if (string.IsNullOrEmpty(jzwjbsj.GNFSM)) jzwjbsj.GNFSM = "";//供暖方式码   供暖方式代码表
            if (string.IsNullOrEmpty(jzwjbsj.JZWJCXSM)) jzwjbsj.JZWJCXSM = "";//建筑物基础形式码   建筑物基础形式代码表
            if (string.IsNullOrEmpty(jzwjbsj.JZWPMXSM)) jzwjbsj.JZWPMXSM = "";//建筑物平面形式码   建筑物平面形式代码表
            if (string.IsNullOrEmpty(jzwjbsj.JZWLBXSM)) jzwjbsj.JZWLBXSM = "";//建筑物楼板形式码   建筑物楼板形式代码表
            if (string.IsNullOrEmpty(jzwjbsj.SFYGZZ)) jzwjbsj.SFYGZZ = "";//是否有构造柱   是否标志代码表
            if (string.IsNullOrEmpty(jzwjbsj.QL)) jzwjbsj.QL = "";//圈梁   是否标志代码表
            if (string.IsNullOrEmpty(jzwjbsj.ZJAQGZWCRQ)) jzwjbsj.ZJAQGZWCRQ = "";//最近安全改造完成日期
            if (jzwjbsj.ZJAQGZHYJSYNX == 0) jzwjbsj.ZJAQGZHYJSYNX = 0;//最近安全改造后预计使用年限
            if (string.IsNullOrEmpty(jzwjbsj.ZXLXM)) jzwjbsj.ZXLXM = "";//专项类型
            if (string.IsNullOrEmpty(jzwjbsj.ZYZXTZBZMCM)) jzwjbsj.ZYZXTZBZMCM = "";//中央专项投资补助名称码   中央专项投资补助名称代码表
            if (string.IsNullOrEmpty(jzwjbsj.WWJZDJM)) jzwjbsj.WWJZDJM = "";//文物建筑等级码   文物建筑等级代码表
            if (jzwjbsj.JXJFZYF == 0) jzwjbsj.JXJFZYF = 0;//教学及辅助用房
            if (jzwjbsj.QZJS == 0) jzwjbsj.QZJS = 0;//其中教室
            if (jzwjbsj.QZSYS == 0) jzwjbsj.QZSYS = 0;//其中实验室
            if (jzwjbsj.QZTSS == 0) jzwjbsj.QZTSS = 0;//其中图书室
            if (jzwjbsj.QZWJS == 0) jzwjbsj.QZWJS = 0;//其中微机室
            if (jzwjbsj.QZYYS == 0) jzwjbsj.QZYYS = 0;//其中语音室
            if (jzwjbsj.QZTYHDS == 0) jzwjbsj.QZTYHDS = 0;//其中体育活动室
            if (jzwjbsj.QZQTJFYF == 0) jzwjbsj.QZQTJFYF = 0;//其中其他教辅用房
            if (jzwjbsj.SHYF == 0) jzwjbsj.SHYF = 0;//生活用房
            if (jzwjbsj.QZXSSS == 0) jzwjbsj.QZXSSS = 0;//其中学生宿舍
            if (jzwjbsj.QZST == 0) jzwjbsj.QZST = 0;//其中食堂
            if (jzwjbsj.QZCS == 0) jzwjbsj.QZCS = 0;//其中厕所
            if (jzwjbsj.QZGLF == 0) jzwjbsj.QZGLF = 0;//其中锅炉房(开水房)
            if (jzwjbsj.QZYS == 0) jzwjbsj.QZYS = 0;//其中浴室
            if (jzwjbsj.QZJGSS == 0) jzwjbsj.QZJGSS = 0;//其中教工宿舍
            if (jzwjbsj.QZQTSHYF == 0) jzwjbsj.QZQTSHYF = 0;//其中其他生活用房
            if (jzwjbsj.XZBGYF == 0) jzwjbsj.XZBGYF = 0;//行政办公用房
            if (jzwjbsj.QZJSBGS == 0) jzwjbsj.QZJSBGS = 0;//其中教职工办公室
            if (jzwjbsj.QZWSBJS == 0) jzwjbsj.QZWSBJS = 0;//其中卫生保健室
            if (jzwjbsj.QZQTXZBGYF == 0) jzwjbsj.QZQTXZBGYF = 0;//其中其他行政办公用房
            if (jzwjbsj.QTYF == 0) jzwjbsj.QTYF = 0;//其他用房
            if (string.IsNullOrEmpty(jzwjbsj.GLY)) jzwjbsj.GLY = "";//管理员
            EDU_ZZFC_02_01_JZWJBSJ jzwjbsj_model = db_zzfc.EDU_ZZFC_02_01_JZWJBSJ.FirstOrDefault(e => e.SCHOOLID == jzwjbsj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzwjbsj_model != null)
            {
                jzwjbsj_model.SCHOOLID = jzwjbsj.SCHOOLID;//学校名   学校配置表
                jzwjbsj_model.ID = jzwjbsj.ID;//建筑物ID
                jzwjbsj_model.JZWH = jzwjbsj.JZWH;//建筑物号
                jzwjbsj_model.JZWMC = jzwjbsj.JZWMC;//建筑物名称
                jzwjbsj_model.SYZKM = jzwjbsj.SYZKM;//使用状况码   使用状况代码表
                jzwjbsj_model.FWCQ = jzwjbsj.FWCQ;//房屋产权   产权代码表
                jzwjbsj_model.XQH = jzwjbsj.XQH;//校区号
                jzwjbsj_model.JZWFLM = jzwjbsj.JZWFLM;//建筑物分类码   建筑物分类代码表
                jzwjbsj_model.JZWJGM = jzwjbsj.JZWJGM;//建筑物结构码   建筑物结构代码表
                jzwjbsj_model.JZWCS = jzwjbsj.JZWCS;//建筑物层数
                jzwjbsj_model.JCNY = jzwjbsj.JCNY;//建成年月
                jzwjbsj_model.JZWTZZE = jzwjbsj.JZWTZZE;//建筑物投资总额
                jzwjbsj_model.JFLYM = jzwjbsj.JFLYM;//经费来源码   经费来源代码表
                jzwjbsj_model.ZJZMJ = jzwjbsj.ZJZMJ;//总建筑面积
                jzwjbsj_model.ZSYMJ = jzwjbsj.ZSYMJ;//总使用面积
                jzwjbsj_model.KZSFLDM = jzwjbsj.KZSFLDM;//抗震设防烈度码   抗震设防烈度代码
                jzwjbsj_model.KZSFBZM = jzwjbsj.KZSFBZM;//抗震设防标准码   抗震设防标准代码
                jzwjbsj_model.JZWDZ = jzwjbsj.JZWDZ;//建筑物地址
                jzwjbsj_model.JZWZKM = jzwjbsj.JZWZKM;//建筑物状况码   建筑物状况代码表
                jzwjbsj_model.JZWTP = jzwjbsj.JZWTP;//建筑物图片
                jzwjbsj_model.JZWPMT = jzwjbsj.JZWPMT;//建筑物平面图
                jzwjbsj_model.XXDWCCM = jzwjbsj.XXDWCCM;//学校单位层次码   学校单位层次代码表
                jzwjbsj_model.JZWWZZK = jzwjbsj.JZWWZZK;//建筑物位置状况
                jzwjbsj_model.GHSPWH = jzwjbsj.GHSPWH;//规划审批文号
                jzwjbsj_model.ZHFZNL = jzwjbsj.ZHFZNL;//综合防灾能力
                jzwjbsj_model.GHSYNX = jzwjbsj.GHSYNX;//规划使用年限
                jzwjbsj_model.SFYYJBXCS = jzwjbsj.SFYYJBXCS;//是否有预警避险措施   是否标志代码表
                jzwjbsj_model.SFKYYYJBNCS = jzwjbsj.SFKYYYJBNCS;//是否可用于应急避难场所   是否标志代码表
                jzwjbsj_model.CQZH = jzwjbsj.CQZH;//产权证号
                jzwjbsj_model.JZWYTM = jzwjbsj.JZWYTM;//建筑物用途码   建筑物用途代码表
                jzwjbsj_model.JZWZGD = jzwjbsj.JZWZGD;//建筑物总高度
                jzwjbsj_model.WFJDBM = jzwjbsj.WFJDBM;//危房鉴定部门
                jzwjbsj_model.WFJDWH = jzwjbsj.WFJDWH;//危房鉴定文号
                jzwjbsj_model.WFJDRQ = jzwjbsj.WFJDRQ;//危房鉴定日期
                jzwjbsj_model.GNFSM = jzwjbsj.GNFSM;//供暖方式码   供暖方式代码表
                jzwjbsj_model.JZWJCXSM = jzwjbsj.JZWJCXSM;//建筑物基础形式码   建筑物基础形式代码表
                jzwjbsj_model.JZWPMXSM = jzwjbsj.JZWPMXSM;//建筑物平面形式码   建筑物平面形式代码表
                jzwjbsj_model.JZWLBXSM = jzwjbsj.JZWLBXSM;//建筑物楼板形式码   建筑物楼板形式代码表
                jzwjbsj_model.SFYGZZ = jzwjbsj.SFYGZZ;//是否有构造柱   是否标志代码表
                jzwjbsj_model.QL = jzwjbsj.QL;//圈梁   是否标志代码表
                jzwjbsj_model.ZJAQGZWCRQ = jzwjbsj.ZJAQGZWCRQ;//最近安全改造完成日期
                jzwjbsj_model.ZJAQGZHYJSYNX = jzwjbsj.ZJAQGZHYJSYNX;//最近安全改造后预计使用年限
                jzwjbsj_model.ZXLXM = jzwjbsj.ZXLXM;//专项类型
                jzwjbsj_model.ZYZXTZBZMCM = jzwjbsj.ZYZXTZBZMCM;//中央专项投资补助名称码   中央专项投资补助名称代码表
                jzwjbsj_model.WWJZDJM = jzwjbsj.WWJZDJM;//文物建筑等级码   文物建筑等级代码表
                jzwjbsj_model.JXJFZYF = jzwjbsj.JXJFZYF;//教学及辅助用房
                jzwjbsj_model.QZJS = jzwjbsj.QZJS;//其中教室
                jzwjbsj_model.QZSYS = jzwjbsj.QZSYS;//其中实验室
                jzwjbsj_model.QZTSS = jzwjbsj.QZTSS;//其中图书室
                jzwjbsj_model.QZWJS = jzwjbsj.QZWJS;//其中微机室
                jzwjbsj_model.QZYYS = jzwjbsj.QZYYS;//其中语音室
                jzwjbsj_model.QZTYHDS = jzwjbsj.QZTYHDS;//其中体育活动室
                jzwjbsj_model.QZQTJFYF = jzwjbsj.QZQTJFYF;//其中其他教辅用房
                jzwjbsj_model.SHYF = jzwjbsj.SHYF;//生活用房
                jzwjbsj_model.QZXSSS = jzwjbsj.QZXSSS;//其中学生宿舍
                jzwjbsj_model.QZST = jzwjbsj.QZST;//其中食堂
                jzwjbsj_model.QZCS = jzwjbsj.QZCS;//其中厕所
                jzwjbsj_model.QZGLF = jzwjbsj.QZGLF;//其中锅炉房(开水房)
                jzwjbsj_model.QZYS = jzwjbsj.QZYS;//其中浴室
                jzwjbsj_model.QZJGSS = jzwjbsj.QZJGSS;//其中教工宿舍
                jzwjbsj_model.QZQTSHYF = jzwjbsj.QZQTSHYF;//其中其他生活用房
                jzwjbsj_model.XZBGYF = jzwjbsj.XZBGYF;//行政办公用房
                jzwjbsj_model.QZJSBGS = jzwjbsj.QZJSBGS;//其中教职工办公室
                jzwjbsj_model.QZWSBJS = jzwjbsj.QZWSBJS;//其中卫生保健室
                jzwjbsj_model.QZQTXZBGYF = jzwjbsj.QZQTXZBGYF;//其中其他行政办公用房
                jzwjbsj_model.QTYF = jzwjbsj.QTYF;//其他用房
                jzwjbsj_model.GLY = jzwjbsj.GLY;//管理员
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
            ViewBag.JY_SYZKLst = JBLDAL.GetJY_SYZKSelLst();
            ViewBag.JY_CQLst = JBLDAL.GetJY_CQSelLst();
            ViewBag.JY_JZWFLLst = JBLDAL.GetJY_JZWFLSelLst();
            ViewBag.JY_JZWJGLst = JBLDAL.GetJY_JZWJGSelLst();
            ViewBag.JY_JFLYLst = JBLDAL.GetJY_JFLYSelLst();
            ViewBag.JY_KZSFLDLst = JBLDAL.GetJY_KZSFLDSelLst();
            ViewBag.JY_KZSFBZLst = JBLDAL.GetJY_KZSFBZSelLst();
            ViewBag.JY_JZWZKLst = JBLDAL.GetJY_JZWZKSelLst();
            ViewBag.JY_XXDWCCLst = JBLDAL.GetJY_XXDWCCSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_JZWYTLst = JBLDAL.GetJY_JZWYTSelLst();
            ViewBag.JY_GNFSLst = JBLDAL.GetJY_GNFSSelLst();
            ViewBag.JY_JZWJCXSLst = JBLDAL.GetJY_JZWJCXSSelLst();
            ViewBag.JY_JZWPMXSLst = JBLDAL.GetJY_JZWPMXSSelLst();
            ViewBag.JY_JZWLBXSLst = JBLDAL.GetJY_JZWLBXSSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_ZYZXTZBZMCLst = JBLDAL.GetJY_ZYZXTZBZMCSelLst();
            ViewBag.JY_WWJZDJLst = JBLDAL.GetJY_WWJZDJSelLst();
            
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

        /*public String Delete(String id)
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
