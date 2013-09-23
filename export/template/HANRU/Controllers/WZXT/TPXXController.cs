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
    public class TPXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_TPXT_TPXX_DISP> model = db_wzxt.VIEW_EDU_WZXT_TPXT_TPXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTpxx(EDU_WZXT_TPXT_TPXX tpxx)
        {
            tpxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTpxx(tpxx);
        }

        public void UpdTpxx(EDU_WZXT_TPXT_TPXX tpxx)
        {
            //设置默认值
            if (tpxx.ID == 0) tpxx.ID = 0;//投票题目选项ID
            if (tpxx.SCHOOLID == 0) tpxx.SCHOOLID = 0;//学校名   学校配置表
            if (tpxx.WEBID == 0) tpxx.WEBID = 0;//网站ID   网站配置
            if (tpxx.TPID == 0) tpxx.TPID = 0;//投票   投票设置
            if (tpxx.TMID == 0) tpxx.TMID = 0;//投票题目   投票题目
            if (string.IsNullOrEmpty(tpxx.TITLE)) tpxx.TITLE = "";//标题
            if (tpxx.SUMTP == 0) tpxx.SUMTP = 0;//已选人数
            EDU_WZXT_TPXT_TPXX tpxx_model = db_wzxt.EDU_WZXT_TPXT_TPXX.FirstOrDefault(e => e.ID == tpxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tpxx_model != null)
            {
                tpxx_model.ID = tpxx.ID;//投票题目选项ID
                tpxx_model.SCHOOLID = tpxx.SCHOOLID;//学校名   学校配置表
                tpxx_model.WEBID = tpxx.WEBID;//网站ID   网站配置
                tpxx_model.TPID = tpxx.TPID;//投票   投票设置
                tpxx_model.TMID = tpxx.TMID;//投票题目   投票题目
                tpxx_model.TITLE = tpxx.TITLE;//标题
                tpxx_model.SUMTP = tpxx.SUMTP;//已选人数
                db_wzxt.Entry(tpxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_wzxt.EDU_WZXT_TPXT_TPXX.Add(tpxx);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_TPXT_TPXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_TPXT_TPXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_TPXT_TPXX tpxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTpxx(tpxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_TPXT_TPXX tpxx= db_wzxt.EDU_WZXT_TPXT_TPXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tpxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_TPXT_TPXX tpxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdTpxx(tpxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_WZXT_TPXT_TPXX tpxx = db_wzxt.EDU_WZXT_TPXT_TPXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_TPXT_TPXX.Remove(tpxx);
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
                    EDU_WZXT_TPXT_TPXX tpxx = db_wzxt.EDU_WZXT_TPXT_TPXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_TPXT_TPXX.Remove(tpxx);
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

        private static int Max_TPXX_ID = 0;
        private static object syncIDLock = new object();
        //获取投票题目选项最大ID
        public int GetMax_TPXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TPXX_ID == 0)
                {
                    EDU_WZXT_TPXT_TPXX tpxx = db_wzxt.EDU_WZXT_TPXT_TPXX.FirstOrDefault();
                    if (tpxx == null)
                    {
                        Max_TPXX_ID = 1;
                    }
                    else
                    {
                        //Max_TPXX_ID = db_wzxt.EDU_WZXT_TPXT_TPXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TPXX_ID++;
                }
                maxId = Max_TPXX_ID;
            }
            return maxId;
        }

    }
}
