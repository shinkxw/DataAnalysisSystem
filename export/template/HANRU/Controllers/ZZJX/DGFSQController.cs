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
    public class DGFSQController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddDgfsq(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            dgfsq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdDgfsq(dgfsq);
        }

        public void UpdDgfsq(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            //设置默认值
            if (dgfsq.SCHOOLID == 0) dgfsq.SCHOOLID = 0;//学校ID   学校配置表
            if (dgfsq.XSXXID == 0) dgfsq.XSXXID = 0;//学生ID   学生信息数据表
            if (dgfsq.XNID == 0) dgfsq.XNID = 0;//学年ID   学年表
            if (dgfsq.YJJE == 0) dgfsq.YJJE = 0;//已缴金额
            if (string.IsNullOrEmpty(dgfsq.JFRQ)) dgfsq.JFRQ = "";//缴费日期
            if (string.IsNullOrEmpty(dgfsq.SFYSH)) dgfsq.SFYSH = "";//是否已审核
            if (dgfsq.SHRID == 0) dgfsq.SHRID = 0;//审核人员ID   教职工基本数据子类表
            EDU_ZZJX_08_A01_DGFSQ dgfsq_model = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.FirstOrDefault(e => e.SCHOOLID == dgfsq.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (dgfsq_model != null)
            {
                dgfsq_model.SCHOOLID = dgfsq.SCHOOLID;//学校ID   学校配置表
                dgfsq_model.XSXXID = dgfsq.XSXXID;//学生ID   学生信息数据表
                dgfsq_model.XNID = dgfsq.XNID;//学年ID   学年表
                dgfsq_model.YJJE = dgfsq.YJJE;//已缴金额
                dgfsq_model.JFRQ = dgfsq.JFRQ;//缴费日期
                dgfsq_model.SFYSH = dgfsq.SFYSH;//是否已审核
                dgfsq_model.SHRID = dgfsq.SHRID;//审核人员ID   教职工基本数据子类表
                db_zzjx.Entry(dgfsq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Add(dgfsq);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_08_A01_DGFSQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_08_A01_DGFSQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddDgfsq(dgfsq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(dgfsq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(dgfsq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_08_A01_DGFSQ dgfsq= db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(dgfsq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            InitViewBag();
            try
            {
                
                
                UpdDgfsq(dgfsq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(dgfsq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(dgfsq);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_08_A01_DGFSQ dgfsq = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Remove(dgfsq);
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
                    EDU_ZZJX_08_A01_DGFSQ dgfsq = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Remove(dgfsq);
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

        private static int Max_DGFSQ_ID = 0;
        private static object syncIDLock = new object();
        //获取代管费收取表最大ID
        public int GetMax_DGFSQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_DGFSQ_ID == 0)
                {
                    EDU_ZZJX_08_A01_DGFSQ dgfsq = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.FirstOrDefault();
                    if (dgfsq == null)
                    {
                        Max_DGFSQ_ID = 1;
                    }
                    else
                    {
                        //Max_DGFSQ_ID = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_DGFSQ_ID++;
                }
                maxId = Max_DGFSQ_ID;
            }
            return maxId;
        }

    }
}
