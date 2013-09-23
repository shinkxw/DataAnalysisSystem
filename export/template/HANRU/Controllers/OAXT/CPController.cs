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
    public class CPController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_03_04_CP_DISP> model = db_oaxt.VIEW_EDU_OAXT_03_04_CP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddCp(EDU_OAXT_03_04_CP cp)
        {
            cp.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdCp(cp);
        }

        public void UpdCp(EDU_OAXT_03_04_CP cp)
        {
            //设置默认值
            if (cp.SCHOOLID == 0) cp.SCHOOLID = 0;//学校名   学校配置表
            if (cp.WJID == 0) cp.WJID = 0;//文件ID   文件基本数据类表
            if (string.IsNullOrEmpty(cp.PFRID)) cp.PFRID = "";//批复人ID   应用系统用户表
            if (string.IsNullOrEmpty(cp.PFR)) cp.PFR = "";//批复人
            if (string.IsNullOrEmpty(cp.PFDW)) cp.PFDW = "";//批复单位
            if (string.IsNullOrEmpty(cp.PFYJ)) cp.PFYJ = "";//批复意见
            if (string.IsNullOrEmpty(cp.PFRQ)) cp.PFRQ = "";//批复日期
            EDU_OAXT_03_04_CP cp_model = db_oaxt.EDU_OAXT_03_04_CP.FirstOrDefault(e => e.SCHOOLID == cp.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (cp_model != null)
            {
                cp_model.SCHOOLID = cp.SCHOOLID;//学校名   学校配置表
                cp_model.WJID = cp.WJID;//文件ID   文件基本数据类表
                cp_model.PFRID = cp.PFRID;//批复人ID   应用系统用户表
                cp_model.PFR = cp.PFR;//批复人
                cp_model.PFDW = cp.PFDW;//批复单位
                cp_model.PFYJ = cp.PFYJ;//批复意见
                cp_model.PFRQ = cp.PFRQ;//批复日期
                db_oaxt.Entry(cp_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_oaxt.EDU_OAXT_03_04_CP.Add(cp);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_03_04_CP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_03_04_CP());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_03_04_CP cp)
        {
            InitViewBag();
            try
            {
                //
                //
                AddCp(cp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cp);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_03_04_CP cp= db_oaxt.EDU_OAXT_03_04_CP.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(cp);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_03_04_CP cp)
        {
            InitViewBag();
            try
            {
                
                
                UpdCp(cp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cp);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_03_04_CP cp = db_oaxt.EDU_OAXT_03_04_CP.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_03_04_CP.Remove(cp);
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
                    EDU_OAXT_03_04_CP cp = db_oaxt.EDU_OAXT_03_04_CP.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_03_04_CP.Remove(cp);
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

        private static int Max_CP_ID = 0;
        private static object syncIDLock = new object();
        //获取呈批子类表最大ID
        public int GetMax_CP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_CP_ID == 0)
                {
                    EDU_OAXT_03_04_CP cp = db_oaxt.EDU_OAXT_03_04_CP.FirstOrDefault();
                    if (cp == null)
                    {
                        Max_CP_ID = 1;
                    }
                    else
                    {
                        //Max_CP_ID = db_oaxt.EDU_OAXT_03_04_CP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_CP_ID++;
                }
                maxId = Max_CP_ID;
            }
            return maxId;
        }

    }
}
