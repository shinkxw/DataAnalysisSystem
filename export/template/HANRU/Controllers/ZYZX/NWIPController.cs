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
    public class NWIPController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_NWIP_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_NWIP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddNwip(EDU_ZYZX_MHXT_NWIP nwip)
        {
            nwip.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdNwip(nwip);
        }

        public void UpdNwip(EDU_ZYZX_MHXT_NWIP nwip)
        {
            //设置默认值
            if (nwip.ID == 0) nwip.ID = 0;//内网IP配置ID
            if (nwip.WEBID == 0) nwip.WEBID = 0;//网站ID
            if (nwip.SCHOOLID == 0) nwip.SCHOOLID = 0;//学校名
            if (string.IsNullOrEmpty(nwip.IP)) nwip.IP = "";//IP地址
            EDU_ZYZX_MHXT_NWIP nwip_model = db_zyzx.EDU_ZYZX_MHXT_NWIP.FirstOrDefault(e => e.ID == nwip.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (nwip_model != null)
            {
                nwip_model.ID = nwip.ID;//内网IP配置ID
                nwip_model.WEBID = nwip.WEBID;//网站ID
                nwip_model.SCHOOLID = nwip.SCHOOLID;//学校名
                nwip_model.IP = nwip.IP;//IP地址
                db_zyzx.Entry(nwip_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zyzx.EDU_ZYZX_MHXT_NWIP.Add(nwip);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_NWIP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_NWIP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_NWIP nwip)
        {
            InitViewBag();
            try
            {
                //
                //
                AddNwip(nwip);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(nwip);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(nwip);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_NWIP nwip= db_zyzx.EDU_ZYZX_MHXT_NWIP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(nwip);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_NWIP nwip)
        {
            InitViewBag();
            try
            {
                
                
                UpdNwip(nwip);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(nwip);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(nwip);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZYZX_MHXT_NWIP nwip = db_zyzx.EDU_ZYZX_MHXT_NWIP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_NWIP.Remove(nwip);
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
                    EDU_ZYZX_MHXT_NWIP nwip = db_zyzx.EDU_ZYZX_MHXT_NWIP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_NWIP.Remove(nwip);
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

        private static int Max_NWIP_ID = 0;
        private static object syncIDLock = new object();
        //获取内网IP配置最大ID
        public int GetMax_NWIP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_NWIP_ID == 0)
                {
                    EDU_ZYZX_MHXT_NWIP nwip = db_zyzx.EDU_ZYZX_MHXT_NWIP.FirstOrDefault();
                    if (nwip == null)
                    {
                        Max_NWIP_ID = 1;
                    }
                    else
                    {
                        //Max_NWIP_ID = db_zyzx.EDU_ZYZX_MHXT_NWIP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_NWIP_ID++;
                }
                maxId = Max_NWIP_ID;
            }
            return maxId;
        }

    }
}
