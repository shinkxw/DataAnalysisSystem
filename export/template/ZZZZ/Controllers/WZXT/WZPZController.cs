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
    public class WZPZController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_WZPZ_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_WZPZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.WEBID.Contains(searchkey)).ToList();
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

        public void AddWzpz(EDU_WZXT_MHXT_WZPZ wzpz)
        {
            wzpz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzpz(wzpz);
        }

        public void UpdWzpz(EDU_WZXT_MHXT_WZPZ wzpz)
        {
            //设置默认值
            if (wzpz.WEBID == 0) wzpz.WEBID = 0;//网站ID
            if (wzpz.SCHOOLID == 0) wzpz.SCHOOLID = 0;//学校名
            if (string.IsNullOrEmpty(wzpz.WEBNAME)) wzpz.WEBNAME = "";//网站名
            if (wzpz.STATUID == 0) wzpz.STATUID = 0;//是否开启(默认不开启0)
            if (string.IsNullOrEmpty(wzpz.WEBURL)) wzpz.WEBURL = "";//网址
            if (wzpz.CSSID == 0) wzpz.CSSID = 0;//网站样式
            EDU_WZXT_MHXT_WZPZ wzpz_model = db_wzxt.EDU_WZXT_MHXT_WZPZ.FirstOrDefault(e => e.WEBID == wzpz.WEBID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzpz_model != null)
            {
                wzpz_model.WEBID = wzpz.WEBID;//网站ID
                wzpz_model.SCHOOLID = wzpz.SCHOOLID;//学校名
                wzpz_model.WEBNAME = wzpz.WEBNAME;//网站名
                wzpz_model.STATUID = wzpz.STATUID;//是否开启(默认不开启0)
                wzpz_model.WEBURL = wzpz.WEBURL;//网址
                wzpz_model.CSSID = wzpz.CSSID;//网站样式
                db_wzxt.Entry(wzpz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_wzxt.EDU_WZXT_MHXT_WZPZ.Add(wzpz);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_WZPZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_WZPZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_WZPZ wzpz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzpz(wzpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzpz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_WZPZ wzpz= db_wzxt.EDU_WZXT_MHXT_WZPZ.Single(e => e.WEBID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzpz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_WZPZ wzpz)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzpz(wzpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzpz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_MHXT_WZPZ wzpz = db_wzxt.EDU_WZXT_MHXT_WZPZ.SingleOrDefault(e => e.WEBID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_WZPZ.Remove(wzpz);
                db_wzxt.SaveChanges();
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
                    EDU_WZXT_MHXT_WZPZ wzpz = db_wzxt.EDU_WZXT_MHXT_WZPZ.SingleOrDefault(e => e.WEBID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_WZPZ.Remove(wzpz);
                    db_wzxt.SaveChanges();
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

        private static int Max_WZPZ_ID = 0;
        private static object syncIDLock = new object();
        //获取网站配置最大ID
        public int GetMax_WZPZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZPZ_ID == 0)
                {
                    EDU_WZXT_MHXT_WZPZ wzpz = db_wzxt.EDU_WZXT_MHXT_WZPZ.FirstOrDefault();
                    if (wzpz == null)
                    {
                        Max_WZPZ_ID = 1;
                    }
                    else
                    {
                        //Max_WZPZ_ID = db_wzxt.EDU_WZXT_MHXT_WZPZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZPZ_ID++;
                }
                maxId = Max_WZPZ_ID;
            }
            return maxId;
        }

    }
}
