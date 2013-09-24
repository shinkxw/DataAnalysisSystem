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
    public class JXJHFLXFYQController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_03_02_JXJHFLXFYQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJxjhflxfyq(EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq)
        {
            jxjhflxfyq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJxjhflxfyq(jxjhflxfyq);
        }

        public void UpdJxjhflxfyq(EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq)
        {
            //设置默认值
            if (jxjhflxfyq.SCHOOLID == 0) jxjhflxfyq.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(jxjhflxfyq.KCFLM)) jxjhflxfyq.KCFLM = "";//课程分类码   课程分类代码
            if (jxjhflxfyq.XFYQ == 0) jxjhflxfyq.XFYQ = 0;//学分要求
            if (string.IsNullOrEmpty(jxjhflxfyq.JHBH)) jxjhflxfyq.JHBH = "";//计划编号   总体教学计划数据子类表
            EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq_model = db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.FirstOrDefault(e => e.SCHOOLID == jxjhflxfyq.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jxjhflxfyq_model != null)
            {
                jxjhflxfyq_model.SCHOOLID = jxjhflxfyq.SCHOOLID;//学校ID   学校配置表
                jxjhflxfyq_model.KCFLM = jxjhflxfyq.KCFLM;//课程分类码   课程分类代码
                jxjhflxfyq_model.XFYQ = jxjhflxfyq.XFYQ;//学分要求
                jxjhflxfyq_model.JHBH = jxjhflxfyq.JHBH;//计划编号   总体教学计划数据子类表
                db_zzjx.Entry(jxjhflxfyq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.Add(jxjhflxfyq);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZZ_KCFLLst = ZZBLDAL.GetZZ_KCFLSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_03_02_JXJHFLXFYQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_03_02_JXJHFLXFYQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJxjhflxfyq(jxjhflxfyq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jxjhflxfyq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jxjhflxfyq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq= db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jxjhflxfyq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq)
        {
            InitViewBag();
            try
            {
                
                
                UpdJxjhflxfyq(jxjhflxfyq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jxjhflxfyq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jxjhflxfyq);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq = db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.Remove(jxjhflxfyq);
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
                    EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq = db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.Remove(jxjhflxfyq);
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

        private static int Max_JXJHFLXFYQ_ID = 0;
        private static object syncIDLock = new object();
        //获取教学计划分类学分要求数据子类最大ID
        public int GetMax_JXJHFLXFYQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JXJHFLXFYQ_ID == 0)
                {
                    EDU_ZZJX_03_02_JXJHFLXFYQ jxjhflxfyq = db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.FirstOrDefault();
                    if (jxjhflxfyq == null)
                    {
                        Max_JXJHFLXFYQ_ID = 1;
                    }
                    else
                    {
                        //Max_JXJHFLXFYQ_ID = db_zzjx.EDU_ZZJX_03_02_JXJHFLXFYQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JXJHFLXFYQ_ID++;
                }
                maxId = Max_JXJHFLXFYQ_ID;
            }
            return maxId;
        }

    }
}
