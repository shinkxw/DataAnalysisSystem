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
    public class TPJLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_TPXT_TPJL_DISP> model = db_zyzx.VIEW_EDU_ZYZX_TPXT_TPJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTpjl(EDU_ZYZX_TPXT_TPJL tpjl)
        {
            tpjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTpjl(tpjl);
        }

        public void UpdTpjl(EDU_ZYZX_TPXT_TPJL tpjl)
        {
            //设置默认值
            if (tpjl.ID == 0) tpjl.ID = 0;//投票记录ID
            if (tpjl.SCHOOLID == 0) tpjl.SCHOOLID = 0;//学校名   学校配置表
            if (tpjl.WEBID == 0) tpjl.WEBID = 0;//网站ID   网站配置
            if (tpjl.TPID == 0) tpjl.TPID = 0;//投票   投票设置
            if (string.IsNullOrEmpty(tpjl.TPIP)) tpjl.TPIP = "";//投票人
            if (tpjl.TPTIME == 0) tpjl.TPTIME = 0;//投票时间
            EDU_ZYZX_TPXT_TPJL tpjl_model = db_zyzx.EDU_ZYZX_TPXT_TPJL.FirstOrDefault(e => e.ID == tpjl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tpjl_model != null)
            {
                tpjl_model.ID = tpjl.ID;//投票记录ID
                tpjl_model.SCHOOLID = tpjl.SCHOOLID;//学校名   学校配置表
                tpjl_model.WEBID = tpjl.WEBID;//网站ID   网站配置
                tpjl_model.TPID = tpjl.TPID;//投票   投票设置
                tpjl_model.TPIP = tpjl.TPIP;//投票人
                tpjl_model.TPTIME = tpjl.TPTIME;//投票时间
                db_zyzx.Entry(tpjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zyzx.EDU_ZYZX_TPXT_TPJL.Add(tpjl);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_TPXT_TPJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_TPXT_TPJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_TPXT_TPJL tpjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTpjl(tpjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_TPXT_TPJL tpjl= db_zyzx.EDU_ZYZX_TPXT_TPJL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tpjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_TPXT_TPJL tpjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdTpjl(tpjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpjl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZYZX_TPXT_TPJL tpjl = db_zyzx.EDU_ZYZX_TPXT_TPJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_TPXT_TPJL.Remove(tpjl);
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
                    EDU_ZYZX_TPXT_TPJL tpjl = db_zyzx.EDU_ZYZX_TPXT_TPJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_TPXT_TPJL.Remove(tpjl);
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

        private static int Max_TPJL_ID = 0;
        private static object syncIDLock = new object();
        //获取投票记录最大ID
        public int GetMax_TPJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TPJL_ID == 0)
                {
                    EDU_ZYZX_TPXT_TPJL tpjl = db_zyzx.EDU_ZYZX_TPXT_TPJL.FirstOrDefault();
                    if (tpjl == null)
                    {
                        Max_TPJL_ID = 1;
                    }
                    else
                    {
                        //Max_TPJL_ID = db_zyzx.EDU_ZYZX_TPXT_TPJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TPJL_ID++;
                }
                maxId = Max_TPJL_ID;
            }
            return maxId;
        }

    }
}
