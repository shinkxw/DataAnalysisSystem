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
    public class ZZZCController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A06_ZZZC_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A06_ZZZC_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzzc(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            zzzc.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzzc(zzzc);
        }

        public void UpdZzzc(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            //设置默认值
            if (zzzc.ID == 0) zzzc.ID = 0;//周次表ID
            if (zzzc.SCHOOLID == 0) zzzc.SCHOOLID = 0;//学校ID   学校配置表
            if (zzzc.XQID == 0) zzzc.XQID = 0;//学期ID   学期数据表
            if (string.IsNullOrEmpty(zzzc.ZCM)) zzzc.ZCM = "";//周次名
            if (zzzc.XQKSRQ == 0) zzzc.XQKSRQ = 0;//开始日期
            if (zzzc.XQJSRQ == 0) zzzc.XQJSRQ = 0;//结束日期
            EDU_ZXDY_04_A06_ZZZC zzzc_model = db_zxdy.EDU_ZXDY_04_A06_ZZZC.FirstOrDefault(e => e.ID == zzzc.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzzc_model != null)
            {
                zzzc_model.ID = zzzc.ID;//周次表ID
                zzzc_model.SCHOOLID = zzzc.SCHOOLID;//学校ID   学校配置表
                zzzc_model.XQID = zzzc.XQID;//学期ID   学期数据表
                zzzc_model.ZCM = zzzc.ZCM;//周次名
                zzzc_model.XQKSRQ = zzzc.XQKSRQ;//开始日期
                zzzc_model.XQJSRQ = zzzc.XQJSRQ;//结束日期
                db_zxdy.Entry(zzzc_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_04_A06_ZZZC.Add(zzzc);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A06_ZZZC());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A06_ZZZC());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzzc(zzzc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzzc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzzc);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A06_ZZZC zzzc= db_zxdy.EDU_ZXDY_04_A06_ZZZC.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzzc);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzzc(zzzc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzzc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzzc);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXDY_04_A06_ZZZC zzzc = db_zxdy.EDU_ZXDY_04_A06_ZZZC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A06_ZZZC.Remove(zzzc);
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
                    EDU_ZXDY_04_A06_ZZZC zzzc = db_zxdy.EDU_ZXDY_04_A06_ZZZC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A06_ZZZC.Remove(zzzc);
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

        private static int Max_ZZZC_ID = 0;
        private static object syncIDLock = new object();
        //获取值周周次表最大ID
        public int GetMax_ZZZC_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZZC_ID == 0)
                {
                    EDU_ZXDY_04_A06_ZZZC zzzc = db_zxdy.EDU_ZXDY_04_A06_ZZZC.FirstOrDefault();
                    if (zzzc == null)
                    {
                        Max_ZZZC_ID = 1;
                    }
                    else
                    {
                        //Max_ZZZC_ID = db_zxdy.EDU_ZXDY_04_A06_ZZZC.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZZC_ID++;
                }
                maxId = Max_ZZZC_ID;
            }
            return maxId;
        }

    }
}
