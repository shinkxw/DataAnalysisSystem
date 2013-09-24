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
    public class JXJHKCQDController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP> model = db_zzjx.VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJxjhkcqd(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            jxjhkcqd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJxjhkcqd(jxjhkcqd);
        }

        public void UpdJxjhkcqd(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            //设置默认值
            if (jxjhkcqd.SCHOOLID == 0) jxjhkcqd.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(jxjhkcqd.KCH)) jxjhkcqd.KCH = "";//课程号   课程数据子类表
            if (string.IsNullOrEmpty(jxjhkcqd.JHBH)) jxjhkcqd.JHBH = "";//计划编号   总体教学计划数据子类表
            if (jxjhkcqd.XQID == 0) jxjhkcqd.XQID = 0;//学期ID   学期数据表
            if (string.IsNullOrEmpty(jxjhkcqd.KCMC)) jxjhkcqd.KCMC = "";//课程名称
            if (string.IsNullOrEmpty(jxjhkcqd.YXKC)) jxjhkcqd.YXKC = "";//预修课程
            if (string.IsNullOrEmpty(jxjhkcqd.SFHXKC)) jxjhkcqd.SFHXKC = "";//是否核心（骨干）   授课方式代码表
            if (string.IsNullOrEmpty(jxjhkcqd.KCFLM)) jxjhkcqd.KCFLM = "";//课程分类码   课程分类代码
            if (string.IsNullOrEmpty(jxjhkcqd.KCSXM)) jxjhkcqd.KCSXM = "";//课程属性码   课程属性代码表
            if (jxjhkcqd.ZXXQ == 0) jxjhkcqd.ZXXQ = 0;//执行学期
            EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd_model = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.FirstOrDefault(e => e.SCHOOLID == jxjhkcqd.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jxjhkcqd_model != null)
            {
                jxjhkcqd_model.SCHOOLID = jxjhkcqd.SCHOOLID;//学校ID   学校配置表
                jxjhkcqd_model.KCH = jxjhkcqd.KCH;//课程号   课程数据子类表
                jxjhkcqd_model.JHBH = jxjhkcqd.JHBH;//计划编号   总体教学计划数据子类表
                jxjhkcqd_model.XQID = jxjhkcqd.XQID;//学期ID   学期数据表
                jxjhkcqd_model.KCMC = jxjhkcqd.KCMC;//课程名称
                jxjhkcqd_model.YXKC = jxjhkcqd.YXKC;//预修课程
                jxjhkcqd_model.SFHXKC = jxjhkcqd.SFHXKC;//是否核心（骨干）   授课方式代码表
                jxjhkcqd_model.KCFLM = jxjhkcqd.KCFLM;//课程分类码   课程分类代码
                jxjhkcqd_model.KCSXM = jxjhkcqd.KCSXM;//课程属性码   课程属性代码表
                jxjhkcqd_model.ZXXQ = jxjhkcqd.ZXXQ;//执行学期
                db_zzjx.Entry(jxjhkcqd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Add(jxjhkcqd);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SKFSLst = JBLDAL.GetJY_SKFSSelLst();
            ViewBag.ZZ_KCFLLst = ZZBLDAL.GetZZ_KCFLSelLst();
            ViewBag.JY_KCSXLst = JBLDAL.GetJY_KCSXSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_03_03_JXJHKCQD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_03_03_JXJHKCQD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJxjhkcqd(jxjhkcqd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jxjhkcqd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jxjhkcqd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd= db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jxjhkcqd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            InitViewBag();
            try
            {
                
                
                UpdJxjhkcqd(jxjhkcqd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jxjhkcqd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jxjhkcqd);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Remove(jxjhkcqd);
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
                    EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Remove(jxjhkcqd);
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

        private static int Max_JXJHKCQD_ID = 0;
        private static object syncIDLock = new object();
        //获取教学计划课程清单数据子类表最大ID
        public int GetMax_JXJHKCQD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JXJHKCQD_ID == 0)
                {
                    EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.FirstOrDefault();
                    if (jxjhkcqd == null)
                    {
                        Max_JXJHKCQD_ID = 1;
                    }
                    else
                    {
                        //Max_JXJHKCQD_ID = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JXJHKCQD_ID++;
                }
                maxId = Max_JXJHKCQD_ID;
            }
            return maxId;
        }

    }
}
