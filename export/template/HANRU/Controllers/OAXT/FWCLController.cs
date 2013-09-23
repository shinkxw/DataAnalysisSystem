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
    public class FWCLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_03_01_FWCL_DISP> model = db_oaxt.VIEW_EDU_OAXT_03_01_FWCL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddFwcl(EDU_OAXT_03_01_FWCL fwcl)
        {
            fwcl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdFwcl(fwcl);
        }

        public void UpdFwcl(EDU_OAXT_03_01_FWCL fwcl)
        {
            //设置默认值
            if (fwcl.SCHOOLID == 0) fwcl.SCHOOLID = 0;//学校名   学校配置表
            if (fwcl.WJID == 0) fwcl.WJID = 0;//文件ID   文件基本数据类表
            if (string.IsNullOrEmpty(fwcl.NGRID)) fwcl.NGRID = "";//拟稿人ID   应用系统用户表
            if (string.IsNullOrEmpty(fwcl.QFRID)) fwcl.QFRID = "";//签发人ID   应用系统用户表
            if (string.IsNullOrEmpty(fwcl.DJRID)) fwcl.DJRID = "";//登记人ID   应用系统用户表
            if (string.IsNullOrEmpty(fwcl.DZRID)) fwcl.DZRID = "";//打字人ID   应用系统用户表
            if (string.IsNullOrEmpty(fwcl.JDRID)) fwcl.JDRID = "";//校对人ID   应用系统用户表
            if (string.IsNullOrEmpty(fwcl.NGRGH)) fwcl.NGRGH = "";//拟稿人工号
            if (string.IsNullOrEmpty(fwcl.NGRQ)) fwcl.NGRQ = "";//拟稿日期
            if (string.IsNullOrEmpty(fwcl.QFRGH)) fwcl.QFRGH = "";//签发人工号
            if (string.IsNullOrEmpty(fwcl.QFRQ)) fwcl.QFRQ = "";//签发日期
            if (string.IsNullOrEmpty(fwcl.FSFW)) fwcl.FSFW = "";//发送范围
            if (string.IsNullOrEmpty(fwcl.FSFSM)) fwcl.FSFSM = "";//发送方式码   发送方式代码表
            if (string.IsNullOrEmpty(fwcl.DJRGH)) fwcl.DJRGH = "";//登记人工号
            if (string.IsNullOrEmpty(fwcl.DJRQ)) fwcl.DJRQ = "";//登记日期
            if (fwcl.FWJS == 0) fwcl.FWJS = 0;//发文件数
            if (string.IsNullOrEmpty(fwcl.GWFWRQ)) fwcl.GWFWRQ = "";//公文发文日期
            if (string.IsNullOrEmpty(fwcl.CLQK)) fwcl.CLQK = "";//处理情况
            if (string.IsNullOrEmpty(fwcl.DZRGH)) fwcl.DZRGH = "";//打字人工号
            if (string.IsNullOrEmpty(fwcl.JDRGH)) fwcl.JDRGH = "";//校对人工号
            if (string.IsNullOrEmpty(fwcl.FZFSM)) fwcl.FZFSM = "";//封装方式码   公文封装方式代码表
            EDU_OAXT_03_01_FWCL fwcl_model = db_oaxt.EDU_OAXT_03_01_FWCL.FirstOrDefault(e => e.SCHOOLID == fwcl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (fwcl_model != null)
            {
                fwcl_model.SCHOOLID = fwcl.SCHOOLID;//学校名   学校配置表
                fwcl_model.WJID = fwcl.WJID;//文件ID   文件基本数据类表
                fwcl_model.NGRID = fwcl.NGRID;//拟稿人ID   应用系统用户表
                fwcl_model.QFRID = fwcl.QFRID;//签发人ID   应用系统用户表
                fwcl_model.DJRID = fwcl.DJRID;//登记人ID   应用系统用户表
                fwcl_model.DZRID = fwcl.DZRID;//打字人ID   应用系统用户表
                fwcl_model.JDRID = fwcl.JDRID;//校对人ID   应用系统用户表
                fwcl_model.NGRGH = fwcl.NGRGH;//拟稿人工号
                fwcl_model.NGRQ = fwcl.NGRQ;//拟稿日期
                fwcl_model.QFRGH = fwcl.QFRGH;//签发人工号
                fwcl_model.QFRQ = fwcl.QFRQ;//签发日期
                fwcl_model.FSFW = fwcl.FSFW;//发送范围
                fwcl_model.FSFSM = fwcl.FSFSM;//发送方式码   发送方式代码表
                fwcl_model.DJRGH = fwcl.DJRGH;//登记人工号
                fwcl_model.DJRQ = fwcl.DJRQ;//登记日期
                fwcl_model.FWJS = fwcl.FWJS;//发文件数
                fwcl_model.GWFWRQ = fwcl.GWFWRQ;//公文发文日期
                fwcl_model.CLQK = fwcl.CLQK;//处理情况
                fwcl_model.DZRGH = fwcl.DZRGH;//打字人工号
                fwcl_model.JDRGH = fwcl.JDRGH;//校对人工号
                fwcl_model.FZFSM = fwcl.FZFSM;//封装方式码   公文封装方式代码表
                db_oaxt.Entry(fwcl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_oaxt.EDU_OAXT_03_01_FWCL.Add(fwcl);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_FSFSLst = JBLDAL.GetJY_FSFSSelLst();
            ViewBag.JY_GWFZFSLst = JBLDAL.GetJY_GWFZFSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_03_01_FWCL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_03_01_FWCL());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_03_01_FWCL fwcl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddFwcl(fwcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fwcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fwcl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_03_01_FWCL fwcl= db_oaxt.EDU_OAXT_03_01_FWCL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(fwcl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_03_01_FWCL fwcl)
        {
            InitViewBag();
            try
            {
                
                
                UpdFwcl(fwcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fwcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fwcl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_03_01_FWCL fwcl = db_oaxt.EDU_OAXT_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_03_01_FWCL.Remove(fwcl);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_03_01_FWCL fwcl = db_oaxt.EDU_OAXT_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_03_01_FWCL.Remove(fwcl);
                    db_oaxt.SaveChanges();
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

        private static int Max_FWCL_ID = 0;
        private static object syncIDLock = new object();
        //获取发文处理子类表最大ID
        public int GetMax_FWCL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_FWCL_ID == 0)
                {
                    EDU_OAXT_03_01_FWCL fwcl = db_oaxt.EDU_OAXT_03_01_FWCL.FirstOrDefault();
                    if (fwcl == null)
                    {
                        Max_FWCL_ID = 1;
                    }
                    else
                    {
                        //Max_FWCL_ID = db_oaxt.EDU_OAXT_03_01_FWCL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_FWCL_ID++;
                }
                maxId = Max_FWCL_ID;
            }
            return maxId;
        }

    }
}
