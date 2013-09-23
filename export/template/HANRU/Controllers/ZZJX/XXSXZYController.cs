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
    public class XXSXZYController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxsxzy(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            xxsxzy.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxsxzy(xxsxzy);
        }

        public void UpdXxsxzy(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            //设置默认值
            if (xxsxzy.ID == 0) xxsxzy.ID = 0;//实习周/月ID
            if (xxsxzy.SCHOOLID == 0) xxsxzy.SCHOOLID = 0;//学校ID   学校配置表
            if (xxsxzy.SXJHID == 0) xxsxzy.SXJHID = 0;//实习计划ID   学校实习计划表
            if (xxsxzy.SXJDID == 0) xxsxzy.SXJDID = 0;//实习阶段ID   学校实习阶段表
            if (string.IsNullOrEmpty(xxsxzy.MC)) xxsxzy.MC = "";//名称
            if (xxsxzy.KSSJ == 0) xxsxzy.KSSJ = 0;//开始时间
            if (xxsxzy.JSSJ == 0) xxsxzy.JSSJ = 0;//结束时间
            if (xxsxzy.LX == 0) xxsxzy.LX = 0;//类型
            EDU_ZZJX_07_A03_XXSXZY xxsxzy_model = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.FirstOrDefault(e => e.ID == xxsxzy.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxsxzy_model != null)
            {
                xxsxzy_model.ID = xxsxzy.ID;//实习周/月ID
                xxsxzy_model.SCHOOLID = xxsxzy.SCHOOLID;//学校ID   学校配置表
                xxsxzy_model.SXJHID = xxsxzy.SXJHID;//实习计划ID   学校实习计划表
                xxsxzy_model.SXJDID = xxsxzy.SXJDID;//实习阶段ID   学校实习阶段表
                xxsxzy_model.MC = xxsxzy.MC;//名称
                xxsxzy_model.KSSJ = xxsxzy.KSSJ;//开始时间
                xxsxzy_model.JSSJ = xxsxzy.JSSJ;//结束时间
                xxsxzy_model.LX = xxsxzy.LX;//类型
                db_zzjx.Entry(xxsxzy_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Add(xxsxzy);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A03_XXSXZY());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A03_XXSXZY());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxsxzy(xxsxzy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxzy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxzy);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A03_XXSXZY xxsxzy= db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxsxzy);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxsxzy(xxsxzy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxzy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxzy);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A03_XXSXZY xxsxzy = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Remove(xxsxzy);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_07_A03_XXSXZY xxsxzy = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Remove(xxsxzy);
                    db_zzjx.SaveChanges();
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

        private static int Max_XXSXZY_ID = 0;
        private static object syncIDLock = new object();
        //获取学校实习周/月表最大ID
        public int GetMax_XXSXZY_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXSXZY_ID == 0)
                {
                    EDU_ZZJX_07_A03_XXSXZY xxsxzy = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.FirstOrDefault();
                    if (xxsxzy == null)
                    {
                        Max_XXSXZY_ID = 1;
                    }
                    else
                    {
                        //Max_XXSXZY_ID = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXSXZY_ID++;
                }
                maxId = Max_XXSXZY_ID;
            }
            return maxId;
        }

    }
}
