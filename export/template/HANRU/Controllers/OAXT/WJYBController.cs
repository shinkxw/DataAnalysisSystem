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
    public class WJYBController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_02_02_WJYB_DISP> model = db_oaxt.VIEW_EDU_OAXT_02_02_WJYB_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjyb(EDU_OAXT_02_02_WJYB wjyb)
        {
            wjyb.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjyb(wjyb);
        }

        public void UpdWjyb(EDU_OAXT_02_02_WJYB wjyb)
        {
            //设置默认值
            if (wjyb.SCHOOLID == 0) wjyb.SCHOOLID = 0;//学校名   学校配置表
            if (wjyb.WJID == 0) wjyb.WJID = 0;//文件ID   文件基本数据类表
            if (string.IsNullOrEmpty(wjyb.YBRID)) wjyb.YBRID = "";//阅办人ID   应用系统用户表
            if (string.IsNullOrEmpty(wjyb.YBLBM)) wjyb.YBLBM = "";//阅办类别码   阅办类别代码表
            if (string.IsNullOrEmpty(wjyb.YBJB)) wjyb.YBJB = "";//阅办级别
            if (string.IsNullOrEmpty(wjyb.YBDW)) wjyb.YBDW = "";//阅办单位
            if (string.IsNullOrEmpty(wjyb.YBDWBH)) wjyb.YBDWBH = "";//阅办单位编号
            if (string.IsNullOrEmpty(wjyb.YBRGH)) wjyb.YBRGH = "";//阅办人工号
            if (string.IsNullOrEmpty(wjyb.YBYJ)) wjyb.YBYJ = "";//阅办意见
            if (string.IsNullOrEmpty(wjyb.YBRQ)) wjyb.YBRQ = "";//阅办日期
            EDU_OAXT_02_02_WJYB wjyb_model = db_oaxt.EDU_OAXT_02_02_WJYB.FirstOrDefault(e => e.SCHOOLID == wjyb.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjyb_model != null)
            {
                wjyb_model.SCHOOLID = wjyb.SCHOOLID;//学校名   学校配置表
                wjyb_model.WJID = wjyb.WJID;//文件ID   文件基本数据类表
                wjyb_model.YBRID = wjyb.YBRID;//阅办人ID   应用系统用户表
                wjyb_model.YBLBM = wjyb.YBLBM;//阅办类别码   阅办类别代码表
                wjyb_model.YBJB = wjyb.YBJB;//阅办级别
                wjyb_model.YBDW = wjyb.YBDW;//阅办单位
                wjyb_model.YBDWBH = wjyb.YBDWBH;//阅办单位编号
                wjyb_model.YBRGH = wjyb.YBRGH;//阅办人工号
                wjyb_model.YBYJ = wjyb.YBYJ;//阅办意见
                wjyb_model.YBRQ = wjyb.YBRQ;//阅办日期
                db_oaxt.Entry(wjyb_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_oaxt.EDU_OAXT_02_02_WJYB.Add(wjyb);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_YBLBLst = JBLDAL.GetJY_YBLBSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_02_02_WJYB());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_02_02_WJYB());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_02_02_WJYB wjyb)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjyb(wjyb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjyb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjyb);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_02_02_WJYB wjyb= db_oaxt.EDU_OAXT_02_02_WJYB.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjyb);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_02_02_WJYB wjyb)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjyb(wjyb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjyb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjyb);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_02_02_WJYB wjyb = db_oaxt.EDU_OAXT_02_02_WJYB.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_02_02_WJYB.Remove(wjyb);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_02_02_WJYB wjyb = db_oaxt.EDU_OAXT_02_02_WJYB.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_02_02_WJYB.Remove(wjyb);
                    db_oaxt.SaveChanges();
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

        private static int Max_WJYB_ID = 0;
        private static object syncIDLock = new object();
        //获取文件阅办子类表最大ID
        public int GetMax_WJYB_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJYB_ID == 0)
                {
                    EDU_OAXT_02_02_WJYB wjyb = db_oaxt.EDU_OAXT_02_02_WJYB.FirstOrDefault();
                    if (wjyb == null)
                    {
                        Max_WJYB_ID = 1;
                    }
                    else
                    {
                        //Max_WJYB_ID = db_oaxt.EDU_OAXT_02_02_WJYB.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJYB_ID++;
                }
                maxId = Max_WJYB_ID;
            }
            return maxId;
        }

    }
}
