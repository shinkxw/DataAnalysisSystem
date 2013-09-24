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
    public class MODULEController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_SYS_01_MODULE_DISP> model = db_sys.VIEW_EDU_SYS_01_MODULE_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddModule(EDU_SYS_01_MODULE module)
        {
            module.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdModule(module);
        }

        public void UpdModule(EDU_SYS_01_MODULE module)
        {
            //设置默认值
            if (module.ID == 0) module.ID = 0;//
            if (module.APPID == 0) module.APPID = 0;//
            if (string.IsNullOrEmpty(module.NAME)) module.NAME = "";//
            if (module.Depth == 0) module.Depth = 0;//
            if (module.PID == 0) module.PID = 0;//
            if (module.MenuDisp == 0) module.MenuDisp = 0;//
            if (module.MenuUserType == 0) module.MenuUserType = 0;//
            if (string.IsNullOrEmpty(module.Link)) module.Link = "";//
            if (module.OrderIndex == 0) module.OrderIndex = 0;//
            EDU_SYS_01_MODULE module_model = db_sys.EDU_SYS_01_MODULE.FirstOrDefault(e => e.ID == module.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (module_model != null)
            {
                module_model.ID = module.ID;//
                module_model.APPID = module.APPID;//
                module_model.NAME = module.NAME;//
                module_model.Depth = module.Depth;//
                module_model.PID = module.PID;//
                module_model.MenuDisp = module.MenuDisp;//
                module_model.MenuUserType = module.MenuUserType;//
                module_model.Link = module.Link;//
                module_model.OrderIndex = module.OrderIndex;//
                db_sys.Entry(module_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_sys.EDU_SYS_01_MODULE.Add(module);
            }
            db_sys.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_SYS_01_MODULE());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_SYS_01_MODULE());
        }

        [HttpPost]
        public ActionResult Create(EDU_SYS_01_MODULE module)
        {
            InitViewBag();
            try
            {
                //
                //
                AddModule(module);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(module);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(module);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_SYS_01_MODULE module= db_sys.EDU_SYS_01_MODULE.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(module);
        }

        [HttpPost]
        public ActionResult Edit(EDU_SYS_01_MODULE module)
        {
            InitViewBag();
            try
            {
                
                
                UpdModule(module);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(module);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(module);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_SYS_01_MODULE module = db_sys.EDU_SYS_01_MODULE.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_sys.EDU_SYS_01_MODULE.Remove(module);
                db_sys.SaveChanges();
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
                    EDU_SYS_01_MODULE module = db_sys.EDU_SYS_01_MODULE.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_sys.EDU_SYS_01_MODULE.Remove(module);
                    db_sys.SaveChanges();
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

        private static int Max_MODULE_ID = 0;
        private static object syncIDLock = new object();
        //获取最大ID
        public int GetMax_MODULE_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_MODULE_ID == 0)
                {
                    EDU_SYS_01_MODULE module = db_sys.EDU_SYS_01_MODULE.FirstOrDefault();
                    if (module == null)
                    {
                        Max_MODULE_ID = 1;
                    }
                    else
                    {
                        //Max_MODULE_ID = db_sys.EDU_SYS_01_MODULE.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_MODULE_ID++;
                }
                maxId = Max_MODULE_ID;
            }
            return maxId;
        }

    }
}
