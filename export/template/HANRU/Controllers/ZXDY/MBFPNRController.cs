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
    public class MBFPNRController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddMbfpnr(EDU_ZXDY_04_A07_MBFPNR mbfpnr)
        {
            mbfpnr.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdMbfpnr(mbfpnr);
        }

        public void UpdMbfpnr(EDU_ZXDY_04_A07_MBFPNR mbfpnr)
        {
            //设置默认值
            if (mbfpnr.ID == 0) mbfpnr.ID = 0;//模板内容表ID
            if (mbfpnr.MBID == 0) mbfpnr.MBID = 0;//模板表ID   岗位分配模板表
            if (mbfpnr.GZR == 0) mbfpnr.GZR = 0;//工作日
            if (mbfpnr.GWID == 0) mbfpnr.GWID = 0;//岗位ID   值周岗位数据表
            if (mbfpnr.DYRYH == 0) mbfpnr.DYRYH = 0;//对应人员号
            EDU_ZXDY_04_A07_MBFPNR mbfpnr_model = db_zxdy.EDU_ZXDY_04_A07_MBFPNR.FirstOrDefault(e => e.ID == mbfpnr.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (mbfpnr_model != null)
            {
                mbfpnr_model.ID = mbfpnr.ID;//模板内容表ID
                mbfpnr_model.MBID = mbfpnr.MBID;//模板表ID   岗位分配模板表
                mbfpnr_model.GZR = mbfpnr.GZR;//工作日
                mbfpnr_model.GWID = mbfpnr.GWID;//岗位ID   值周岗位数据表
                mbfpnr_model.DYRYH = mbfpnr.DYRYH;//对应人员号
                db_zxdy.Entry(mbfpnr_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_04_A07_MBFPNR.Add(mbfpnr);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A07_MBFPNR());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A07_MBFPNR());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A07_MBFPNR mbfpnr)
        {
            InitViewBag();
            try
            {
                //
                //
                AddMbfpnr(mbfpnr);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(mbfpnr);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(mbfpnr);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A07_MBFPNR mbfpnr= db_zxdy.EDU_ZXDY_04_A07_MBFPNR.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(mbfpnr);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A07_MBFPNR mbfpnr)
        {
            InitViewBag();
            try
            {
                
                
                UpdMbfpnr(mbfpnr);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(mbfpnr);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(mbfpnr);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXDY_04_A07_MBFPNR mbfpnr = db_zxdy.EDU_ZXDY_04_A07_MBFPNR.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A07_MBFPNR.Remove(mbfpnr);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_04_A07_MBFPNR mbfpnr = db_zxdy.EDU_ZXDY_04_A07_MBFPNR.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A07_MBFPNR.Remove(mbfpnr);
                    db_zxdy.SaveChanges();
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

        private static int Max_MBFPNR_ID = 0;
        private static object syncIDLock = new object();
        //获取模板分配内容表最大ID
        public int GetMax_MBFPNR_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_MBFPNR_ID == 0)
                {
                    EDU_ZXDY_04_A07_MBFPNR mbfpnr = db_zxdy.EDU_ZXDY_04_A07_MBFPNR.FirstOrDefault();
                    if (mbfpnr == null)
                    {
                        Max_MBFPNR_ID = 1;
                    }
                    else
                    {
                        //Max_MBFPNR_ID = db_zxdy.EDU_ZXDY_04_A07_MBFPNR.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_MBFPNR_ID++;
                }
                maxId = Max_MBFPNR_ID;
            }
            return maxId;
        }

    }
}
