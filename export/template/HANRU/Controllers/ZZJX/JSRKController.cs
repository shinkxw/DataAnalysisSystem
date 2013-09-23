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
    public class JSRKController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_01_A02_JSRK_DISP> model = db_zzjx.VIEW_EDU_ZZJX_01_A02_JSRK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJsrk(EDU_ZZJX_01_A02_JSRK jsrk)
        {
            jsrk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJsrk(jsrk);
        }

        public void UpdJsrk(EDU_ZZJX_01_A02_JSRK jsrk)
        {
            //设置默认值
            if (jsrk.SCHOOLID == 0) jsrk.SCHOOLID = 0;//学校ID   学校配置表
            if (jsrk.KXH == 0) jsrk.KXH = 0;//课序号
            if (jsrk.JSID == 0) jsrk.JSID = 0;//教师表ID   教职工基本数据子类表
            if (string.IsNullOrEmpty(jsrk.KCH)) jsrk.KCH = "";//课程号   课程数据子类表
            if (string.IsNullOrEmpty(jsrk.JHBH)) jsrk.JHBH = "";//计划编号   总体教学计划数据子类表
            if (jsrk.XQID == 0) jsrk.XQID = 0;//学期ID   学期数据表
            if (string.IsNullOrEmpty(jsrk.JXDG)) jsrk.JXDG = "";//教学大纲
            EDU_ZZJX_01_A02_JSRK jsrk_model = db_zzjx.EDU_ZZJX_01_A02_JSRK.FirstOrDefault(e => e.SCHOOLID == jsrk.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jsrk_model != null)
            {
                jsrk_model.SCHOOLID = jsrk.SCHOOLID;//学校ID   学校配置表
                jsrk_model.KXH = jsrk.KXH;//课序号
                jsrk_model.JSID = jsrk.JSID;//教师表ID   教职工基本数据子类表
                jsrk_model.KCH = jsrk.KCH;//课程号   课程数据子类表
                jsrk_model.JHBH = jsrk.JHBH;//计划编号   总体教学计划数据子类表
                jsrk_model.XQID = jsrk.XQID;//学期ID   学期数据表
                jsrk_model.JXDG = jsrk.JXDG;//教学大纲
                db_zzjx.Entry(jsrk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_01_A02_JSRK.Add(jsrk);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_01_A02_JSRK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_01_A02_JSRK());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_01_A02_JSRK jsrk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJsrk(jsrk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jsrk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jsrk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_01_A02_JSRK jsrk= db_zzjx.EDU_ZZJX_01_A02_JSRK.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jsrk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_01_A02_JSRK jsrk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJsrk(jsrk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jsrk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jsrk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_01_A02_JSRK jsrk = db_zzjx.EDU_ZZJX_01_A02_JSRK.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_01_A02_JSRK.Remove(jsrk);
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
                    EDU_ZZJX_01_A02_JSRK jsrk = db_zzjx.EDU_ZZJX_01_A02_JSRK.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_01_A02_JSRK.Remove(jsrk);
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

        private static int Max_JSRK_ID = 0;
        private static object syncIDLock = new object();
        //获取教师任课表最大ID
        public int GetMax_JSRK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JSRK_ID == 0)
                {
                    EDU_ZZJX_01_A02_JSRK jsrk = db_zzjx.EDU_ZZJX_01_A02_JSRK.FirstOrDefault();
                    if (jsrk == null)
                    {
                        Max_JSRK_ID = 1;
                    }
                    else
                    {
                        //Max_JSRK_ID = db_zzjx.EDU_ZZJX_01_A02_JSRK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JSRK_ID++;
                }
                maxId = Max_JSRK_ID;
            }
            return maxId;
        }

    }
}
