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
    public class WJQTController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_04_01_WJQT_DISP> model = db_oaxt.VIEW_EDU_OAXT_04_01_WJQT_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjqt(EDU_OAXT_04_01_WJQT wjqt)
        {
            wjqt.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjqt(wjqt);
        }

        public void UpdWjqt(EDU_OAXT_04_01_WJQT wjqt)
        {
            //设置默认值
            if (wjqt.SCHOOLID == 0) wjqt.SCHOOLID = 0;//学校名   学校配置表
            if (wjqt.WJID == 0) wjqt.WJID = 0;//文件ID   文件基本数据类表
            if (string.IsNullOrEmpty(wjqt.JBRID)) wjqt.JBRID = "";//经办人ID   应用系统用户表
            if (string.IsNullOrEmpty(wjqt.QTRQ)) wjqt.QTRQ = "";//清退日期
            if (string.IsNullOrEmpty(wjqt.QTFW)) wjqt.QTFW = "";//清退范围
            if (string.IsNullOrEmpty(wjqt.QTSM)) wjqt.QTSM = "";//清退说明
            if (string.IsNullOrEmpty(wjqt.JBRGH)) wjqt.JBRGH = "";//经办人工号
            EDU_OAXT_04_01_WJQT wjqt_model = db_oaxt.EDU_OAXT_04_01_WJQT.FirstOrDefault(e => e.SCHOOLID == wjqt.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjqt_model != null)
            {
                wjqt_model.SCHOOLID = wjqt.SCHOOLID;//学校名   学校配置表
                wjqt_model.WJID = wjqt.WJID;//文件ID   文件基本数据类表
                wjqt_model.JBRID = wjqt.JBRID;//经办人ID   应用系统用户表
                wjqt_model.QTRQ = wjqt.QTRQ;//清退日期
                wjqt_model.QTFW = wjqt.QTFW;//清退范围
                wjqt_model.QTSM = wjqt.QTSM;//清退说明
                wjqt_model.JBRGH = wjqt.JBRGH;//经办人工号
                db_oaxt.Entry(wjqt_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_oaxt.EDU_OAXT_04_01_WJQT.Add(wjqt);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_04_01_WJQT());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_04_01_WJQT());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_04_01_WJQT wjqt)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjqt(wjqt);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjqt);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjqt);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_04_01_WJQT wjqt= db_oaxt.EDU_OAXT_04_01_WJQT.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjqt);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_04_01_WJQT wjqt)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjqt(wjqt);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjqt);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjqt);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_04_01_WJQT wjqt = db_oaxt.EDU_OAXT_04_01_WJQT.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_04_01_WJQT.Remove(wjqt);
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
                    EDU_OAXT_04_01_WJQT wjqt = db_oaxt.EDU_OAXT_04_01_WJQT.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_04_01_WJQT.Remove(wjqt);
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

        private static int Max_WJQT_ID = 0;
        private static object syncIDLock = new object();
        //获取文件清退数据类表最大ID
        public int GetMax_WJQT_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJQT_ID == 0)
                {
                    EDU_OAXT_04_01_WJQT wjqt = db_oaxt.EDU_OAXT_04_01_WJQT.FirstOrDefault();
                    if (wjqt == null)
                    {
                        Max_WJQT_ID = 1;
                    }
                    else
                    {
                        //Max_WJQT_ID = db_oaxt.EDU_OAXT_04_01_WJQT.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJQT_ID++;
                }
                maxId = Max_WJQT_ID;
            }
            return maxId;
        }

    }
}
