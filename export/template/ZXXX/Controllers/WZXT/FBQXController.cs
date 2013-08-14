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
    public class FBQXController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_FBQX_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_FBQX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddFbqx(EDU_WZXT_MHXT_FBQX fbqx)
        {
            fbqx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdFbqx(fbqx);
        }

        public void UpdFbqx(EDU_WZXT_MHXT_FBQX fbqx)
        {
            //设置默认值
            if (fbqx.ID == 0) fbqx.ID = 0;//发布权限ID
            if (fbqx.SCHOOLID == 0) fbqx.SCHOOLID = 0;//学校名
            if (fbqx.WEBID == 0) fbqx.WEBID = 0;//网站ID
            if (string.IsNullOrEmpty(fbqx.LOGINNAME)) fbqx.LOGINNAME = "";//用户名
            if (string.IsNullOrEmpty(fbqx.LMLIST)) fbqx.LMLIST = "";//栏目
            if (string.IsNullOrEmpty(fbqx.LMNAMELIST)) fbqx.LMNAMELIST = "";//栏目文字
            EDU_WZXT_MHXT_FBQX fbqx_model = db_wzxt.EDU_WZXT_MHXT_FBQX.FirstOrDefault(e => e.ID == fbqx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (fbqx_model != null)
            {
                fbqx_model.ID = fbqx.ID;//发布权限ID
                fbqx_model.SCHOOLID = fbqx.SCHOOLID;//学校名
                fbqx_model.WEBID = fbqx.WEBID;//网站ID
                fbqx_model.LOGINNAME = fbqx.LOGINNAME;//用户名
                fbqx_model.LMLIST = fbqx.LMLIST;//栏目
                fbqx_model.LMNAMELIST = fbqx.LMNAMELIST;//栏目文字
                db_wzxt.Entry(fbqx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_wzxt.EDU_WZXT_MHXT_FBQX.Add(fbqx);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_FBQX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_FBQX());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_FBQX fbqx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddFbqx(fbqx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fbqx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fbqx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_FBQX fbqx= db_wzxt.EDU_WZXT_MHXT_FBQX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(fbqx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_FBQX fbqx)
        {
            InitViewBag();
            try
            {
                
                
                UpdFbqx(fbqx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fbqx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fbqx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_MHXT_FBQX fbqx = db_wzxt.EDU_WZXT_MHXT_FBQX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_FBQX.Remove(fbqx);
                db_wzxt.SaveChanges();
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
                    EDU_WZXT_MHXT_FBQX fbqx = db_wzxt.EDU_WZXT_MHXT_FBQX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_FBQX.Remove(fbqx);
                    db_wzxt.SaveChanges();
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

        private static int Max_FBQX_ID = 0;
        private static object syncIDLock = new object();
        //获取发布权限最大ID
        public int GetMax_FBQX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_FBQX_ID == 0)
                {
                    EDU_WZXT_MHXT_FBQX fbqx = db_wzxt.EDU_WZXT_MHXT_FBQX.FirstOrDefault();
                    if (fbqx == null)
                    {
                        Max_FBQX_ID = 1;
                    }
                    else
                    {
                        //Max_FBQX_ID = db_wzxt.EDU_WZXT_MHXT_FBQX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_FBQX_ID++;
                }
                maxId = Max_FBQX_ID;
            }
            return maxId;
        }

    }
}
