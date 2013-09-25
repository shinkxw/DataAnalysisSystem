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
    public class WEEKDAYController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_WEEKDAY_DISP> model = db_ele.VIEW_EDU_ELE_05_WEEKDAY_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWeekday(EDU_ELE_05_WEEKDAY weekday)
        {
            weekday.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWeekday(weekday);
        }

        public void UpdWeekday(EDU_ELE_05_WEEKDAY weekday)
        {
            //设置默认值
            if (weekday.ID == 0) weekday.ID = 0;//编号
            if (weekday.SCHOOLID == 0) weekday.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(weekday.MC)) weekday.MC = "";//名称
            EDU_ELE_05_WEEKDAY weekday_model = db_ele.EDU_ELE_05_WEEKDAY.FirstOrDefault(e => e.ID == weekday.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (weekday_model != null)
            {
                weekday_model.ID = weekday.ID;//编号
                weekday_model.SCHOOLID = weekday.SCHOOLID;//学校名   学校配置表
                weekday_model.MC = weekday.MC;//名称
                db_ele.Entry(weekday_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_05_WEEKDAY.Add(weekday);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_WEEKDAY());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_WEEKDAY());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_WEEKDAY weekday)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWeekday(weekday);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(weekday);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(weekday);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_WEEKDAY weekday= db_ele.EDU_ELE_05_WEEKDAY.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(weekday);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_WEEKDAY weekday)
        {
            InitViewBag();
            try
            {
                
                
                UpdWeekday(weekday);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(weekday);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(weekday);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_05_WEEKDAY weekday = db_ele.EDU_ELE_05_WEEKDAY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_WEEKDAY.Remove(weekday);
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
                    EDU_ELE_05_WEEKDAY weekday = db_ele.EDU_ELE_05_WEEKDAY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_WEEKDAY.Remove(weekday);
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

        private static int Max_WEEKDAY_ID = 0;
        private static object syncIDLock = new object();
        //获取星期最大ID
        public int GetMax_WEEKDAY_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WEEKDAY_ID == 0)
                {
                    EDU_ELE_05_WEEKDAY weekday = db_ele.EDU_ELE_05_WEEKDAY.FirstOrDefault();
                    if (weekday == null)
                    {
                        Max_WEEKDAY_ID = 1;
                    }
                    else
                    {
                        //Max_WEEKDAY_ID = db_ele.EDU_ELE_05_WEEKDAY.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WEEKDAY_ID++;
                }
                maxId = Max_WEEKDAY_ID;
            }
            return maxId;
        }

    }
}
