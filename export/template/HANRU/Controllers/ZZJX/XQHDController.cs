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
    public class XQHDController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A06_XQHD_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A06_XQHD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXqhd(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            xqhd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXqhd(xqhd);
        }

        public void UpdXqhd(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            //设置默认值
            if (xqhd.ID == 0) xqhd.ID = 0;//校企互动信息ID
            if (xqhd.SCHOOLID == 0) xqhd.SCHOOLID = 0;//学校ID   学校配置表
            if (xqhd.QYID == 0) xqhd.QYID = 0;//企业ID   校外实习基地信息数据子类表
            if (string.IsNullOrEmpty(xqhd.XXJY)) xqhd.XXJY = "";//企业对学校工作建议
            if (string.IsNullOrEmpty(xqhd.XSJY)) xqhd.XSJY = "";//企业对学生职业技能建议
            if (string.IsNullOrEmpty(xqhd.GLJY)) xqhd.GLJY = "";//实习生管理工作的建议
            if (string.IsNullOrEmpty(xqhd.QTJY)) xqhd.QTJY = "";//其他建议
            if (string.IsNullOrEmpty(xqhd.FKNR)) xqhd.FKNR = "";//反馈内容
            if (xqhd.FKSJ == 0) xqhd.FKSJ = 0;//反馈时间
            EDU_ZZJX_07_A06_XQHD xqhd_model = db_zzjx.EDU_ZZJX_07_A06_XQHD.FirstOrDefault(e => e.ID == xqhd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xqhd_model != null)
            {
                xqhd_model.ID = xqhd.ID;//校企互动信息ID
                xqhd_model.SCHOOLID = xqhd.SCHOOLID;//学校ID   学校配置表
                xqhd_model.QYID = xqhd.QYID;//企业ID   校外实习基地信息数据子类表
                xqhd_model.XXJY = xqhd.XXJY;//企业对学校工作建议
                xqhd_model.XSJY = xqhd.XSJY;//企业对学生职业技能建议
                xqhd_model.GLJY = xqhd.GLJY;//实习生管理工作的建议
                xqhd_model.QTJY = xqhd.QTJY;//其他建议
                xqhd_model.FKNR = xqhd.FKNR;//反馈内容
                xqhd_model.FKSJ = xqhd.FKSJ;//反馈时间
                db_zzjx.Entry(xqhd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A06_XQHD.Add(xqhd);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A06_XQHD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A06_XQHD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXqhd(xqhd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xqhd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xqhd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A06_XQHD xqhd= db_zzjx.EDU_ZZJX_07_A06_XQHD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xqhd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            InitViewBag();
            try
            {
                
                
                UpdXqhd(xqhd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xqhd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xqhd);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A06_XQHD xqhd = db_zzjx.EDU_ZZJX_07_A06_XQHD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A06_XQHD.Remove(xqhd);
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
                    EDU_ZZJX_07_A06_XQHD xqhd = db_zzjx.EDU_ZZJX_07_A06_XQHD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A06_XQHD.Remove(xqhd);
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

        private static int Max_XQHD_ID = 0;
        private static object syncIDLock = new object();
        //获取校企互动表最大ID
        public int GetMax_XQHD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XQHD_ID == 0)
                {
                    EDU_ZZJX_07_A06_XQHD xqhd = db_zzjx.EDU_ZZJX_07_A06_XQHD.FirstOrDefault();
                    if (xqhd == null)
                    {
                        Max_XQHD_ID = 1;
                    }
                    else
                    {
                        //Max_XQHD_ID = db_zzjx.EDU_ZZJX_07_A06_XQHD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XQHD_ID++;
                }
                maxId = Max_XQHD_ID;
            }
            return maxId;
        }

    }
}
