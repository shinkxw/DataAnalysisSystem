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
    public class TZYDJLController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_10_A02_TZYDJL_DISP> model = db_zxbg.VIEW_EDU_ZXBG_10_A02_TZYDJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTzydjl(EDU_ZXBG_10_A02_TZYDJL tzydjl)
        {
            tzydjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTzydjl(tzydjl);
        }

        public void UpdTzydjl(EDU_ZXBG_10_A02_TZYDJL tzydjl)
        {
            //设置默认值
            if (tzydjl.ID == 0) tzydjl.ID = 0;//通知阅读记录ID
            if (tzydjl.SCHOOLID == 0) tzydjl.SCHOOLID = 0;//学校ID
            if (tzydjl.TZID == 0) tzydjl.TZID = 0;//通知ID
            if (string.IsNullOrEmpty(tzydjl.BTZRID)) tzydjl.BTZRID = "";//被通知人ID
            if (tzydjl.YDRQ == 0) tzydjl.YDRQ = 0;//阅读日期
            if (string.IsNullOrEmpty(tzydjl.SFYD)) tzydjl.SFYD = "";//是否已阅读
            EDU_ZXBG_10_A02_TZYDJL tzydjl_model = db_zxbg.EDU_ZXBG_10_A02_TZYDJL.FirstOrDefault(e => e.ID == tzydjl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tzydjl_model != null)
            {
                tzydjl_model.ID = tzydjl.ID;//通知阅读记录ID
                tzydjl_model.SCHOOLID = tzydjl.SCHOOLID;//学校ID
                tzydjl_model.TZID = tzydjl.TZID;//通知ID
                tzydjl_model.BTZRID = tzydjl.BTZRID;//被通知人ID
                tzydjl_model.YDRQ = tzydjl.YDRQ;//阅读日期
                tzydjl_model.SFYD = tzydjl.SFYD;//是否已阅读
                db_zxbg.Entry(tzydjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_10_A02_TZYDJL.Add(tzydjl);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_10_A02_TZYDJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_10_A02_TZYDJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_10_A02_TZYDJL tzydjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTzydjl(tzydjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tzydjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tzydjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_10_A02_TZYDJL tzydjl= db_zxbg.EDU_ZXBG_10_A02_TZYDJL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tzydjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_10_A02_TZYDJL tzydjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdTzydjl(tzydjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tzydjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tzydjl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_10_A02_TZYDJL tzydjl = db_zxbg.EDU_ZXBG_10_A02_TZYDJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_10_A02_TZYDJL.Remove(tzydjl);
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
                    EDU_ZXBG_10_A02_TZYDJL tzydjl = db_zxbg.EDU_ZXBG_10_A02_TZYDJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_10_A02_TZYDJL.Remove(tzydjl);
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

        private static int Max_TZYDJL_ID = 0;
        private static object syncIDLock = new object();
        //获取通知阅读记录最大ID
        public int GetMax_TZYDJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TZYDJL_ID == 0)
                {
                    EDU_ZXBG_10_A02_TZYDJL tzydjl = db_zxbg.EDU_ZXBG_10_A02_TZYDJL.FirstOrDefault();
                    if (tzydjl == null)
                    {
                        Max_TZYDJL_ID = 1;
                    }
                    else
                    {
                        //Max_TZYDJL_ID = db_zxbg.EDU_ZXBG_10_A02_TZYDJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TZYDJL_ID++;
                }
                maxId = Max_TZYDJL_ID;
            }
            return maxId;
        }

    }
}
