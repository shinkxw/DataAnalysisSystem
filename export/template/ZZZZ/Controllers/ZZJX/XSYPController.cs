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
    public class XSYPController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A05_XSYP_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A05_XSYP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsyp(EDU_ZZJX_07_A05_XSYP xsyp)
        {
            xsyp.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsyp(xsyp);
        }

        public void UpdXsyp(EDU_ZZJX_07_A05_XSYP xsyp)
        {
            //设置默认值
            if (xsyp.ID == 0) xsyp.ID = 0;//学生应聘信息ID
            if (xsyp.SCHOOLID == 0) xsyp.SCHOOLID = 0;//学校ID
            if (xsyp.XSXXID == 0) xsyp.XSXXID = 0;//学生信息ID
            if (xsyp.QYID == 0) xsyp.QYID = 0;//企业ID
            if (xsyp.GWID == 0) xsyp.GWID = 0;//实习岗位ID
            if (xsyp.XXSH == 0) xsyp.XXSH = 0;//学校审核
            if (xsyp.QYSH == 0) xsyp.QYSH = 0;//企业审核
            EDU_ZZJX_07_A05_XSYP xsyp_model = db_zzjx.EDU_ZZJX_07_A05_XSYP.FirstOrDefault(e => e.ID == xsyp.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsyp_model != null)
            {
                xsyp_model.ID = xsyp.ID;//学生应聘信息ID
                xsyp_model.SCHOOLID = xsyp.SCHOOLID;//学校ID
                xsyp_model.XSXXID = xsyp.XSXXID;//学生信息ID
                xsyp_model.QYID = xsyp.QYID;//企业ID
                xsyp_model.GWID = xsyp.GWID;//实习岗位ID
                xsyp_model.XXSH = xsyp.XXSH;//学校审核
                xsyp_model.QYSH = xsyp.QYSH;//企业审核
                db_zzjx.Entry(xsyp_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A05_XSYP.Add(xsyp);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A05_XSYP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A05_XSYP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A05_XSYP xsyp)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsyp(xsyp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsyp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsyp);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A05_XSYP xsyp= db_zzjx.EDU_ZZJX_07_A05_XSYP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsyp);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A05_XSYP xsyp)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsyp(xsyp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsyp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsyp);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_07_A05_XSYP xsyp = db_zzjx.EDU_ZZJX_07_A05_XSYP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A05_XSYP.Remove(xsyp);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_07_A05_XSYP xsyp = db_zzjx.EDU_ZZJX_07_A05_XSYP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A05_XSYP.Remove(xsyp);
                    db_zzjx.SaveChanges();
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

        private static int Max_XSYP_ID = 0;
        private static object syncIDLock = new object();
        //获取学生应聘表最大ID
        public int GetMax_XSYP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSYP_ID == 0)
                {
                    EDU_ZZJX_07_A05_XSYP xsyp = db_zzjx.EDU_ZZJX_07_A05_XSYP.FirstOrDefault();
                    if (xsyp == null)
                    {
                        Max_XSYP_ID = 1;
                    }
                    else
                    {
                        //Max_XSYP_ID = db_zzjx.EDU_ZZJX_07_A05_XSYP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSYP_ID++;
                }
                maxId = Max_XSYP_ID;
            }
            return maxId;
        }

    }
}
