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
    public class YQLJLXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_YQLJLX_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_YQLJLX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddYqljlx(EDU_ZYZX_MHXT_YQLJLX yqljlx)
        {
            yqljlx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdYqljlx(yqljlx);
        }

        public void UpdYqljlx(EDU_ZYZX_MHXT_YQLJLX yqljlx)
        {
            //设置默认值
            if (yqljlx.ID == 0) yqljlx.ID = 0;//友情链接类型ID
            if (yqljlx.SCHOOLID == 0) yqljlx.SCHOOLID = 0;//学校名   学校配置表
            if (yqljlx.WEBID == 0) yqljlx.WEBID = 0;//网站ID   网站配置
            if (string.IsNullOrEmpty(yqljlx.NAME)) yqljlx.NAME = "";//类型名
            if (yqljlx.SHOWSTYLE == 0) yqljlx.SHOWSTYLE = 0;//显示方式
            EDU_ZYZX_MHXT_YQLJLX yqljlx_model = db_zyzx.EDU_ZYZX_MHXT_YQLJLX.FirstOrDefault(e => e.ID == yqljlx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (yqljlx_model != null)
            {
                yqljlx_model.ID = yqljlx.ID;//友情链接类型ID
                yqljlx_model.SCHOOLID = yqljlx.SCHOOLID;//学校名   学校配置表
                yqljlx_model.WEBID = yqljlx.WEBID;//网站ID   网站配置
                yqljlx_model.NAME = yqljlx.NAME;//类型名
                yqljlx_model.SHOWSTYLE = yqljlx.SHOWSTYLE;//显示方式
                db_zyzx.Entry(yqljlx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zyzx.EDU_ZYZX_MHXT_YQLJLX.Add(yqljlx);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_YQLJLX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_YQLJLX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_YQLJLX yqljlx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddYqljlx(yqljlx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yqljlx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yqljlx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_YQLJLX yqljlx= db_zyzx.EDU_ZYZX_MHXT_YQLJLX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(yqljlx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_YQLJLX yqljlx)
        {
            InitViewBag();
            try
            {
                
                
                UpdYqljlx(yqljlx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yqljlx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yqljlx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZYZX_MHXT_YQLJLX yqljlx = db_zyzx.EDU_ZYZX_MHXT_YQLJLX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_YQLJLX.Remove(yqljlx);
                db_zyzx.SaveChanges();
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
                    EDU_ZYZX_MHXT_YQLJLX yqljlx = db_zyzx.EDU_ZYZX_MHXT_YQLJLX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_YQLJLX.Remove(yqljlx);
                    db_zyzx.SaveChanges();
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

        private static int Max_YQLJLX_ID = 0;
        private static object syncIDLock = new object();
        //获取友情链接类型最大ID
        public int GetMax_YQLJLX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_YQLJLX_ID == 0)
                {
                    EDU_ZYZX_MHXT_YQLJLX yqljlx = db_zyzx.EDU_ZYZX_MHXT_YQLJLX.FirstOrDefault();
                    if (yqljlx == null)
                    {
                        Max_YQLJLX_ID = 1;
                    }
                    else
                    {
                        //Max_YQLJLX_ID = db_zyzx.EDU_ZYZX_MHXT_YQLJLX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_YQLJLX_ID++;
                }
                maxId = Max_YQLJLX_ID;
            }
            return maxId;
        }

    }
}
