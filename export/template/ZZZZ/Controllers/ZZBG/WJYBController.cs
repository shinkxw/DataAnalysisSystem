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
    public class WJYBController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZBG_02_02_WJYB_DISP> model = db_zzbg.VIEW_EDU_ZZBG_02_02_WJYB_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjyb(EDU_ZZBG_02_02_WJYB wjyb)
        {
            wjyb.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjyb(wjyb);
        }

        public void UpdWjyb(EDU_ZZBG_02_02_WJYB wjyb)
        {
            //设置默认值
            if (wjyb.SCHOOLID == 0) wjyb.SCHOOLID = 0;//学校名学校ID
            if (wjyb.WJID == 0) wjyb.WJID = 0;//文件ID
            if (wjyb.YBRID == 0) wjyb.YBRID = 0;//阅办人ID
            if (string.IsNullOrEmpty(wjyb.YBLBM)) wjyb.YBLBM = "";//阅办类别码值空间：JY/T1001YBLB阅办类别代码 
            if (string.IsNullOrEmpty(wjyb.YBJB)) wjyb.YBJB = "";//阅办级别解释/举例：指文件阅办指定的级别和范围 
            if (string.IsNullOrEmpty(wjyb.YBDW)) wjyb.YBDW = "";//阅办单位单位名称
            if (string.IsNullOrEmpty(wjyb.YBDWBH)) wjyb.YBDWBH = "";//阅办单位编号单位号
            if (string.IsNullOrEmpty(wjyb.YBRGH)) wjyb.YBRGH = "";//阅办人工号
            if (string.IsNullOrEmpty(wjyb.YBYJ)) wjyb.YBYJ = "";//阅办意见解释/举例：文件阅办后填写的相关意见 
            if (string.IsNullOrEmpty(wjyb.YBRQ)) wjyb.YBRQ = "";//阅办日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            EDU_ZZBG_02_02_WJYB wjyb_model = db_zzbg.EDU_ZZBG_02_02_WJYB.FirstOrDefault(e => e.SCHOOLID == wjyb.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjyb_model != null)
            {
                wjyb_model.SCHOOLID = wjyb.SCHOOLID;//学校名学校ID
                wjyb_model.WJID = wjyb.WJID;//文件ID
                wjyb_model.YBRID = wjyb.YBRID;//阅办人ID
                wjyb_model.YBLBM = wjyb.YBLBM;//阅办类别码值空间：JY/T1001YBLB阅办类别代码 
                wjyb_model.YBJB = wjyb.YBJB;//阅办级别解释/举例：指文件阅办指定的级别和范围 
                wjyb_model.YBDW = wjyb.YBDW;//阅办单位单位名称
                wjyb_model.YBDWBH = wjyb.YBDWBH;//阅办单位编号单位号
                wjyb_model.YBRGH = wjyb.YBRGH;//阅办人工号
                wjyb_model.YBYJ = wjyb.YBYJ;//阅办意见解释/举例：文件阅办后填写的相关意见 
                wjyb_model.YBRQ = wjyb.YBRQ;//阅办日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                db_zzbg.Entry(wjyb_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzbg.EDU_ZZBG_02_02_WJYB.Add(wjyb);
            }
            db_zzbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZBG_02_02_WJYB());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZBG_02_02_WJYB());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZBG_02_02_WJYB wjyb)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjyb(wjyb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjyb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjyb);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZBG_02_02_WJYB wjyb= db_zzbg.EDU_ZZBG_02_02_WJYB.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjyb);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZBG_02_02_WJYB wjyb)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjyb(wjyb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjyb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjyb);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZBG_02_02_WJYB wjyb = db_zzbg.EDU_ZZBG_02_02_WJYB.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzbg.EDU_ZZBG_02_02_WJYB.Remove(wjyb);
                db_zzbg.SaveChanges();
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
                    EDU_ZZBG_02_02_WJYB wjyb = db_zzbg.EDU_ZZBG_02_02_WJYB.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzbg.EDU_ZZBG_02_02_WJYB.Remove(wjyb);
                    db_zzbg.SaveChanges();
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

        private static int Max_WJYB_ID = 0;
        private static object syncIDLock = new object();
        //获取文件阅办子类表最大ID
        public int GetMax_WJYB_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJYB_ID == 0)
                {
                    EDU_ZZBG_02_02_WJYB wjyb = db_zzbg.EDU_ZZBG_02_02_WJYB.FirstOrDefault();
                    if (wjyb == null)
                    {
                        Max_WJYB_ID = 1;
                    }
                    else
                    {
                        //Max_WJYB_ID = db_zzbg.EDU_ZZBG_02_02_WJYB.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJYB_ID++;
                }
                maxId = Max_WJYB_ID;
            }
            return maxId;
        }

    }
}
