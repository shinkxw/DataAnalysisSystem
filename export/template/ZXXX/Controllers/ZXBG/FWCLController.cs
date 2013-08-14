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
    public class FWCLController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_03_01_FWCL_DISP> model = db_zxbg.VIEW_EDU_ZXBG_03_01_FWCL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddFwcl(EDU_ZXBG_03_01_FWCL fwcl)
        {
            fwcl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdFwcl(fwcl);
        }

        public void UpdFwcl(EDU_ZXBG_03_01_FWCL fwcl)
        {
            //设置默认值
            if (fwcl.SCHOOLID == 0) fwcl.SCHOOLID = 0;//学校名学校ID
            if (fwcl.WJID == 0) fwcl.WJID = 0;//文件ID
            if (fwcl.NGRID == 0) fwcl.NGRID = 0;//拟稿人ID
            if (fwcl.QFRID == 0) fwcl.QFRID = 0;//签发人ID
            if (fwcl.DJRID == 0) fwcl.DJRID = 0;//登记人ID
            if (fwcl.DZRID == 0) fwcl.DZRID = 0;//打字人ID
            if (fwcl.JDRID == 0) fwcl.JDRID = 0;//校对人ID
            if (string.IsNullOrEmpty(fwcl.NGRGH)) fwcl.NGRGH = "";//拟稿人工号
            if (string.IsNullOrEmpty(fwcl.NGRQ)) fwcl.NGRQ = "";//拟稿日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            if (string.IsNullOrEmpty(fwcl.QFRGH)) fwcl.QFRGH = "";//签发人工号工号
            if (string.IsNullOrEmpty(fwcl.QFRQ)) fwcl.QFRQ = "";//签发日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            if (string.IsNullOrEmpty(fwcl.FSFW)) fwcl.FSFW = "";//发送范围解释/举例：签发文件的指定发送范围 
            if (string.IsNullOrEmpty(fwcl.FSFSM)) fwcl.FSFSM = "";//发送方式码值空间：JY/T1001FSFS发送方式代码 
            if (string.IsNullOrEmpty(fwcl.DJRGH)) fwcl.DJRGH = "";//登记人工号工号
            if (string.IsNullOrEmpty(fwcl.DJRQ)) fwcl.DJRQ = "";//登记日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            if (fwcl.FWJS == 0) fwcl.FWJS = 0;//发文件数解释/举例：发送文件的数量，单位：份 
            if (string.IsNullOrEmpty(fwcl.GWFWRQ)) fwcl.GWFWRQ = "";//公文发文日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            if (string.IsNullOrEmpty(fwcl.CLQK)) fwcl.CLQK = "";//处理情况解释/举例：指对新制发的文件进行合理的处理 
            if (string.IsNullOrEmpty(fwcl.DZRGH)) fwcl.DZRGH = "";//打字人工号学号或工号
            if (string.IsNullOrEmpty(fwcl.JDRGH)) fwcl.JDRGH = "";//校对人工号学号或工号
            if (string.IsNullOrEmpty(fwcl.FZFSM)) fwcl.FZFSM = "";//封装方式码值空间：JY/T1001GWFZFS封装方式代码 
            EDU_ZXBG_03_01_FWCL fwcl_model = db_zxbg.EDU_ZXBG_03_01_FWCL.FirstOrDefault(e => e.SCHOOLID == fwcl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (fwcl_model != null)
            {
                fwcl_model.SCHOOLID = fwcl.SCHOOLID;//学校名学校ID
                fwcl_model.WJID = fwcl.WJID;//文件ID
                fwcl_model.NGRID = fwcl.NGRID;//拟稿人ID
                fwcl_model.QFRID = fwcl.QFRID;//签发人ID
                fwcl_model.DJRID = fwcl.DJRID;//登记人ID
                fwcl_model.DZRID = fwcl.DZRID;//打字人ID
                fwcl_model.JDRID = fwcl.JDRID;//校对人ID
                fwcl_model.NGRGH = fwcl.NGRGH;//拟稿人工号
                fwcl_model.NGRQ = fwcl.NGRQ;//拟稿日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                fwcl_model.QFRGH = fwcl.QFRGH;//签发人工号工号
                fwcl_model.QFRQ = fwcl.QFRQ;//签发日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                fwcl_model.FSFW = fwcl.FSFW;//发送范围解释/举例：签发文件的指定发送范围 
                fwcl_model.FSFSM = fwcl.FSFSM;//发送方式码值空间：JY/T1001FSFS发送方式代码 
                fwcl_model.DJRGH = fwcl.DJRGH;//登记人工号工号
                fwcl_model.DJRQ = fwcl.DJRQ;//登记日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                fwcl_model.FWJS = fwcl.FWJS;//发文件数解释/举例：发送文件的数量，单位：份 
                fwcl_model.GWFWRQ = fwcl.GWFWRQ;//公文发文日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                fwcl_model.CLQK = fwcl.CLQK;//处理情况解释/举例：指对新制发的文件进行合理的处理 
                fwcl_model.DZRGH = fwcl.DZRGH;//打字人工号学号或工号
                fwcl_model.JDRGH = fwcl.JDRGH;//校对人工号学号或工号
                fwcl_model.FZFSM = fwcl.FZFSM;//封装方式码值空间：JY/T1001GWFZFS封装方式代码 
                db_zxbg.Entry(fwcl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_03_01_FWCL.Add(fwcl);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_03_01_FWCL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_03_01_FWCL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_03_01_FWCL fwcl)
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
            
            EDU_ZXBG_03_01_FWCL fwcl= db_zxbg.EDU_ZXBG_03_01_FWCL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(fwcl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_03_01_FWCL fwcl)
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

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_03_01_FWCL fwcl = db_zxbg.EDU_ZXBG_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_03_01_FWCL.Remove(fwcl);
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
                    EDU_ZXBG_03_01_FWCL fwcl = db_zxbg.EDU_ZXBG_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_03_01_FWCL.Remove(fwcl);
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
                    EDU_ZXBG_03_01_FWCL fwcl = db_zxbg.EDU_ZXBG_03_01_FWCL.FirstOrDefault();
                    if (fwcl == null)
                    {
                        Max_FWCL_ID = 1;
                    }
                    else
                    {
                        //Max_FWCL_ID = db_zxbg.EDU_ZXBG_03_01_FWCL.Max(e => e.ID) + 1;
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
