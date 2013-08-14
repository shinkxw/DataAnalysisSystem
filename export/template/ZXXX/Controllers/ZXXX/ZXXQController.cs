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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class ZXXQController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP> model = db_zxxx.VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZxxq(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            zxxq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZxxq(zxxq);
        }

        public void UpdZxxq(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            //设置默认值
            if (zxxq.ID == 0) zxxq.ID = 0;//编号
            if (zxxq.SCHOOLID == 0) zxxq.SCHOOLID = 0;//学校名
            if (zxxq.XNID == 0) zxxq.XNID = 0;//学年EDU_SYS_01_XN
            if (string.IsNullOrEmpty(zxxq.XQM)) zxxq.XQM = "";//学期码EDU_JY_XQ
            if (string.IsNullOrEmpty(zxxq.XQMC)) zxxq.XQMC = "";//学期名称
            if (string.IsNullOrEmpty(zxxq.XQKSRQ)) zxxq.XQKSRQ = "";//学期开始日期
            if (string.IsNullOrEmpty(zxxq.XQJSRQ)) zxxq.XQJSRQ = "";//学期结束日期
            EDU_ZXXX_05_A01_ZXXQ zxxq_model = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.FirstOrDefault(e => e.ID == zxxq.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zxxq_model != null)
            {
                zxxq_model.ID = zxxq.ID;//编号
                zxxq_model.SCHOOLID = zxxq.SCHOOLID;//学校名
                zxxq_model.XNID = zxxq.XNID;//学年EDU_SYS_01_XN
                zxxq_model.XQM = zxxq.XQM;//学期码EDU_JY_XQ
                zxxq_model.XQMC = zxxq.XQMC;//学期名称
                zxxq_model.XQKSRQ = zxxq.XQKSRQ;//学期开始日期
                zxxq_model.XQJSRQ = zxxq.XQJSRQ;//学期结束日期
                db_zxxx.Entry(zxxq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Add(zxxq);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_05_A01_ZXXQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_05_A01_ZXXQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZxxq(zxxq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_05_A01_ZXXQ zxxq= db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zxxq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            InitViewBag();
            try
            {
                
                
                UpdZxxq(zxxq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxq);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXX_05_A01_ZXXQ zxxq = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Remove(zxxq);
                db_zxxx.SaveChanges();
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
                    EDU_ZXXX_05_A01_ZXXQ zxxq = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Remove(zxxq);
                    db_zxxx.SaveChanges();
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

        private static int Max_ZXXQ_ID = 0;
        private static object syncIDLock = new object();
        //获取学期数据表最大ID
        public int GetMax_ZXXQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZXXQ_ID == 0)
                {
                    EDU_ZXXX_05_A01_ZXXQ zxxq = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.FirstOrDefault();
                    if (zxxq == null)
                    {
                        Max_ZXXQ_ID = 1;
                    }
                    else
                    {
                        //Max_ZXXQ_ID = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZXXQ_ID++;
                }
                maxId = Max_ZXXQ_ID;
            }
            return maxId;
        }

    }
}
