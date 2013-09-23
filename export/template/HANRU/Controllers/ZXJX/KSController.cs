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
    public class KSController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_05_A01_KS_DISP> model = db_zxjx.VIEW_EDU_ZXJX_05_A01_KS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddKs(EDU_ZXJX_05_A01_KS ks)
        {
            ks.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKs(ks);
        }

        public void UpdKs(EDU_ZXJX_05_A01_KS ks)
        {
            //设置默认值
            if (ks.ID == 0) ks.ID = 0;//编号
            if (ks.SCHOOLID == 0) ks.SCHOOLID = 0;//学校名   学校配置表
            if (ks.XNID == 0) ks.XNID = 0;//学年   学年表
            if (ks.XQID == 0) ks.XQID = 0;//学期   学期数据表
            if (string.IsNullOrEmpty(ks.KSMC)) ks.KSMC = "";//考试名称
            if (ks.KSKSSJ == 0) ks.KSKSSJ = 0;//考试开始时间
            if (ks.KSJSSJ == 0) ks.KSJSSJ = 0;//考试结束时间
            if (ks.DFKSSJ == 0) ks.DFKSSJ = 0;//登分开始时间
            if (ks.DFJSSJ == 0) ks.DFJSSJ = 0;//登分结束时间
            if (ks.DFKS == 0) ks.DFKS = 0;//登分方式
            EDU_ZXJX_05_A01_KS ks_model = db_zxjx.EDU_ZXJX_05_A01_KS.FirstOrDefault(e => e.ID == ks.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (ks_model != null)
            {
                ks_model.ID = ks.ID;//编号
                ks_model.SCHOOLID = ks.SCHOOLID;//学校名   学校配置表
                ks_model.XNID = ks.XNID;//学年   学年表
                ks_model.XQID = ks.XQID;//学期   学期数据表
                ks_model.KSMC = ks.KSMC;//考试名称
                ks_model.KSKSSJ = ks.KSKSSJ;//考试开始时间
                ks_model.KSJSSJ = ks.KSJSSJ;//考试结束时间
                ks_model.DFKSSJ = ks.DFKSSJ;//登分开始时间
                ks_model.DFJSSJ = ks.DFJSSJ;//登分结束时间
                ks_model.DFKS = ks.DFKS;//登分方式
                db_zxjx.Entry(ks_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjx.EDU_ZXJX_05_A01_KS.Add(ks);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_05_A01_KS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_05_A01_KS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_05_A01_KS ks)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKs(ks);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(ks);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(ks);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_05_A01_KS ks= db_zxjx.EDU_ZXJX_05_A01_KS.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(ks);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_05_A01_KS ks)
        {
            InitViewBag();
            try
            {
                
                
                UpdKs(ks);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(ks);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(ks);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXJX_05_A01_KS ks = db_zxjx.EDU_ZXJX_05_A01_KS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_05_A01_KS.Remove(ks);
                db_zxjx.SaveChanges();
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
                    EDU_ZXJX_05_A01_KS ks = db_zxjx.EDU_ZXJX_05_A01_KS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_05_A01_KS.Remove(ks);
                    db_zxjx.SaveChanges();
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

        private static int Max_KS_ID = 0;
        private static object syncIDLock = new object();
        //获取考试数据表最大ID
        public int GetMax_KS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KS_ID == 0)
                {
                    EDU_ZXJX_05_A01_KS ks = db_zxjx.EDU_ZXJX_05_A01_KS.FirstOrDefault();
                    if (ks == null)
                    {
                        Max_KS_ID = 1;
                    }
                    else
                    {
                        //Max_KS_ID = db_zxjx.EDU_ZXJX_05_A01_KS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KS_ID++;
                }
                maxId = Max_KS_ID;
            }
            return maxId;
        }

    }
}
