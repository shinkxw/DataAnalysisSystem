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
    public class TPTMController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_TPXT_TPTM_DISP> model = db_wzxt.VIEW_EDU_WZXT_TPXT_TPTM_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTptm(EDU_WZXT_TPXT_TPTM tptm)
        {
            tptm.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTptm(tptm);
        }

        public void UpdTptm(EDU_WZXT_TPXT_TPTM tptm)
        {
            //设置默认值
            if (tptm.ID == 0) tptm.ID = 0;//投票题目ID
            if (tptm.SCHOOLID == 0) tptm.SCHOOLID = 0;//学校名   学校配置表
            if (tptm.WEBID == 0) tptm.WEBID = 0;//网站ID   网站配置
            if (tptm.TPID == 0) tptm.TPID = 0;//投票   投票设置
            if (tptm.TYPEID == 0) tptm.TYPEID = 0;//投票形式
            if (string.IsNullOrEmpty(tptm.TITLE)) tptm.TITLE = "";//标题
            if (string.IsNullOrEmpty(tptm.CONTENT)) tptm.CONTENT = "";//内容
            EDU_WZXT_TPXT_TPTM tptm_model = db_wzxt.EDU_WZXT_TPXT_TPTM.FirstOrDefault(e => e.ID == tptm.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tptm_model != null)
            {
                tptm_model.ID = tptm.ID;//投票题目ID
                tptm_model.SCHOOLID = tptm.SCHOOLID;//学校名   学校配置表
                tptm_model.WEBID = tptm.WEBID;//网站ID   网站配置
                tptm_model.TPID = tptm.TPID;//投票   投票设置
                tptm_model.TYPEID = tptm.TYPEID;//投票形式
                tptm_model.TITLE = tptm.TITLE;//标题
                tptm_model.CONTENT = tptm.CONTENT;//内容
                db_wzxt.Entry(tptm_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_wzxt.EDU_WZXT_TPXT_TPTM.Add(tptm);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_TPXT_TPTM());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_TPXT_TPTM());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_TPXT_TPTM tptm)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTptm(tptm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tptm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tptm);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_TPXT_TPTM tptm= db_wzxt.EDU_WZXT_TPXT_TPTM.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tptm);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_TPXT_TPTM tptm)
        {
            InitViewBag();
            try
            {
                
                
                UpdTptm(tptm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tptm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tptm);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_WZXT_TPXT_TPTM tptm = db_wzxt.EDU_WZXT_TPXT_TPTM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_TPXT_TPTM.Remove(tptm);
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
                    EDU_WZXT_TPXT_TPTM tptm = db_wzxt.EDU_WZXT_TPXT_TPTM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_TPXT_TPTM.Remove(tptm);
                    db_wzxt.SaveChanges();
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

        private static int Max_TPTM_ID = 0;
        private static object syncIDLock = new object();
        //获取投票题目最大ID
        public int GetMax_TPTM_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TPTM_ID == 0)
                {
                    EDU_WZXT_TPXT_TPTM tptm = db_wzxt.EDU_WZXT_TPXT_TPTM.FirstOrDefault();
                    if (tptm == null)
                    {
                        Max_TPTM_ID = 1;
                    }
                    else
                    {
                        //Max_TPTM_ID = db_wzxt.EDU_WZXT_TPXT_TPTM.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TPTM_ID++;
                }
                maxId = Max_TPTM_ID;
            }
            return maxId;
        }

    }
}
