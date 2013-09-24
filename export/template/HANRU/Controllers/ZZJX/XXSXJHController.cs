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
    public class XXSXJHController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxsxjh(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            xxsxjh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxsxjh(xxsxjh);
        }

        public void UpdXxsxjh(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            //设置默认值
            if (xxsxjh.ID == 0) xxsxjh.ID = 0;//实习计划ID
            if (xxsxjh.SCHOOLID == 0) xxsxjh.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(xxsxjh.JHBT)) xxsxjh.JHBT = "";//计划标题
            if (string.IsNullOrEmpty(xxsxjh.NJ)) xxsxjh.NJ = "";//年级
            if (xxsxjh.BGXS == 0) xxsxjh.BGXS = 0;//报告形式
            if (string.IsNullOrEmpty(xxsxjh.SFSX)) xxsxjh.SFSX = "";//计划是否生效   授课方式代码表
            EDU_ZZJX_07_A01_XXSXJH xxsxjh_model = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.FirstOrDefault(e => e.ID == xxsxjh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxsxjh_model != null)
            {
                xxsxjh_model.ID = xxsxjh.ID;//实习计划ID
                xxsxjh_model.SCHOOLID = xxsxjh.SCHOOLID;//学校ID   学校配置表
                xxsxjh_model.JHBT = xxsxjh.JHBT;//计划标题
                xxsxjh_model.NJ = xxsxjh.NJ;//年级
                xxsxjh_model.BGXS = xxsxjh.BGXS;//报告形式
                xxsxjh_model.SFSX = xxsxjh.SFSX;//计划是否生效   授课方式代码表
                db_zzjx.Entry(xxsxjh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Add(xxsxjh);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SKFSLst = JBLDAL.GetJY_SKFSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A01_XXSXJH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A01_XXSXJH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxsxjh(xxsxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxjh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A01_XXSXJH xxsxjh= db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxsxjh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxsxjh(xxsxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxjh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A01_XXSXJH xxsxjh = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Remove(xxsxjh);
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
                    EDU_ZZJX_07_A01_XXSXJH xxsxjh = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Remove(xxsxjh);
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

        private static int Max_XXSXJH_ID = 0;
        private static object syncIDLock = new object();
        //获取学校实习计划表最大ID
        public int GetMax_XXSXJH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXSXJH_ID == 0)
                {
                    EDU_ZZJX_07_A01_XXSXJH xxsxjh = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.FirstOrDefault();
                    if (xxsxjh == null)
                    {
                        Max_XXSXJH_ID = 1;
                    }
                    else
                    {
                        //Max_XXSXJH_ID = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXSXJH_ID++;
                }
                maxId = Max_XXSXJH_ID;
            }
            return maxId;
        }

    }
}
