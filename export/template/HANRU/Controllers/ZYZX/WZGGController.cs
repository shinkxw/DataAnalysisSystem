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
    public class WZGGController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_WZGG_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_WZGG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWzgg(EDU_ZYZX_MHXT_WZGG wzgg)
        {
            wzgg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzgg(wzgg);
        }

        public void UpdWzgg(EDU_ZYZX_MHXT_WZGG wzgg)
        {
            //设置默认值
            if (wzgg.ID == 0) wzgg.ID = 0;//网站广告ID
            if (wzgg.SCHOOLID == 0) wzgg.SCHOOLID = 0;//学校名   学校配置表
            if (wzgg.WEBID == 0) wzgg.WEBID = 0;//网站ID   网站配置
            if (wzgg.SHOWTYPE == 0) wzgg.SHOWTYPE = 0;//显示型式
            if (string.IsNullOrEmpty(wzgg.ADCONTENT)) wzgg.ADCONTENT = "";//广告内容
            if (string.IsNullOrEmpty(wzgg.GGLJ)) wzgg.GGLJ = "";//广告链接
            if (wzgg.SHOWSTATU == 0) wzgg.SHOWSTATU = 0;//是否显示
            EDU_ZYZX_MHXT_WZGG wzgg_model = db_zyzx.EDU_ZYZX_MHXT_WZGG.FirstOrDefault(e => e.ID == wzgg.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzgg_model != null)
            {
                wzgg_model.ID = wzgg.ID;//网站广告ID
                wzgg_model.SCHOOLID = wzgg.SCHOOLID;//学校名   学校配置表
                wzgg_model.WEBID = wzgg.WEBID;//网站ID   网站配置
                wzgg_model.SHOWTYPE = wzgg.SHOWTYPE;//显示型式
                wzgg_model.ADCONTENT = wzgg.ADCONTENT;//广告内容
                wzgg_model.GGLJ = wzgg.GGLJ;//广告链接
                wzgg_model.SHOWSTATU = wzgg.SHOWSTATU;//是否显示
                db_zyzx.Entry(wzgg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zyzx.EDU_ZYZX_MHXT_WZGG.Add(wzgg);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_WZGG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_WZGG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_WZGG wzgg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzgg(wzgg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzgg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzgg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_WZGG wzgg= db_zyzx.EDU_ZYZX_MHXT_WZGG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzgg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_WZGG wzgg)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzgg(wzgg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzgg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzgg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZYZX_MHXT_WZGG wzgg = db_zyzx.EDU_ZYZX_MHXT_WZGG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_WZGG.Remove(wzgg);
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
                    EDU_ZYZX_MHXT_WZGG wzgg = db_zyzx.EDU_ZYZX_MHXT_WZGG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_WZGG.Remove(wzgg);
                    db_zyzx.SaveChanges();
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

        private static int Max_WZGG_ID = 0;
        private static object syncIDLock = new object();
        //获取网站广告最大ID
        public int GetMax_WZGG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZGG_ID == 0)
                {
                    EDU_ZYZX_MHXT_WZGG wzgg = db_zyzx.EDU_ZYZX_MHXT_WZGG.FirstOrDefault();
                    if (wzgg == null)
                    {
                        Max_WZGG_ID = 1;
                    }
                    else
                    {
                        //Max_WZGG_ID = db_zyzx.EDU_ZYZX_MHXT_WZGG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZGG_ID++;
                }
                maxId = Max_WZGG_ID;
            }
            return maxId;
        }

    }
}
