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
    public class TZController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_10_A01_TZ_DISP> model = db_zxbg.VIEW_EDU_ZXBG_10_A01_TZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTz(EDU_ZXBG_10_A01_TZ tz)
        {
            tz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTz(tz);
        }

        public void UpdTz(EDU_ZXBG_10_A01_TZ tz)
        {
            //设置默认值
            if (tz.ID == 0) tz.ID = 0;//通知ID
            if (tz.SCHOOLID == 0) tz.SCHOOLID = 0;//学校ID
            if (string.IsNullOrEmpty(tz.FSRID)) tz.FSRID = "";//发送人ID
            if (tz.FSRLB == 0) tz.FSRLB = 0;//发送人类别
            if (string.IsNullOrEmpty(tz.BT)) tz.BT = "";//标题
            if (string.IsNullOrEmpty(tz.NR)) tz.NR = "";//内容
            if (string.IsNullOrEmpty(tz.FJ)) tz.FJ = "";//附件
            if (tz.TJRQ == 0) tz.TJRQ = 0;//添加日期
            if (tz.JSRS == 0) tz.JSRS = 0;//接收人数
            if (string.IsNullOrEmpty(tz.JSRIDLB)) tz.JSRIDLB = "";//接收人ID列表
            if (string.IsNullOrEmpty(tz.JSRMZLB)) tz.JSRMZLB = "";//接收人名字列表
            if (string.IsNullOrEmpty(tz.YYDRIDLB)) tz.YYDRIDLB = "";//已阅读人ID列表
            if (string.IsNullOrEmpty(tz.YYDRMZLB)) tz.YYDRMZLB = "";//已阅读人名字列表
            if (tz.FSZT == 0) tz.FSZT = 0;//发送状态
            EDU_ZXBG_10_A01_TZ tz_model = db_zxbg.EDU_ZXBG_10_A01_TZ.FirstOrDefault(e => e.ID == tz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tz_model != null)
            {
                tz_model.ID = tz.ID;//通知ID
                tz_model.SCHOOLID = tz.SCHOOLID;//学校ID
                tz_model.FSRID = tz.FSRID;//发送人ID
                tz_model.FSRLB = tz.FSRLB;//发送人类别
                tz_model.BT = tz.BT;//标题
                tz_model.NR = tz.NR;//内容
                tz_model.FJ = tz.FJ;//附件
                tz_model.TJRQ = tz.TJRQ;//添加日期
                tz_model.JSRS = tz.JSRS;//接收人数
                tz_model.JSRIDLB = tz.JSRIDLB;//接收人ID列表
                tz_model.JSRMZLB = tz.JSRMZLB;//接收人名字列表
                tz_model.YYDRIDLB = tz.YYDRIDLB;//已阅读人ID列表
                tz_model.YYDRMZLB = tz.YYDRMZLB;//已阅读人名字列表
                tz_model.FSZT = tz.FSZT;//发送状态
                db_zxbg.Entry(tz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_10_A01_TZ.Add(tz);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_10_A01_TZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_10_A01_TZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_10_A01_TZ tz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTz(tz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_10_A01_TZ tz= db_zxbg.EDU_ZXBG_10_A01_TZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_10_A01_TZ tz)
        {
            InitViewBag();
            try
            {
                
                
                UpdTz(tz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_10_A01_TZ tz = db_zxbg.EDU_ZXBG_10_A01_TZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_10_A01_TZ.Remove(tz);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_10_A01_TZ tz = db_zxbg.EDU_ZXBG_10_A01_TZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_10_A01_TZ.Remove(tz);
                    db_zxbg.SaveChanges();
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

        private static int Max_TZ_ID = 0;
        private static object syncIDLock = new object();
        //获取通知数据表最大ID
        public int GetMax_TZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TZ_ID == 0)
                {
                    EDU_ZXBG_10_A01_TZ tz = db_zxbg.EDU_ZXBG_10_A01_TZ.FirstOrDefault();
                    if (tz == null)
                    {
                        Max_TZ_ID = 1;
                    }
                    else
                    {
                        //Max_TZ_ID = db_zxbg.EDU_ZXBG_10_A01_TZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TZ_ID++;
                }
                maxId = Max_TZ_ID;
            }
            return maxId;
        }

    }
}
