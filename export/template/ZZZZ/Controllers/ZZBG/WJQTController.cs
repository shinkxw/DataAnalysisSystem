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
    public class WJQTController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZBG_04_01_WJQT_DISP> model = db_zzbg.VIEW_EDU_ZZBG_04_01_WJQT_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjqt(EDU_ZZBG_04_01_WJQT wjqt)
        {
            wjqt.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjqt(wjqt);
        }

        public void UpdWjqt(EDU_ZZBG_04_01_WJQT wjqt)
        {
            //设置默认值
            if (wjqt.SCHOOLID == 0) wjqt.SCHOOLID = 0;//学校名学校ID
            if (wjqt.WJID == 0) wjqt.WJID = 0;//文件ID
            if (wjqt.JBRID == 0) wjqt.JBRID = 0;//经办人ID
            if (string.IsNullOrEmpty(wjqt.QTRQ)) wjqt.QTRQ = "";//清退日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            if (string.IsNullOrEmpty(wjqt.QTFW)) wjqt.QTFW = "";//清退范围解释/举例：文件清退所指定的范围 
            if (string.IsNullOrEmpty(wjqt.QTSM)) wjqt.QTSM = "";//清退说明解释/举例：文件清退相关说明或结果 
            if (string.IsNullOrEmpty(wjqt.JBRGH)) wjqt.JBRGH = "";//经办人工号工号
            EDU_ZZBG_04_01_WJQT wjqt_model = db_zzbg.EDU_ZZBG_04_01_WJQT.FirstOrDefault(e => e.SCHOOLID == wjqt.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjqt_model != null)
            {
                wjqt_model.SCHOOLID = wjqt.SCHOOLID;//学校名学校ID
                wjqt_model.WJID = wjqt.WJID;//文件ID
                wjqt_model.JBRID = wjqt.JBRID;//经办人ID
                wjqt_model.QTRQ = wjqt.QTRQ;//清退日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                wjqt_model.QTFW = wjqt.QTFW;//清退范围解释/举例：文件清退所指定的范围 
                wjqt_model.QTSM = wjqt.QTSM;//清退说明解释/举例：文件清退相关说明或结果 
                wjqt_model.JBRGH = wjqt.JBRGH;//经办人工号工号
                db_zzbg.Entry(wjqt_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzbg.EDU_ZZBG_04_01_WJQT.Add(wjqt);
            }
            db_zzbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZBG_04_01_WJQT());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZBG_04_01_WJQT());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZBG_04_01_WJQT wjqt)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjqt(wjqt);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjqt);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjqt);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZBG_04_01_WJQT wjqt= db_zzbg.EDU_ZZBG_04_01_WJQT.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjqt);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZBG_04_01_WJQT wjqt)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjqt(wjqt);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjqt);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjqt);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZBG_04_01_WJQT wjqt = db_zzbg.EDU_ZZBG_04_01_WJQT.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzbg.EDU_ZZBG_04_01_WJQT.Remove(wjqt);
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
                    EDU_ZZBG_04_01_WJQT wjqt = db_zzbg.EDU_ZZBG_04_01_WJQT.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzbg.EDU_ZZBG_04_01_WJQT.Remove(wjqt);
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

        private static int Max_WJQT_ID = 0;
        private static object syncIDLock = new object();
        //获取文件清退数据类表最大ID
        public int GetMax_WJQT_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJQT_ID == 0)
                {
                    EDU_ZZBG_04_01_WJQT wjqt = db_zzbg.EDU_ZZBG_04_01_WJQT.FirstOrDefault();
                    if (wjqt == null)
                    {
                        Max_WJQT_ID = 1;
                    }
                    else
                    {
                        //Max_WJQT_ID = db_zzbg.EDU_ZZBG_04_01_WJQT.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJQT_ID++;
                }
                maxId = Max_WJQT_ID;
            }
            return maxId;
        }

    }
}
