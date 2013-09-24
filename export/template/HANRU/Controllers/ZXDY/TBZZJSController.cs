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
    public class TBZZJSController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A05_TBZZJS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTbzzjs(EDU_ZXDY_04_A05_TBZZJS tbzzjs)
        {
            tbzzjs.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTbzzjs(tbzzjs);
        }

        public void UpdTbzzjs(EDU_ZXDY_04_A05_TBZZJS tbzzjs)
        {
            //设置默认值
            if (tbzzjs.ID == 0) tbzzjs.ID = 0;//特别值周教师表ID
            if (tbzzjs.SCHOOLID == 0) tbzzjs.SCHOOLID = 0;//学校ID   学校配置表
            if (tbzzjs.XQID == 0) tbzzjs.XQID = 0;//学期ID   学期数据表
            if (string.IsNullOrEmpty(tbzzjs.JSLX)) tbzzjs.JSLX = "";//教师类型
            if (string.IsNullOrEmpty(tbzzjs.JSID)) tbzzjs.JSID = "";//教师ID   应用系统用户表
            EDU_ZXDY_04_A05_TBZZJS tbzzjs_model = db_zxdy.EDU_ZXDY_04_A05_TBZZJS.FirstOrDefault(e => e.ID == tbzzjs.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tbzzjs_model != null)
            {
                tbzzjs_model.ID = tbzzjs.ID;//特别值周教师表ID
                tbzzjs_model.SCHOOLID = tbzzjs.SCHOOLID;//学校ID   学校配置表
                tbzzjs_model.XQID = tbzzjs.XQID;//学期ID   学期数据表
                tbzzjs_model.JSLX = tbzzjs.JSLX;//教师类型
                tbzzjs_model.JSID = tbzzjs.JSID;//教师ID   应用系统用户表
                tbzzjs_model.YXRQ = tbzzjs.YXRQ;//有效日期
                db_zxdy.Entry(tbzzjs_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_04_A05_TBZZJS.Add(tbzzjs);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A05_TBZZJS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A05_TBZZJS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A05_TBZZJS tbzzjs)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTbzzjs(tbzzjs);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tbzzjs);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tbzzjs);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A05_TBZZJS tbzzjs= db_zxdy.EDU_ZXDY_04_A05_TBZZJS.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tbzzjs);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A05_TBZZJS tbzzjs)
        {
            InitViewBag();
            try
            {
                
                
                UpdTbzzjs(tbzzjs);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tbzzjs);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tbzzjs);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_04_A05_TBZZJS tbzzjs = db_zxdy.EDU_ZXDY_04_A05_TBZZJS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A05_TBZZJS.Remove(tbzzjs);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_04_A05_TBZZJS tbzzjs = db_zxdy.EDU_ZXDY_04_A05_TBZZJS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A05_TBZZJS.Remove(tbzzjs);
                    db_zxdy.SaveChanges();
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

        private static int Max_TBZZJS_ID = 0;
        private static object syncIDLock = new object();
        //获取特别值周教师表最大ID
        public int GetMax_TBZZJS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TBZZJS_ID == 0)
                {
                    EDU_ZXDY_04_A05_TBZZJS tbzzjs = db_zxdy.EDU_ZXDY_04_A05_TBZZJS.FirstOrDefault();
                    if (tbzzjs == null)
                    {
                        Max_TBZZJS_ID = 1;
                    }
                    else
                    {
                        //Max_TBZZJS_ID = db_zxdy.EDU_ZXDY_04_A05_TBZZJS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TBZZJS_ID++;
                }
                maxId = Max_TBZZJS_ID;
            }
            return maxId;
        }

    }
}
