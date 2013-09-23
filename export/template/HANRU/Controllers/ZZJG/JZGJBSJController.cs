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
using HanRuEdu.JWXT.Common;

namespace HanRuEdu.JWXT.Controllers.JWXT
{
    public class JZGJBSJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP> model = db_zzjg.VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJzgjbsj(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
        {
            jzgjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgjbsj(jzgjbsj);
        }

        public void UpdJzgjbsj(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
        {
            //设置默认值
            if (jzgjbsj.ID == 0) jzgjbsj.ID = 0;//编号
            if (jzgjbsj.SCHOOLID == 0) jzgjbsj.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(jzgjbsj.GH)) jzgjbsj.GH = "";//工号
            if (string.IsNullOrEmpty(jzgjbsj.XM)) jzgjbsj.XM = "";//姓名
            if (string.IsNullOrEmpty(jzgjbsj.YWXM)) jzgjbsj.YWXM = "";//英文姓名
            if (string.IsNullOrEmpty(jzgjbsj.XMPY)) jzgjbsj.XMPY = "";//姓名拼音
            if (string.IsNullOrEmpty(jzgjbsj.CYM)) jzgjbsj.CYM = "";//曾用名
            if (string.IsNullOrEmpty(jzgjbsj.SFZJLXM)) jzgjbsj.SFZJLXM = "";//身份证件类型码   身份证件类型代码表
            if (string.IsNullOrEmpty(jzgjbsj.SFZJH)) jzgjbsj.SFZJH = "";//身份证件号
            if (string.IsNullOrEmpty(jzgjbsj.CSRQ)) jzgjbsj.CSRQ = "";//出生日期
            if (string.IsNullOrEmpty(jzgjbsj.XBM)) jzgjbsj.XBM = "";//性别码   人的性别代码
            if (string.IsNullOrEmpty(jzgjbsj.MZM)) jzgjbsj.MZM = "";//民族码   中国各民族名称的罗马字母拼写法和代码
            if (string.IsNullOrEmpty(jzgjbsj.XXM)) jzgjbsj.XXM = "";//血型码   血型代码表
            if (string.IsNullOrEmpty(jzgjbsj.JKZKM)) jzgjbsj.JKZKM = "";//健康状况码   健康状况1位数字代码
            if (string.IsNullOrEmpty(jzgjbsj.HYZTM)) jzgjbsj.HYZTM = "";//婚姻状态码   婚姻状况代码
            if (string.IsNullOrEmpty(jzgjbsj.ZZMMM)) jzgjbsj.ZZMMM = "";//政治面貌码   政治面貌代码
            if (string.IsNullOrEmpty(jzgjbsj.GATQWM)) jzgjbsj.GATQWM = "";//港澳台侨外码   港澳台侨外代码表
            if (string.IsNullOrEmpty(jzgjbsj.JG)) jzgjbsj.JG = "";//籍贯
            if (string.IsNullOrEmpty(jzgjbsj.GJDQM)) jzgjbsj.GJDQM = "";//国籍/地区码   世界各国和地区名称代码
            if (string.IsNullOrEmpty(jzgjbsj.CSDXZQHM)) jzgjbsj.CSDXZQHM = "";//出生地行政区划码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(jzgjbsj.XYZJM)) jzgjbsj.XYZJM = "";//信仰宗教码   宗教信仰代码
            if (string.IsNullOrEmpty(jzgjbsj.JZGHKSZDXZQHM)) jzgjbsj.JZGHKSZDXZQHM = "";//教职工户口所在地行政区划码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(jzgjbsj.HKLBM)) jzgjbsj.HKLBM = "";//户口类别码   户口类别代码
            if (string.IsNullOrEmpty(jzgjbsj.DQZZ)) jzgjbsj.DQZZ = "";//当前住址
            if (string.IsNullOrEmpty(jzgjbsj.DQZZYZBM)) jzgjbsj.DQZZYZBM = "";//当前住址邮政编码
            if (string.IsNullOrEmpty(jzgjbsj.CJGZNY)) jzgjbsj.CJGZNY = "";//参加工作年月
            if (string.IsNullOrEmpty(jzgjbsj.CJNY)) jzgjbsj.CJNY = "";//从教年月
            if (string.IsNullOrEmpty(jzgjbsj.LXNY)) jzgjbsj.LXNY = "";//来校年月
            if (string.IsNullOrEmpty(jzgjbsj.BZLBM)) jzgjbsj.BZLBM = "";//编制类别码   编制类别代码表
            if (string.IsNullOrEmpty(jzgjbsj.JZGLBM)) jzgjbsj.JZGLBM = "";//教职工类别码   教职工类别代码表
            if (string.IsNullOrEmpty(jzgjbsj.GWLBM)) jzgjbsj.GWLBM = "";//岗位类别码   岗位类别代码表
            if (string.IsNullOrEmpty(jzgjbsj.SFJZJS)) jzgjbsj.SFJZJS = "";//是否兼职教师   是否标志代码表
            if (string.IsNullOrEmpty(jzgjbsj.SFSSXJS)) jzgjbsj.SFSSXJS = "";//是否双师型教师   是否标志代码表
            if (string.IsNullOrEmpty(jzgjbsj.ZP)) jzgjbsj.ZP = "";//照片(路径)
            if (string.IsNullOrEmpty(jzgjbsj.DQZTM)) jzgjbsj.DQZTM = "";//当前状态码   教职工当前状态代码表
            if (string.IsNullOrEmpty(jzgjbsj.YDDH)) jzgjbsj.YDDH = "";//移动电话
            if (string.IsNullOrEmpty(jzgjbsj.GDDH)) jzgjbsj.GDDH = "";//固定电话
            if (string.IsNullOrEmpty(jzgjbsj.TXDZYZBM)) jzgjbsj.TXDZYZBM = "";//通信地址邮政编码
            if (string.IsNullOrEmpty(jzgjbsj.TXDZ)) jzgjbsj.TXDZ = "";//通信地址
            if (string.IsNullOrEmpty(jzgjbsj.DZXX)) jzgjbsj.DZXX = "";//电子信箱
            if (string.IsNullOrEmpty(jzgjbsj.WLDZ)) jzgjbsj.WLDZ = "";//网络地址
            if (string.IsNullOrEmpty(jzgjbsj.JSTXH)) jzgjbsj.JSTXH = "";//即时通讯号
            EDU_ZZJG_01_01_JZGJBSJ jzgjbsj_model = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.FirstOrDefault(e => e.ID == jzgjbsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgjbsj_model != null)
            {
                jzgjbsj_model.ID = jzgjbsj.ID;//编号
                jzgjbsj_model.SCHOOLID = jzgjbsj.SCHOOLID;//学校名   学校配置表
                jzgjbsj_model.GH = jzgjbsj.GH;//工号
                jzgjbsj_model.XM = jzgjbsj.XM;//姓名
                jzgjbsj_model.YWXM = jzgjbsj.YWXM;//英文姓名
                jzgjbsj_model.XMPY = jzgjbsj.XMPY;//姓名拼音
                jzgjbsj_model.CYM = jzgjbsj.CYM;//曾用名
                jzgjbsj_model.SFZJLXM = jzgjbsj.SFZJLXM;//身份证件类型码   身份证件类型代码表
                jzgjbsj_model.SFZJH = jzgjbsj.SFZJH;//身份证件号
                jzgjbsj_model.CSRQ = jzgjbsj.CSRQ;//出生日期
                jzgjbsj_model.XBM = jzgjbsj.XBM;//性别码   人的性别代码
                jzgjbsj_model.MZM = jzgjbsj.MZM;//民族码   中国各民族名称的罗马字母拼写法和代码
                jzgjbsj_model.XXM = jzgjbsj.XXM;//血型码   血型代码表
                jzgjbsj_model.JKZKM = jzgjbsj.JKZKM;//健康状况码   健康状况1位数字代码
                jzgjbsj_model.HYZTM = jzgjbsj.HYZTM;//婚姻状态码   婚姻状况代码
                jzgjbsj_model.ZZMMM = jzgjbsj.ZZMMM;//政治面貌码   政治面貌代码
                jzgjbsj_model.GATQWM = jzgjbsj.GATQWM;//港澳台侨外码   港澳台侨外代码表
                jzgjbsj_model.JG = jzgjbsj.JG;//籍贯
                jzgjbsj_model.GJDQM = jzgjbsj.GJDQM;//国籍/地区码   世界各国和地区名称代码
                jzgjbsj_model.CSDXZQHM = jzgjbsj.CSDXZQHM;//出生地行政区划码   中华人民共和国行政区划代码
                jzgjbsj_model.XYZJM = jzgjbsj.XYZJM;//信仰宗教码   宗教信仰代码
                jzgjbsj_model.JZGHKSZDXZQHM = jzgjbsj.JZGHKSZDXZQHM;//教职工户口所在地行政区划码   中华人民共和国行政区划代码
                jzgjbsj_model.HKLBM = jzgjbsj.HKLBM;//户口类别码   户口类别代码
                jzgjbsj_model.DQZZ = jzgjbsj.DQZZ;//当前住址
                jzgjbsj_model.DQZZYZBM = jzgjbsj.DQZZYZBM;//当前住址邮政编码
                jzgjbsj_model.CJGZNY = jzgjbsj.CJGZNY;//参加工作年月
                jzgjbsj_model.CJNY = jzgjbsj.CJNY;//从教年月
                jzgjbsj_model.LXNY = jzgjbsj.LXNY;//来校年月
                jzgjbsj_model.BZLBM = jzgjbsj.BZLBM;//编制类别码   编制类别代码表
                jzgjbsj_model.JZGLBM = jzgjbsj.JZGLBM;//教职工类别码   教职工类别代码表
                jzgjbsj_model.GWLBM = jzgjbsj.GWLBM;//岗位类别码   岗位类别代码表
                jzgjbsj_model.SFJZJS = jzgjbsj.SFJZJS;//是否兼职教师   是否标志代码表
                jzgjbsj_model.SFSSXJS = jzgjbsj.SFSSXJS;//是否双师型教师   是否标志代码表
                jzgjbsj_model.ZP = jzgjbsj.ZP;//照片(路径)
                jzgjbsj_model.DQZTM = jzgjbsj.DQZTM;//当前状态码   教职工当前状态代码表
                jzgjbsj_model.YDDH = jzgjbsj.YDDH;//移动电话
                jzgjbsj_model.GDDH = jzgjbsj.GDDH;//固定电话
                jzgjbsj_model.TXDZYZBM = jzgjbsj.TXDZYZBM;//通信地址邮政编码
                jzgjbsj_model.TXDZ = jzgjbsj.TXDZ;//通信地址
                jzgjbsj_model.DZXX = jzgjbsj.DZXX;//电子信箱
                jzgjbsj_model.WLDZ = jzgjbsj.WLDZ;//网络地址
                jzgjbsj_model.JSTXH = jzgjbsj.JSTXH;//即时通讯号
                db_zzjg.Entry(jzgjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Add(jzgjbsj);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFZJLXLst = JBLDAL.GetJY_SFZJLXSelLst();
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.JY_XXLst = JBLDAL.GetJY_XXSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_HYZZLst = GBLDAL.GetGB_HYZZSelLst();
            ViewBag.GB_ZZMMLst = GBLDAL.GetGB_ZZMMSelLst();
            ViewBag.JY_GATQWLst = JBLDAL.GetJY_GATQWSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_ZJXYLst = GBLDAL.GetGB_ZJXYSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_HKLBLst = GBLDAL.GetGB_HKLBSelLst();
            ViewBag.JY_BZLBLst = JBLDAL.GetJY_BZLBSelLst();
            ViewBag.JY_JZGLBLst = JBLDAL.GetJY_JZGLBSelLst();
            ViewBag.JY_GWLBLst = JBLDAL.GetJY_GWLBSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_JZGDQZTLst = JBLDAL.GetJY_JZGDQZTSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_01_01_JZGJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_01_01_JZGJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
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
            
            EDU_ZZJG_01_01_JZGJBSJ jzgjbsj= db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
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

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJG_01_01_JZGJBSJ jzgjbsj = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Remove(jzgjbsj);
                db_zzjg.SaveChanges();
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
                    EDU_ZZJG_01_01_JZGJBSJ jzgjbsj = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Remove(jzgjbsj);
                    db_zzjg.SaveChanges();
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
                    EDU_ZZJG_01_01_JZGJBSJ jzgjbsj = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.FirstOrDefault();
                    if (jzgjbsj == null)
                    {
                        Max_JZGJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JZGJBSJ_ID = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Max(e => e.ID) + 1;
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
