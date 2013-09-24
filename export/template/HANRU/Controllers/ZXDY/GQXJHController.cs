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
using HanRuEdu.JPXT.Common;

namespace HanRuEdu.JPXT.Controllers.JPXT
{
    public class GQXJHController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_06_A02_GQXJH_DISP> model = db_zxdy.VIEW_EDU_ZXDY_06_A02_GQXJH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddGqxjh(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            gqxjh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdGqxjh(gqxjh);
        }

        public void UpdGqxjh(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            //设置默认值
            if (gqxjh.ID == 0) gqxjh.ID = 0;//国旗下讲话表ID
            if (gqxjh.SCHOOLID == 0) gqxjh.SCHOOLID = 0;//学校ID   学校配置表
            if (gqxjh.XQID == 0) gqxjh.XQID = 0;//学期ID   学期数据表
            if (gqxjh.ZCID == 0) gqxjh.ZCID = 0;//周次ID   值周周次表
            if (string.IsNullOrEmpty(gqxjh.JHZT)) gqxjh.JHZT = "";//讲话主题
            if (string.IsNullOrEmpty(gqxjh.JHNR)) gqxjh.JHNR = "";//讲话内容
            EDU_ZXDY_06_A02_GQXJH gqxjh_model = db_zxdy.EDU_ZXDY_06_A02_GQXJH.FirstOrDefault(e => e.ID == gqxjh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (gqxjh_model != null)
            {
                gqxjh_model.ID = gqxjh.ID;//国旗下讲话表ID
                gqxjh_model.SCHOOLID = gqxjh.SCHOOLID;//学校ID   学校配置表
                gqxjh_model.XQID = gqxjh.XQID;//学期ID   学期数据表
                gqxjh_model.ZCID = gqxjh.ZCID;//周次ID   值周周次表
                gqxjh_model.JHZT = gqxjh.JHZT;//讲话主题
                gqxjh_model.JHNR = gqxjh.JHNR;//讲话内容
                db_zxdy.Entry(gqxjh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_06_A02_GQXJH.Add(gqxjh);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_06_A02_GQXJH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_06_A02_GQXJH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddGqxjh(gqxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gqxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gqxjh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_06_A02_GQXJH gqxjh= db_zxdy.EDU_ZXDY_06_A02_GQXJH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(gqxjh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            InitViewBag();
            try
            {
                
                
                UpdGqxjh(gqxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gqxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gqxjh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_06_A02_GQXJH gqxjh = db_zxdy.EDU_ZXDY_06_A02_GQXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_06_A02_GQXJH.Remove(gqxjh);
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
                    EDU_ZXDY_06_A02_GQXJH gqxjh = db_zxdy.EDU_ZXDY_06_A02_GQXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_06_A02_GQXJH.Remove(gqxjh);
                    db_zxdy.SaveChanges();
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

        private static int Max_GQXJH_ID = 0;
        private static object syncIDLock = new object();
        //获取国旗下讲话表最大ID
        public int GetMax_GQXJH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_GQXJH_ID == 0)
                {
                    EDU_ZXDY_06_A02_GQXJH gqxjh = db_zxdy.EDU_ZXDY_06_A02_GQXJH.FirstOrDefault();
                    if (gqxjh == null)
                    {
                        Max_GQXJH_ID = 1;
                    }
                    else
                    {
                        //Max_GQXJH_ID = db_zxdy.EDU_ZXDY_06_A02_GQXJH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_GQXJH_ID++;
                }
                maxId = Max_GQXJH_ID;
            }
            return maxId;
        }

    }
}
