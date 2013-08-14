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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class CONFIGController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_01_CONFIG_DISP> model = db_ele.VIEW_EDU_ELE_01_CONFIG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddConfig(EDU_ELE_01_CONFIG config)
        {
            config.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdConfig(config);
        }

        public void UpdConfig(EDU_ELE_01_CONFIG config)
        {
            //设置默认值
            if (config.ID == 0) config.ID = 0;//配置ID
            if (config.SCHOOLID == 0) config.SCHOOLID = 0;//学校ID
            if (config.APPID == 0) config.APPID = 0;//应用ID
            if (string.IsNullOrEmpty(config.VALUE)) config.VALUE = "";//配置值
            EDU_ELE_01_CONFIG config_model = db_ele.EDU_ELE_01_CONFIG.FirstOrDefault(e => e.ID == config.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (config_model != null)
            {
                config_model.ID = config.ID;//配置ID
                config_model.SCHOOLID = config.SCHOOLID;//学校ID
                config_model.APPID = config.APPID;//应用ID
                config_model.VALUE = config.VALUE;//配置值
                db_ele.Entry(config_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_01_CONFIG.Add(config);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_01_CONFIG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_01_CONFIG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_01_CONFIG config)
        {
            InitViewBag();
            try
            {
                //
                //
                AddConfig(config);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(config);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(config);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_01_CONFIG config= db_ele.EDU_ELE_01_CONFIG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(config);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_01_CONFIG config)
        {
            InitViewBag();
            try
            {
                
                
                UpdConfig(config);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(config);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(config);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_01_CONFIG config = db_ele.EDU_ELE_01_CONFIG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_01_CONFIG.Remove(config);
                db_ele.SaveChanges();
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
                    EDU_ELE_01_CONFIG config = db_ele.EDU_ELE_01_CONFIG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_01_CONFIG.Remove(config);
                    db_ele.SaveChanges();
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

        private static int Max_CONFIG_ID = 0;
        private static object syncIDLock = new object();
        //获取应用系统配置表最大ID
        public int GetMax_CONFIG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_CONFIG_ID == 0)
                {
                    EDU_ELE_01_CONFIG config = db_ele.EDU_ELE_01_CONFIG.FirstOrDefault();
                    if (config == null)
                    {
                        Max_CONFIG_ID = 1;
                    }
                    else
                    {
                        //Max_CONFIG_ID = db_ele.EDU_ELE_01_CONFIG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_CONFIG_ID++;
                }
                maxId = Max_CONFIG_ID;
            }
            return maxId;
        }

    }
}
