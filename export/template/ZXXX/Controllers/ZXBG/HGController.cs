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
    public class HGController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_03_02_HG_DISP> model = db_zxbg.VIEW_EDU_ZXBG_03_02_HG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddHg(EDU_ZXBG_03_02_HG hg)
        {
            hg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdHg(hg);
        }

        public void UpdHg(EDU_ZXBG_03_02_HG hg)
        {
            //设置默认值
            if (hg.SCHOOLID == 0) hg.SCHOOLID = 0;//学校名学校ID
            if (hg.WJID == 0) hg.WJID = 0;//文件ID
            if (hg.HGRID == 0) hg.HGRID = 0;//核稿人ID
            if (string.IsNullOrEmpty(hg.HGRGH)) hg.HGRGH = "";//核稿人工号工号
            if (string.IsNullOrEmpty(hg.HGDW)) hg.HGDW = "";//核稿单位单位名称
            if (string.IsNullOrEmpty(hg.HGYJ)) hg.HGYJ = "";//核稿意见解释/举例：核对文件的相关意见 
            if (string.IsNullOrEmpty(hg.HGRQ)) hg.HGRQ = "";//核稿日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            EDU_ZXBG_03_02_HG hg_model = db_zxbg.EDU_ZXBG_03_02_HG.FirstOrDefault(e => e.SCHOOLID == hg.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (hg_model != null)
            {
                hg_model.SCHOOLID = hg.SCHOOLID;//学校名学校ID
                hg_model.WJID = hg.WJID;//文件ID
                hg_model.HGRID = hg.HGRID;//核稿人ID
                hg_model.HGRGH = hg.HGRGH;//核稿人工号工号
                hg_model.HGDW = hg.HGDW;//核稿单位单位名称
                hg_model.HGYJ = hg.HGYJ;//核稿意见解释/举例：核对文件的相关意见 
                hg_model.HGRQ = hg.HGRQ;//核稿日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                db_zxbg.Entry(hg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_03_02_HG.Add(hg);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_03_02_HG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_03_02_HG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_03_02_HG hg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddHg(hg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(hg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(hg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_03_02_HG hg= db_zxbg.EDU_ZXBG_03_02_HG.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(hg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_03_02_HG hg)
        {
            InitViewBag();
            try
            {
                
                
                UpdHg(hg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(hg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(hg);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_03_02_HG hg = db_zxbg.EDU_ZXBG_03_02_HG.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_03_02_HG.Remove(hg);
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
                    EDU_ZXBG_03_02_HG hg = db_zxbg.EDU_ZXBG_03_02_HG.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_03_02_HG.Remove(hg);
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

        private static int Max_HG_ID = 0;
        private static object syncIDLock = new object();
        //获取核稿子类表最大ID
        public int GetMax_HG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_HG_ID == 0)
                {
                    EDU_ZXBG_03_02_HG hg = db_zxbg.EDU_ZXBG_03_02_HG.FirstOrDefault();
                    if (hg == null)
                    {
                        Max_HG_ID = 1;
                    }
                    else
                    {
                        //Max_HG_ID = db_zxbg.EDU_ZXBG_03_02_HG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_HG_ID++;
                }
                maxId = Max_HG_ID;
            }
            return maxId;
        }

    }
}
