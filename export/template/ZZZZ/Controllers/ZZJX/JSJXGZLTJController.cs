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
    public class JSJXGZLTJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_05_02_JSJXGZLTJ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_05_02_JSJXGZLTJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJsjxgzltj(EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj)
        {
            jsjxgzltj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJsjxgzltj(jsjxgzltj);
        }

        public void UpdJsjxgzltj(EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj)
        {
            //设置默认值
            if (jsjxgzltj.SCHOOLID == 0) jsjxgzltj.SCHOOLID = 0;//学校ID
            if (jsjxgzltj.JSID == 0) jsjxgzltj.JSID = 0;//教师ID
            if (jsjxgzltj.XQID == 0) jsjxgzltj.XQID = 0;//学期ID
            if (string.IsNullOrEmpty(jsjxgzltj.XQMC)) jsjxgzltj.XQMC = "";//学期名称
            if (string.IsNullOrEmpty(jsjxgzltj.JSXM)) jsjxgzltj.JSXM = "";//教师姓名
            if (jsjxgzltj.RJKCMS == 0) jsjxgzltj.RJKCMS = 0;//任教课程门数
            if (jsjxgzltj.LLZXS == 0) jsjxgzltj.LLZXS = 0;//理论总学时
            if (jsjxgzltj.SJZXS == 0) jsjxgzltj.SJZXS = 0;//实践总学时
            if (jsjxgzltj.QTZXS == 0) jsjxgzltj.QTZXS = 0;//其他总学时
            if (jsjxgzltj.XSZS == 0) jsjxgzltj.XSZS = 0;//学生总数
            if (jsjxgzltj.ZXFS == 0) jsjxgzltj.ZXFS = 0;//总学分数
            EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj_model = db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.FirstOrDefault(e => e.SCHOOLID == jsjxgzltj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jsjxgzltj_model != null)
            {
                jsjxgzltj_model.SCHOOLID = jsjxgzltj.SCHOOLID;//学校ID
                jsjxgzltj_model.JSID = jsjxgzltj.JSID;//教师ID
                jsjxgzltj_model.XQID = jsjxgzltj.XQID;//学期ID
                jsjxgzltj_model.XQMC = jsjxgzltj.XQMC;//学期名称
                jsjxgzltj_model.JSXM = jsjxgzltj.JSXM;//教师姓名
                jsjxgzltj_model.RJKCMS = jsjxgzltj.RJKCMS;//任教课程门数
                jsjxgzltj_model.LLZXS = jsjxgzltj.LLZXS;//理论总学时
                jsjxgzltj_model.SJZXS = jsjxgzltj.SJZXS;//实践总学时
                jsjxgzltj_model.QTZXS = jsjxgzltj.QTZXS;//其他总学时
                jsjxgzltj_model.XSZS = jsjxgzltj.XSZS;//学生总数
                jsjxgzltj_model.ZXFS = jsjxgzltj.ZXFS;//总学分数
                db_zzjx.Entry(jsjxgzltj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.Add(jsjxgzltj);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_05_02_JSJXGZLTJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_05_02_JSJXGZLTJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJsjxgzltj(jsjxgzltj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jsjxgzltj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jsjxgzltj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj= db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jsjxgzltj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJsjxgzltj(jsjxgzltj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jsjxgzltj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jsjxgzltj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj = db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.Remove(jsjxgzltj);
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
                    EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj = db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.Remove(jsjxgzltj);
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

        private static int Max_JSJXGZLTJ_ID = 0;
        private static object syncIDLock = new object();
        //获取教师教学工作量统计数据子类表最大ID
        public int GetMax_JSJXGZLTJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JSJXGZLTJ_ID == 0)
                {
                    EDU_ZZJX_05_02_JSJXGZLTJ jsjxgzltj = db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.FirstOrDefault();
                    if (jsjxgzltj == null)
                    {
                        Max_JSJXGZLTJ_ID = 1;
                    }
                    else
                    {
                        //Max_JSJXGZLTJ_ID = db_zzjx.EDU_ZZJX_05_02_JSJXGZLTJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JSJXGZLTJ_ID++;
                }
                maxId = Max_JSJXGZLTJ_ID;
            }
            return maxId;
        }

    }
}
