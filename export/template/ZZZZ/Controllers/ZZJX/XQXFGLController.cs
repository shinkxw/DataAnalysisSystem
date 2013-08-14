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
    public class XQXFGLController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP> model = db_zzjx.VIEW_EDU_ZZJX_03_A01_XQXFGL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXqxfgl(EDU_ZZJX_03_A01_XQXFGL xqxfgl)
        {
            xqxfgl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXqxfgl(xqxfgl);
        }

        public void UpdXqxfgl(EDU_ZZJX_03_A01_XQXFGL xqxfgl)
        {
            //设置默认值
            if (xqxfgl.SCHOOLID == 0) xqxfgl.SCHOOLID = 0;//学校ID
            if (xqxfgl.XQID == 0) xqxfgl.XQID = 0;//学期ID
            if (string.IsNullOrEmpty(xqxfgl.JHBH)) xqxfgl.JHBH = "";//计划编号
            if (xqxfgl.ZDXF == 0) xqxfgl.ZDXF = 0;//最高学分
            if (xqxfgl.ZGXF == 0) xqxfgl.ZGXF = 0;//最低学分
            EDU_ZZJX_03_A01_XQXFGL xqxfgl_model = db_zzjx.EDU_ZZJX_03_A01_XQXFGL.FirstOrDefault(e => e.SCHOOLID == xqxfgl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xqxfgl_model != null)
            {
                xqxfgl_model.SCHOOLID = xqxfgl.SCHOOLID;//学校ID
                xqxfgl_model.XQID = xqxfgl.XQID;//学期ID
                xqxfgl_model.JHBH = xqxfgl.JHBH;//计划编号
                xqxfgl_model.ZDXF = xqxfgl.ZDXF;//最高学分
                xqxfgl_model.ZGXF = xqxfgl.ZGXF;//最低学分
                db_zzjx.Entry(xqxfgl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_03_A01_XQXFGL.Add(xqxfgl);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_03_A01_XQXFGL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_03_A01_XQXFGL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_03_A01_XQXFGL xqxfgl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXqxfgl(xqxfgl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xqxfgl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xqxfgl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_03_A01_XQXFGL xqxfgl= db_zzjx.EDU_ZZJX_03_A01_XQXFGL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xqxfgl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_03_A01_XQXFGL xqxfgl)
        {
            InitViewBag();
            try
            {
                
                
                UpdXqxfgl(xqxfgl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xqxfgl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xqxfgl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_03_A01_XQXFGL xqxfgl = db_zzjx.EDU_ZZJX_03_A01_XQXFGL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_03_A01_XQXFGL.Remove(xqxfgl);
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
                    EDU_ZZJX_03_A01_XQXFGL xqxfgl = db_zzjx.EDU_ZZJX_03_A01_XQXFGL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_03_A01_XQXFGL.Remove(xqxfgl);
                    db_zzjx.SaveChanges();
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

        private static int Max_XQXFGL_ID = 0;
        private static object syncIDLock = new object();
        //获取学期学分管理表最大ID
        public int GetMax_XQXFGL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XQXFGL_ID == 0)
                {
                    EDU_ZZJX_03_A01_XQXFGL xqxfgl = db_zzjx.EDU_ZZJX_03_A01_XQXFGL.FirstOrDefault();
                    if (xqxfgl == null)
                    {
                        Max_XQXFGL_ID = 1;
                    }
                    else
                    {
                        //Max_XQXFGL_ID = db_zzjx.EDU_ZZJX_03_A01_XQXFGL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XQXFGL_ID++;
                }
                maxId = Max_XQXFGL_ID;
            }
            return maxId;
        }

    }
}
