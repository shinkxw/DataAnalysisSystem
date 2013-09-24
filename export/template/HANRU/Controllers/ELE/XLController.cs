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
    public class XLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_XL_DISP> model = db_ele.VIEW_EDU_ELE_05_XL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXl(EDU_ELE_05_XL xl)
        {
            xl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXl(xl);
        }

        public void UpdXl(EDU_ELE_05_XL xl)
        {
            //设置默认值
            if (xl.ID == 0) xl.ID = 0;//编号
            if (xl.SCHOOLID == 0) xl.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(xl.NAME)) xl.NAME = "";//校历名称
            if (xl.XNID == 0) xl.XNID = 0;//学年ID   学年表
            if (xl.XQID == 0) xl.XQID = 0;//学期ID   学期数据表
            EDU_ELE_05_XL xl_model = db_ele.EDU_ELE_05_XL.FirstOrDefault(e => e.ID == xl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xl_model != null)
            {
                xl_model.ID = xl.ID;//编号
                xl_model.SCHOOLID = xl.SCHOOLID;//学校ID   学校配置表
                xl_model.NAME = xl.NAME;//校历名称
                xl_model.STARTDAY = xl.STARTDAY;//开始日期
                xl_model.ENDDAY = xl.ENDDAY;//结束日期
                xl_model.XNID = xl.XNID;//学年ID   学年表
                xl_model.XQID = xl.XQID;//学期ID   学期数据表
                db_ele.Entry(xl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_05_XL.Add(xl);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_XL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_XL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_XL xl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXl(xl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_XL xl= db_ele.EDU_ELE_05_XL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_XL xl)
        {
            InitViewBag();
            try
            {
                
                
                UpdXl(xl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_05_XL xl = db_ele.EDU_ELE_05_XL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_XL.Remove(xl);
                db_ele.SaveChanges();
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
                    EDU_ELE_05_XL xl = db_ele.EDU_ELE_05_XL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_XL.Remove(xl);
                    db_ele.SaveChanges();
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

        private static int Max_XL_ID = 0;
        private static object syncIDLock = new object();
        //获取校历表最大ID
        public int GetMax_XL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XL_ID == 0)
                {
                    EDU_ELE_05_XL xl = db_ele.EDU_ELE_05_XL.FirstOrDefault();
                    if (xl == null)
                    {
                        Max_XL_ID = 1;
                    }
                    else
                    {
                        //Max_XL_ID = db_ele.EDU_ELE_05_XL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XL_ID++;
                }
                maxId = Max_XL_ID;
            }
            return maxId;
        }

    }
}
