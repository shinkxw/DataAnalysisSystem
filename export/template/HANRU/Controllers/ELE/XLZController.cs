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
    public class XLZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_XLZ_DISP> model = db_ele.VIEW_EDU_ELE_05_XLZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXlz(EDU_ELE_05_XLZ xlz)
        {
            xlz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXlz(xlz);
        }

        public void UpdXlz(EDU_ELE_05_XLZ xlz)
        {
            //设置默认值
            if (xlz.ID == 0) xlz.ID = 0;//编号
            if (xlz.SCHOOLID == 0) xlz.SCHOOLID = 0;//学校ID   学校配置表
            if (xlz.XLID == 0) xlz.XLID = 0;//校历ID   校历表
            if (string.IsNullOrEmpty(xlz.NAME)) xlz.NAME = "";//校历周名称
            if (xlz.STARTDAY == 0) xlz.STARTDAY = 0;//开始日期
            if (xlz.ENDDAY == 0) xlz.ENDDAY = 0;//结束日期
            if (string.IsNullOrEmpty(xlz.ZJH)) xlz.ZJH = "";//周计划
            EDU_ELE_05_XLZ xlz_model = db_ele.EDU_ELE_05_XLZ.FirstOrDefault(e => e.ID == xlz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xlz_model != null)
            {
                xlz_model.ID = xlz.ID;//编号
                xlz_model.SCHOOLID = xlz.SCHOOLID;//学校ID   学校配置表
                xlz_model.XLID = xlz.XLID;//校历ID   校历表
                xlz_model.NAME = xlz.NAME;//校历周名称
                xlz_model.STARTDAY = xlz.STARTDAY;//开始日期
                xlz_model.ENDDAY = xlz.ENDDAY;//结束日期
                xlz_model.ZJH = xlz.ZJH;//周计划
                db_ele.Entry(xlz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_05_XLZ.Add(xlz);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_XLZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_XLZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_XLZ xlz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXlz(xlz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xlz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xlz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_XLZ xlz= db_ele.EDU_ELE_05_XLZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xlz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_XLZ xlz)
        {
            InitViewBag();
            try
            {
                
                
                UpdXlz(xlz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xlz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xlz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_05_XLZ xlz = db_ele.EDU_ELE_05_XLZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_XLZ.Remove(xlz);
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
                    EDU_ELE_05_XLZ xlz = db_ele.EDU_ELE_05_XLZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_XLZ.Remove(xlz);
                    db_ele.SaveChanges();
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

        private static int Max_XLZ_ID = 0;
        private static object syncIDLock = new object();
        //获取校历周表最大ID
        public int GetMax_XLZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XLZ_ID == 0)
                {
                    EDU_ELE_05_XLZ xlz = db_ele.EDU_ELE_05_XLZ.FirstOrDefault();
                    if (xlz == null)
                    {
                        Max_XLZ_ID = 1;
                    }
                    else
                    {
                        //Max_XLZ_ID = db_ele.EDU_ELE_05_XLZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XLZ_ID++;
                }
                maxId = Max_XLZ_ID;
            }
            return maxId;
        }

    }
}
