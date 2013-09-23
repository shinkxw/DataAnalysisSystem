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
    public class WJXHController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_05_01_WJXH_DISP> model = db_oaxt.VIEW_EDU_OAXT_05_01_WJXH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjxh(EDU_OAXT_05_01_WJXH wjxh)
        {
            wjxh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjxh(wjxh);
        }

        public void UpdWjxh(EDU_OAXT_05_01_WJXH wjxh)
        {
            //设置默认值
            if (wjxh.SCHOOLID == 0) wjxh.SCHOOLID = 0;//学校名   学校配置表
            if (wjxh.WJID == 0) wjxh.WJID = 0;//文件ID   文件基本数据类表
            if (string.IsNullOrEmpty(wjxh.XHSPRID)) wjxh.XHSPRID = "";//销毁审批人ID   应用系统用户表
            if (string.IsNullOrEmpty(wjxh.JBRID)) wjxh.JBRID = "";//经办人ID   应用系统用户表
            if (string.IsNullOrEmpty(wjxh.XHRQ)) wjxh.XHRQ = "";//销毁日期
            if (string.IsNullOrEmpty(wjxh.XHSPRGH)) wjxh.XHSPRGH = "";//销毁审批人工号
            if (string.IsNullOrEmpty(wjxh.XHSM)) wjxh.XHSM = "";//销毁说明
            if (string.IsNullOrEmpty(wjxh.JBRGH)) wjxh.JBRGH = "";//经办人工号
            EDU_OAXT_05_01_WJXH wjxh_model = db_oaxt.EDU_OAXT_05_01_WJXH.FirstOrDefault(e => e.SCHOOLID == wjxh.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjxh_model != null)
            {
                wjxh_model.SCHOOLID = wjxh.SCHOOLID;//学校名   学校配置表
                wjxh_model.WJID = wjxh.WJID;//文件ID   文件基本数据类表
                wjxh_model.XHSPRID = wjxh.XHSPRID;//销毁审批人ID   应用系统用户表
                wjxh_model.JBRID = wjxh.JBRID;//经办人ID   应用系统用户表
                wjxh_model.XHRQ = wjxh.XHRQ;//销毁日期
                wjxh_model.XHSPRGH = wjxh.XHSPRGH;//销毁审批人工号
                wjxh_model.XHSM = wjxh.XHSM;//销毁说明
                wjxh_model.JBRGH = wjxh.JBRGH;//经办人工号
                db_oaxt.Entry(wjxh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_oaxt.EDU_OAXT_05_01_WJXH.Add(wjxh);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_05_01_WJXH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_05_01_WJXH());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_05_01_WJXH wjxh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjxh(wjxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjxh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_05_01_WJXH wjxh= db_oaxt.EDU_OAXT_05_01_WJXH.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjxh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_05_01_WJXH wjxh)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjxh(wjxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjxh);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_OAXT_05_01_WJXH wjxh = db_oaxt.EDU_OAXT_05_01_WJXH.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_05_01_WJXH.Remove(wjxh);
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
                    EDU_OAXT_05_01_WJXH wjxh = db_oaxt.EDU_OAXT_05_01_WJXH.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_05_01_WJXH.Remove(wjxh);
                    db_oaxt.SaveChanges();
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

        private static int Max_WJXH_ID = 0;
        private static object syncIDLock = new object();
        //获取文件销毁数据类表最大ID
        public int GetMax_WJXH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJXH_ID == 0)
                {
                    EDU_OAXT_05_01_WJXH wjxh = db_oaxt.EDU_OAXT_05_01_WJXH.FirstOrDefault();
                    if (wjxh == null)
                    {
                        Max_WJXH_ID = 1;
                    }
                    else
                    {
                        //Max_WJXH_ID = db_oaxt.EDU_OAXT_05_01_WJXH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJXH_ID++;
                }
                maxId = Max_WJXH_ID;
            }
            return maxId;
        }

    }
}
