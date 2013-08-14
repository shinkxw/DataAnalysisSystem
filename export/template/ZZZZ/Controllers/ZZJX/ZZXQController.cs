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
    public class ZZXQController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_01_03_ZZXQ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_01_03_ZZXQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzxq(EDU_ZZJX_01_03_ZZXQ zzxq)
        {
            zzxq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzxq(zzxq);
        }

        public void UpdZzxq(EDU_ZZJX_01_03_ZZXQ zzxq)
        {
            //设置默认值
            if (zzxq.ID == 0) zzxq.ID = 0;//编号
            if (zzxq.SchoolID == 0) zzxq.SchoolID = 0;//学校名EDU_ZZXX_01_01_ZZXX
            if (zzxq.XNID == 0) zzxq.XNID = 0;//学年EDU_SYS_01_XN
            if (string.IsNullOrEmpty(zzxq.XQM)) zzxq.XQM = "";//学期码EDU_JY_XQ
            if (string.IsNullOrEmpty(zzxq.XQMC)) zzxq.XQMC = "";//学期名称
            if (string.IsNullOrEmpty(zzxq.XQKSRQ)) zzxq.XQKSRQ = "";//学期开始日期
            if (string.IsNullOrEmpty(zzxq.XQJSRQ)) zzxq.XQJSRQ = "";//学期结束日期
            EDU_ZZJX_01_03_ZZXQ zzxq_model = db_zzjx.EDU_ZZJX_01_03_ZZXQ.FirstOrDefault(e => e.ID == zzxq.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzxq_model != null)
            {
                zzxq_model.ID = zzxq.ID;//编号
                zzxq_model.SchoolID = zzxq.SchoolID;//学校名EDU_ZZXX_01_01_ZZXX
                zzxq_model.XNID = zzxq.XNID;//学年EDU_SYS_01_XN
                zzxq_model.XQM = zzxq.XQM;//学期码EDU_JY_XQ
                zzxq_model.XQMC = zzxq.XQMC;//学期名称
                zzxq_model.XQKSRQ = zzxq.XQKSRQ;//学期开始日期
                zzxq_model.XQJSRQ = zzxq.XQJSRQ;//学期结束日期
                db_zzjx.Entry(zzxq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_01_03_ZZXQ.Add(zzxq);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_01_03_ZZXQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_01_03_ZZXQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_01_03_ZZXQ zzxq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzxq(zzxq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_01_03_ZZXQ zzxq= db_zzjx.EDU_ZZJX_01_03_ZZXQ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzxq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_01_03_ZZXQ zzxq)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzxq(zzxq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxq);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_01_03_ZZXQ zzxq = db_zzjx.EDU_ZZJX_01_03_ZZXQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_01_03_ZZXQ.Remove(zzxq);
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
                    EDU_ZZJX_01_03_ZZXQ zzxq = db_zzjx.EDU_ZZJX_01_03_ZZXQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_01_03_ZZXQ.Remove(zzxq);
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

        private static int Max_ZZXQ_ID = 0;
        private static object syncIDLock = new object();
        //获取学期数据表最大ID
        public int GetMax_ZZXQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZXQ_ID == 0)
                {
                    EDU_ZZJX_01_03_ZZXQ zzxq = db_zzjx.EDU_ZZJX_01_03_ZZXQ.FirstOrDefault();
                    if (zzxq == null)
                    {
                        Max_ZZXQ_ID = 1;
                    }
                    else
                    {
                        //Max_ZZXQ_ID = db_zzjx.EDU_ZZJX_01_03_ZZXQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZXQ_ID++;
                }
                maxId = Max_ZZXQ_ID;
            }
            return maxId;
        }

    }
}
