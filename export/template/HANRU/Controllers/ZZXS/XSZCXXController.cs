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
    public class XSZCXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_07_03_XSZCXX_DISP> model = db_zzxs.VIEW_EDU_ZZXS_07_03_XSZCXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddXszcxx(EDU_ZZXS_07_03_XSZCXX xszcxx)
        {
            xszcxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXszcxx(xszcxx);
        }

        public void UpdXszcxx(EDU_ZZXS_07_03_XSZCXX xszcxx)
        {
            //设置默认值
            if (xszcxx.XSXXID == 0) xszcxx.XSXXID = 0;//学生ID   学生信息数据表
            if (xszcxx.SCHOOLID == 0) xszcxx.SCHOOLID = 0;//学校ID   学校配置表
            if (xszcxx.XQID == 0) xszcxx.XQID = 0;//学期ID   学期数据表
            if (string.IsNullOrEmpty(xszcxx.ZCZKM)) xszcxx.ZCZKM = "";//注册状况码   注册状况代码表
            if (string.IsNullOrEmpty(xszcxx.ZCRQ)) xszcxx.ZCRQ = "";//注册日期
            if (string.IsNullOrEmpty(xszcxx.BDRQ)) xszcxx.BDRQ = "";//报到日期
            if (string.IsNullOrEmpty(xszcxx.WZCYY)) xszcxx.WZCYY = "";//未注册原因
            if (string.IsNullOrEmpty(xszcxx.WZCWBDQX)) xszcxx.WZCWBDQX = "";//未注册/未报到去向
            if (string.IsNullOrEmpty(xszcxx.SFQJ)) xszcxx.SFQJ = "";//是否请假   是否标志代码表
            if (string.IsNullOrEmpty(xszcxx.WASZCXQM)) xszcxx.WASZCXQM = "";//未按时注册学期码   学期代码表
            EDU_ZZXS_07_03_XSZCXX xszcxx_model = db_zzxs.EDU_ZZXS_07_03_XSZCXX.FirstOrDefault(e => e.XSXXID == xszcxx.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xszcxx_model != null)
            {
                xszcxx_model.XSXXID = xszcxx.XSXXID;//学生ID   学生信息数据表
                xszcxx_model.SCHOOLID = xszcxx.SCHOOLID;//学校ID   学校配置表
                xszcxx_model.XQID = xszcxx.XQID;//学期ID   学期数据表
                xszcxx_model.ZCZKM = xszcxx.ZCZKM;//注册状况码   注册状况代码表
                xszcxx_model.ZCRQ = xszcxx.ZCRQ;//注册日期
                xszcxx_model.BDRQ = xszcxx.BDRQ;//报到日期
                xszcxx_model.WZCYY = xszcxx.WZCYY;//未注册原因
                xszcxx_model.WZCWBDQX = xszcxx.WZCWBDQX;//未注册/未报到去向
                xszcxx_model.SFQJ = xszcxx.SFQJ;//是否请假   是否标志代码表
                xszcxx_model.WASZCXQM = xszcxx.WASZCXQM;//未按时注册学期码   学期代码表
                db_zzxs.Entry(xszcxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_07_03_XSZCXX.Add(xszcxx);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_ZCZKLst = JBLDAL.GetJY_ZCZKSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_XQLst = JBLDAL.GetJY_XQSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_07_03_XSZCXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_07_03_XSZCXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_07_03_XSZCXX xszcxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXszcxx(xszcxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xszcxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xszcxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_07_03_XSZCXX xszcxx= db_zzxs.EDU_ZZXS_07_03_XSZCXX.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xszcxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_07_03_XSZCXX xszcxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXszcxx(xszcxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xszcxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xszcxx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_07_03_XSZCXX xszcxx = db_zzxs.EDU_ZZXS_07_03_XSZCXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_07_03_XSZCXX.Remove(xszcxx);
                db_zzxs.SaveChanges();
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
                    EDU_ZZXS_07_03_XSZCXX xszcxx = db_zzxs.EDU_ZZXS_07_03_XSZCXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_07_03_XSZCXX.Remove(xszcxx);
                    db_zzxs.SaveChanges();
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

        private static int Max_XSZCXX_ID = 0;
        private static object syncIDLock = new object();
        //获取学生注册信息数据子类表最大ID
        public int GetMax_XSZCXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSZCXX_ID == 0)
                {
                    EDU_ZZXS_07_03_XSZCXX xszcxx = db_zzxs.EDU_ZZXS_07_03_XSZCXX.FirstOrDefault();
                    if (xszcxx == null)
                    {
                        Max_XSZCXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSZCXX_ID = db_zzxs.EDU_ZZXS_07_03_XSZCXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSZCXX_ID++;
                }
                maxId = Max_XSZCXX_ID;
            }
            return maxId;
        }

    }
}
