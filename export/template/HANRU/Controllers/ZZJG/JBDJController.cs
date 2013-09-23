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
    public class JBDJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_04_A01_JBDJ_DISP> model = db_zzjg.VIEW_EDU_ZZJG_04_A01_JBDJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJbdj(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            jbdj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJbdj(jbdj);
        }

        public void UpdJbdj(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            //设置默认值
            if (jbdj.ID == 0) jbdj.ID = 0;//加班登记表ID
            if (jbdj.SCHOOLID == 0) jbdj.SCHOOLID = 0;//学校ID   学校配置表
            if (jbdj.JZGJBSJID == 0) jbdj.JZGJBSJID = 0;//教职工ID   教职工基本数据子类表
            if (jbdj.KSSJ == 0) jbdj.KSSJ = 0;//开始时间
            if (jbdj.JSSJ == 0) jbdj.JSSJ = 0;//结束时间
            if (jbdj.JBLX == 0) jbdj.JBLX = 0;//加班类型   加班类型代码
            EDU_ZZJG_04_A01_JBDJ jbdj_model = db_zzjg.EDU_ZZJG_04_A01_JBDJ.FirstOrDefault(e => e.ID == jbdj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jbdj_model != null)
            {
                jbdj_model.ID = jbdj.ID;//加班登记表ID
                jbdj_model.SCHOOLID = jbdj.SCHOOLID;//学校ID   学校配置表
                jbdj_model.JZGJBSJID = jbdj.JZGJBSJID;//教职工ID   教职工基本数据子类表
                jbdj_model.KSSJ = jbdj.KSSJ;//开始时间
                jbdj_model.JSSJ = jbdj.JSSJ;//结束时间
                jbdj_model.JBLX = jbdj.JBLX;//加班类型   加班类型代码
                db_zzjg.Entry(jbdj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjg.EDU_ZZJG_04_A01_JBDJ.Add(jbdj);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZJ_JBLXLst = ZJLDAL.GetZJ_JBLXSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_04_A01_JBDJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_04_A01_JBDJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJbdj(jbdj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jbdj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jbdj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_04_A01_JBDJ jbdj= db_zzjg.EDU_ZZJG_04_A01_JBDJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jbdj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJbdj(jbdj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jbdj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jbdj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_04_A01_JBDJ jbdj = db_zzjg.EDU_ZZJG_04_A01_JBDJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_04_A01_JBDJ.Remove(jbdj);
                db_zzjg.SaveChanges();
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
                    EDU_ZZJG_04_A01_JBDJ jbdj = db_zzjg.EDU_ZZJG_04_A01_JBDJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_04_A01_JBDJ.Remove(jbdj);
                    db_zzjg.SaveChanges();
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

        private static int Max_JBDJ_ID = 0;
        private static object syncIDLock = new object();
        //获取加班登记表最大ID
        public int GetMax_JBDJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JBDJ_ID == 0)
                {
                    EDU_ZZJG_04_A01_JBDJ jbdj = db_zzjg.EDU_ZZJG_04_A01_JBDJ.FirstOrDefault();
                    if (jbdj == null)
                    {
                        Max_JBDJ_ID = 1;
                    }
                    else
                    {
                        //Max_JBDJ_ID = db_zzjg.EDU_ZZJG_04_A01_JBDJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JBDJ_ID++;
                }
                maxId = Max_JBDJ_ID;
            }
            return maxId;
        }

    }
}
