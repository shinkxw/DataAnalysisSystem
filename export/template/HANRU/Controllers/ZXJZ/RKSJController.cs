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
    public class RKSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJZ_07_02_RKSJ_DISP> model = db_zxjz.VIEW_EDU_ZXJZ_07_02_RKSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddRksj(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            rksj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdRksj(rksj);
        }

        public void UpdRksj(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            //设置默认值
            if (rksj.ID == 0) rksj.ID = 0;//编号
            if (rksj.SCHOOLID == 0) rksj.SCHOOLID = 0;//学校名   学校配置表
            if (rksj.JZGJBSJID == 0) rksj.JZGJBSJID = 0;//教职工基本数据子类表   教职工基本数据子类表
            if (string.IsNullOrEmpty(rksj.RKKCH)) rksj.RKKCH = "";//任课课程号   课程数据类
            if (string.IsNullOrEmpty(rksj.RKQSNY)) rksj.RKQSNY = "";//任课起始年月
            if (string.IsNullOrEmpty(rksj.RKZZNY)) rksj.RKZZNY = "";//任课终止年月
            if (rksj.RKZXS == 0) rksj.RKZXS = 0;//任课总学时
            if (string.IsNullOrEmpty(rksj.RKXDM)) rksj.RKXDM = "";//任课学段码   任课学段代码表
            if (string.IsNullOrEmpty(rksj.RKJSM)) rksj.RKJSM = "";//任课角色码   任课角色代码表
            if (string.IsNullOrEmpty(rksj.SKBJ)) rksj.SKBJ = "";//授课班级   班级数据类表
            if (rksj.SKRS == 0) rksj.SKRS = 0;//授课人数
            if (rksj.ZKS == 0) rksj.ZKS = 0;//周课时
            if (string.IsNullOrEmpty(rksj.SFLT)) rksj.SFLT = "";//是否连堂   是否标志代码表
            if (string.IsNullOrEmpty(rksj.NJID)) rksj.NJID = "";//年级号   年级数据类表
            if (rksj.XQID == 0) rksj.XQID = 0;//学期   学期数据表
            if (rksj.XNID == 0) rksj.XNID = 0;//学年   学年表
            EDU_ZXJZ_07_02_RKSJ rksj_model = db_zxjz.EDU_ZXJZ_07_02_RKSJ.FirstOrDefault(e => e.ID == rksj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (rksj_model != null)
            {
                rksj_model.ID = rksj.ID;//编号
                rksj_model.SCHOOLID = rksj.SCHOOLID;//学校名   学校配置表
                rksj_model.JZGJBSJID = rksj.JZGJBSJID;//教职工基本数据子类表   教职工基本数据子类表
                rksj_model.RKKCH = rksj.RKKCH;//任课课程号   课程数据类
                rksj_model.RKQSNY = rksj.RKQSNY;//任课起始年月
                rksj_model.RKZZNY = rksj.RKZZNY;//任课终止年月
                rksj_model.RKZXS = rksj.RKZXS;//任课总学时
                rksj_model.RKXDM = rksj.RKXDM;//任课学段码   任课学段代码表
                rksj_model.RKJSM = rksj.RKJSM;//任课角色码   任课角色代码表
                rksj_model.SKBJ = rksj.SKBJ;//授课班级   班级数据类表
                rksj_model.SKRS = rksj.SKRS;//授课人数
                rksj_model.ZKS = rksj.ZKS;//周课时
                rksj_model.SFLT = rksj.SFLT;//是否连堂   是否标志代码表
                rksj_model.NJID = rksj.NJID;//年级号   年级数据类表
                rksj_model.XQID = rksj.XQID;//学期   学期数据表
                rksj_model.XNID = rksj.XNID;//学年   学年表
                db_zxjz.Entry(rksj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjz.EDU_ZXJZ_07_02_RKSJ.Add(rksj);
            }
            db_zxjz.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_RKXDLst = JBLDAL.GetJY_RKXDSelLst();
            ViewBag.JY_RKJSLst = JBLDAL.GetJY_RKJSSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJZ_07_02_RKSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJZ_07_02_RKSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddRksj(rksj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(rksj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(rksj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJZ_07_02_RKSJ rksj= db_zxjz.EDU_ZXJZ_07_02_RKSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(rksj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            InitViewBag();
            try
            {
                
                
                UpdRksj(rksj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(rksj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(rksj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJZ_07_02_RKSJ rksj = db_zxjz.EDU_ZXJZ_07_02_RKSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjz.EDU_ZXJZ_07_02_RKSJ.Remove(rksj);
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
                    EDU_ZXJZ_07_02_RKSJ rksj = db_zxjz.EDU_ZXJZ_07_02_RKSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjz.EDU_ZXJZ_07_02_RKSJ.Remove(rksj);
                    db_zxjz.SaveChanges();
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

        private static int Max_RKSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取任课数据子类表最大ID
        public int GetMax_RKSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_RKSJ_ID == 0)
                {
                    EDU_ZXJZ_07_02_RKSJ rksj = db_zxjz.EDU_ZXJZ_07_02_RKSJ.FirstOrDefault();
                    if (rksj == null)
                    {
                        Max_RKSJ_ID = 1;
                    }
                    else
                    {
                        //Max_RKSJ_ID = db_zxjz.EDU_ZXJZ_07_02_RKSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_RKSJ_ID++;
                }
                maxId = Max_RKSJ_ID;
            }
            return maxId;
        }

    }
}
