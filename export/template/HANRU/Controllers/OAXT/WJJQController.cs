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
    public class WJJQController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_06_01_WJJQ_DISP> model = db_oaxt.VIEW_EDU_OAXT_06_01_WJJQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjjq(EDU_OAXT_06_01_WJJQ wjjq)
        {
            wjjq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjjq(wjjq);
        }

        public void UpdWjjq(EDU_OAXT_06_01_WJJQ wjjq)
        {
            //设置默认值
            if (wjjq.SCHOOLID == 0) wjjq.SCHOOLID = 0;//学校名   学校配置表
            if (wjjq.WJID == 0) wjjq.WJID = 0;//文件ID   文件基本数据类表
            if (string.IsNullOrEmpty(wjjq.JYSPRID)) wjjq.JYSPRID = "";//借阅审批人ID   应用系统用户表
            if (string.IsNullOrEmpty(wjjq.JYJBRID)) wjjq.JYJBRID = "";//借阅经办人ID   应用系统用户表
            if (string.IsNullOrEmpty(wjjq.JYR)) wjjq.JYR = "";//借阅人
            if (string.IsNullOrEmpty(wjjq.JYRQ)) wjjq.JYRQ = "";//借阅日期
            if (string.IsNullOrEmpty(wjjq.JYSPRGH)) wjjq.JYSPRGH = "";//借阅审批人工号
            if (string.IsNullOrEmpty(wjjq.JYJBRGH)) wjjq.JYJBRGH = "";//借阅经办人工号
            if (string.IsNullOrEmpty(wjjq.JYYY)) wjjq.JYYY = "";//借阅原因
            EDU_OAXT_06_01_WJJQ wjjq_model = db_oaxt.EDU_OAXT_06_01_WJJQ.FirstOrDefault(e => e.SCHOOLID == wjjq.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjjq_model != null)
            {
                wjjq_model.SCHOOLID = wjjq.SCHOOLID;//学校名   学校配置表
                wjjq_model.WJID = wjjq.WJID;//文件ID   文件基本数据类表
                wjjq_model.JYSPRID = wjjq.JYSPRID;//借阅审批人ID   应用系统用户表
                wjjq_model.JYJBRID = wjjq.JYJBRID;//借阅经办人ID   应用系统用户表
                wjjq_model.JYR = wjjq.JYR;//借阅人
                wjjq_model.JYRQ = wjjq.JYRQ;//借阅日期
                wjjq_model.JYSPRGH = wjjq.JYSPRGH;//借阅审批人工号
                wjjq_model.JYJBRGH = wjjq.JYJBRGH;//借阅经办人工号
                wjjq_model.JYYY = wjjq.JYYY;//借阅原因
                db_oaxt.Entry(wjjq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_oaxt.EDU_OAXT_06_01_WJJQ.Add(wjjq);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_06_01_WJJQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_06_01_WJJQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_06_01_WJJQ wjjq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjjq(wjjq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjjq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjjq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_06_01_WJJQ wjjq= db_oaxt.EDU_OAXT_06_01_WJJQ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjjq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_06_01_WJJQ wjjq)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjjq(wjjq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjjq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjjq);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_06_01_WJJQ wjjq = db_oaxt.EDU_OAXT_06_01_WJJQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_06_01_WJJQ.Remove(wjjq);
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
                    EDU_OAXT_06_01_WJJQ wjjq = db_oaxt.EDU_OAXT_06_01_WJJQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_06_01_WJJQ.Remove(wjjq);
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

        private static int Max_WJJQ_ID = 0;
        private static object syncIDLock = new object();
        //获取文件借阅数据类表最大ID
        public int GetMax_WJJQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJJQ_ID == 0)
                {
                    EDU_OAXT_06_01_WJJQ wjjq = db_oaxt.EDU_OAXT_06_01_WJJQ.FirstOrDefault();
                    if (wjjq == null)
                    {
                        Max_WJJQ_ID = 1;
                    }
                    else
                    {
                        //Max_WJJQ_ID = db_oaxt.EDU_OAXT_06_01_WJJQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJJQ_ID++;
                }
                maxId = Max_WJJQ_ID;
            }
            return maxId;
        }

    }
}
