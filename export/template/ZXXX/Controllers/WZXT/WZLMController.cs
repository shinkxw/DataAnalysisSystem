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
    public class WZLMController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_WZLM_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_WZLM_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWzlm(EDU_WZXT_MHXT_WZLM wzlm)
        {
            wzlm.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzlm(wzlm);
        }

        public void UpdWzlm(EDU_WZXT_MHXT_WZLM wzlm)
        {
            //设置默认值
            if (wzlm.ID == 0) wzlm.ID = 0;//网站栏目（导航）ID
            if (wzlm.SCHOOLID == 0) wzlm.SCHOOLID = 0;//学校名
            if (wzlm.WEBID == 0) wzlm.WEBID = 0;//网站ID
            if (wzlm.LMSHOWSTYLE == 0) wzlm.LMSHOWSTYLE = 0;//栏目使用类型（使用内容列表，还是图片加栏目链接）
            if (string.IsNullOrEmpty(wzlm.NAME)) wzlm.NAME = "";//栏目名称
            if (string.IsNullOrEmpty(wzlm.URL)) wzlm.URL = "";//栏目链接
            if (string.IsNullOrEmpty(wzlm.IMAGEURL)) wzlm.IMAGEURL = "";//图片链接
            if (wzlm.DEPTH == 0) wzlm.DEPTH = 0;//层级
            if (wzlm.PID == 0) wzlm.PID = 0;//父目录
            if (wzlm.LISTSHOWSTYLE == 0) wzlm.LISTSHOWSTYLE = 0;//列表显示型式
            if (wzlm.ORDERTYPE == 0) wzlm.ORDERTYPE = 0;//排序方式（按时间方式：添加顺序、访问量）
            if (wzlm.SHOWNUMBER == 0) wzlm.SHOWNUMBER = 0;//显示个数
            if (wzlm.OPENFLAG == 0) wzlm.OPENFLAG = 0;//内外网（0外，1内网）
            if (string.IsNullOrEmpty(wzlm.LLQX)) wzlm.LLQX = "";//浏览权限
            EDU_WZXT_MHXT_WZLM wzlm_model = db_wzxt.EDU_WZXT_MHXT_WZLM.FirstOrDefault(e => e.ID == wzlm.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzlm_model != null)
            {
                wzlm_model.ID = wzlm.ID;//网站栏目（导航）ID
                wzlm_model.SCHOOLID = wzlm.SCHOOLID;//学校名
                wzlm_model.WEBID = wzlm.WEBID;//网站ID
                wzlm_model.LMSHOWSTYLE = wzlm.LMSHOWSTYLE;//栏目使用类型（使用内容列表，还是图片加栏目链接）
                wzlm_model.NAME = wzlm.NAME;//栏目名称
                wzlm_model.URL = wzlm.URL;//栏目链接
                wzlm_model.IMAGEURL = wzlm.IMAGEURL;//图片链接
                wzlm_model.DEPTH = wzlm.DEPTH;//层级
                wzlm_model.PID = wzlm.PID;//父目录
                wzlm_model.LISTSHOWSTYLE = wzlm.LISTSHOWSTYLE;//列表显示型式
                wzlm_model.ORDERTYPE = wzlm.ORDERTYPE;//排序方式（按时间方式：添加顺序、访问量）
                wzlm_model.SHOWNUMBER = wzlm.SHOWNUMBER;//显示个数
                wzlm_model.OPENFLAG = wzlm.OPENFLAG;//内外网（0外，1内网）
                wzlm_model.LLQX = wzlm.LLQX;//浏览权限
                db_wzxt.Entry(wzlm_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_wzxt.EDU_WZXT_MHXT_WZLM.Add(wzlm);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_WZLM());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_WZLM());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_WZLM wzlm)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzlm(wzlm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzlm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzlm);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_WZLM wzlm= db_wzxt.EDU_WZXT_MHXT_WZLM.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzlm);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_WZLM wzlm)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzlm(wzlm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzlm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzlm);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_MHXT_WZLM wzlm = db_wzxt.EDU_WZXT_MHXT_WZLM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_WZLM.Remove(wzlm);
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
                    EDU_WZXT_MHXT_WZLM wzlm = db_wzxt.EDU_WZXT_MHXT_WZLM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_WZLM.Remove(wzlm);
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

        private static int Max_WZLM_ID = 0;
        private static object syncIDLock = new object();
        //获取网站栏目（导航）最大ID
        public int GetMax_WZLM_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZLM_ID == 0)
                {
                    EDU_WZXT_MHXT_WZLM wzlm = db_wzxt.EDU_WZXT_MHXT_WZLM.FirstOrDefault();
                    if (wzlm == null)
                    {
                        Max_WZLM_ID = 1;
                    }
                    else
                    {
                        //Max_WZLM_ID = db_wzxt.EDU_WZXT_MHXT_WZLM.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZLM_ID++;
                }
                maxId = Max_WZLM_ID;
            }
            return maxId;
        }

    }
}
