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
    public class SWCLController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_02_01_SWCL_DISP> model = db_zxbg.VIEW_EDU_ZXBG_02_01_SWCL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSwcl(EDU_ZXBG_02_01_SWCL swcl)
        {
            swcl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSwcl(swcl);
        }

        public void UpdSwcl(EDU_ZXBG_02_01_SWCL swcl)
        {
            //设置默认值
            if (swcl.SCHOOLID == 0) swcl.SCHOOLID = 0;//学校名学校ID
            if (swcl.WJID == 0) swcl.WJID = 0;//文件ID
            if (swcl.QSRID == 0) swcl.QSRID = 0;//签收人ID
            if (swcl.CFRID == 0) swcl.CFRID = 0;//拆封人ID
            if (swcl.DJRID == 0) swcl.DJRID = 0;//登记人ID
            if (string.IsNullOrEmpty(swcl.QSRGH)) swcl.QSRGH = "";//签收人工号工号
            if (string.IsNullOrEmpty(swcl.CFRGH)) swcl.CFRGH = "";//拆封人工号工号
            if (string.IsNullOrEmpty(swcl.DJRGH)) swcl.DJRGH = "";//登记人工号工号
            if (string.IsNullOrEmpty(swcl.SWRQ)) swcl.SWRQ = "";//收文日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            if (string.IsNullOrEmpty(swcl.LWDW)) swcl.LWDW = "";//来文单位单位名称
            if (swcl.FS == 0) swcl.FS = 0;//份数单位：份 
            if (string.IsNullOrEmpty(swcl.CLQK)) swcl.CLQK = "";//处理情况解释/举例：填写文件需要处理的情况和结果，包括领导批示、承办部门等 
            if (swcl.FYFS == 0) swcl.FYFS = 0;//翻印份数单位：份 
            EDU_ZXBG_02_01_SWCL swcl_model = db_zxbg.EDU_ZXBG_02_01_SWCL.FirstOrDefault(e => e.SCHOOLID == swcl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (swcl_model != null)
            {
                swcl_model.SCHOOLID = swcl.SCHOOLID;//学校名学校ID
                swcl_model.WJID = swcl.WJID;//文件ID
                swcl_model.QSRID = swcl.QSRID;//签收人ID
                swcl_model.CFRID = swcl.CFRID;//拆封人ID
                swcl_model.DJRID = swcl.DJRID;//登记人ID
                swcl_model.QSRGH = swcl.QSRGH;//签收人工号工号
                swcl_model.CFRGH = swcl.CFRGH;//拆封人工号工号
                swcl_model.DJRGH = swcl.DJRGH;//登记人工号工号
                swcl_model.SWRQ = swcl.SWRQ;//收文日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                swcl_model.LWDW = swcl.LWDW;//来文单位单位名称
                swcl_model.FS = swcl.FS;//份数单位：份 
                swcl_model.CLQK = swcl.CLQK;//处理情况解释/举例：填写文件需要处理的情况和结果，包括领导批示、承办部门等 
                swcl_model.FYFS = swcl.FYFS;//翻印份数单位：份 
                db_zxbg.Entry(swcl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_02_01_SWCL.Add(swcl);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_02_01_SWCL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_02_01_SWCL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_02_01_SWCL swcl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSwcl(swcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(swcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(swcl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_02_01_SWCL swcl= db_zxbg.EDU_ZXBG_02_01_SWCL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(swcl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_02_01_SWCL swcl)
        {
            InitViewBag();
            try
            {
                
                
                UpdSwcl(swcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(swcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(swcl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_02_01_SWCL swcl = db_zxbg.EDU_ZXBG_02_01_SWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_02_01_SWCL.Remove(swcl);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_02_01_SWCL swcl = db_zxbg.EDU_ZXBG_02_01_SWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_02_01_SWCL.Remove(swcl);
                    db_zxbg.SaveChanges();
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

        private static int Max_SWCL_ID = 0;
        private static object syncIDLock = new object();
        //获取收文处理子类表最大ID
        public int GetMax_SWCL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SWCL_ID == 0)
                {
                    EDU_ZXBG_02_01_SWCL swcl = db_zxbg.EDU_ZXBG_02_01_SWCL.FirstOrDefault();
                    if (swcl == null)
                    {
                        Max_SWCL_ID = 1;
                    }
                    else
                    {
                        //Max_SWCL_ID = db_zxbg.EDU_ZXBG_02_01_SWCL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SWCL_ID++;
                }
                maxId = Max_SWCL_ID;
            }
            return maxId;
        }

    }
}
