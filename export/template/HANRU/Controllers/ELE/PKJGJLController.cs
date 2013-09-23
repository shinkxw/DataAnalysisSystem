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
    public class PKJGJLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_04_PKJGJL_DISP> model = db_ele.VIEW_EDU_ELE_04_PKJGJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddPkjgjl(EDU_ELE_04_PKJGJL pkjgjl)
        {
            pkjgjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdPkjgjl(pkjgjl);
        }

        public void UpdPkjgjl(EDU_ELE_04_PKJGJL pkjgjl)
        {
            //设置默认值
            if (pkjgjl.ID == 0) pkjgjl.ID = 0;//编号
            if (pkjgjl.SCHOOLID == 0) pkjgjl.SCHOOLID = 0;//学校名
            if (pkjgjl.XQID == 0) pkjgjl.XQID = 0;//学期ID
            if (pkjgjl.TEACHERID == 0) pkjgjl.TEACHERID = 0;//老师
            if (string.IsNullOrEmpty(pkjgjl.TEACHERNAME)) pkjgjl.TEACHERNAME = "";//老师
            if (string.IsNullOrEmpty(pkjgjl.COURSEID)) pkjgjl.COURSEID = "";//课程
            if (string.IsNullOrEmpty(pkjgjl.COURSENAME)) pkjgjl.COURSENAME = "";//课程
            if (string.IsNullOrEmpty(pkjgjl.CLASSID)) pkjgjl.CLASSID = "";//班级
            if (string.IsNullOrEmpty(pkjgjl.CLASSNAME)) pkjgjl.CLASSNAME = "";//班级
            if (pkjgjl.WEEKDAY == 0) pkjgjl.WEEKDAY = 0;//工作日
            if (string.IsNullOrEmpty(pkjgjl.WEEKDAYNAME)) pkjgjl.WEEKDAYNAME = "";//工作日名称
            if (pkjgjl.PERIOD == 0) pkjgjl.PERIOD = 0;//时段
            if (string.IsNullOrEmpty(pkjgjl.PERIODNAME)) pkjgjl.PERIODNAME = "";//时段名称
            if (pkjgjl.SESSION == 0) pkjgjl.SESSION = 0;//节次
            if (string.IsNullOrEmpty(pkjgjl.SESSIONNAME)) pkjgjl.SESSIONNAME = "";//节次名称
            EDU_ELE_04_PKJGJL pkjgjl_model = db_ele.EDU_ELE_04_PKJGJL.FirstOrDefault(e => e.ID == pkjgjl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (pkjgjl_model != null)
            {
                pkjgjl_model.ID = pkjgjl.ID;//编号
                pkjgjl_model.SCHOOLID = pkjgjl.SCHOOLID;//学校名
                pkjgjl_model.XQID = pkjgjl.XQID;//学期ID
                pkjgjl_model.TEACHERID = pkjgjl.TEACHERID;//老师
                pkjgjl_model.TEACHERNAME = pkjgjl.TEACHERNAME;//老师
                pkjgjl_model.COURSEID = pkjgjl.COURSEID;//课程
                pkjgjl_model.COURSENAME = pkjgjl.COURSENAME;//课程
                pkjgjl_model.CLASSID = pkjgjl.CLASSID;//班级
                pkjgjl_model.CLASSNAME = pkjgjl.CLASSNAME;//班级
                pkjgjl_model.WEEKDAY = pkjgjl.WEEKDAY;//工作日
                pkjgjl_model.WEEKDAYNAME = pkjgjl.WEEKDAYNAME;//工作日名称
                pkjgjl_model.PERIOD = pkjgjl.PERIOD;//时段
                pkjgjl_model.PERIODNAME = pkjgjl.PERIODNAME;//时段名称
                pkjgjl_model.SESSION = pkjgjl.SESSION;//节次
                pkjgjl_model.SESSIONNAME = pkjgjl.SESSIONNAME;//节次名称
                db_ele.Entry(pkjgjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_04_PKJGJL.Add(pkjgjl);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_04_PKJGJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_04_PKJGJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_04_PKJGJL pkjgjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddPkjgjl(pkjgjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(pkjgjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(pkjgjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_04_PKJGJL pkjgjl= db_ele.EDU_ELE_04_PKJGJL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(pkjgjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_04_PKJGJL pkjgjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdPkjgjl(pkjgjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(pkjgjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(pkjgjl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_04_PKJGJL pkjgjl = db_ele.EDU_ELE_04_PKJGJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_04_PKJGJL.Remove(pkjgjl);
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
                    EDU_ELE_04_PKJGJL pkjgjl = db_ele.EDU_ELE_04_PKJGJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_04_PKJGJL.Remove(pkjgjl);
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

        private static int Max_PKJGJL_ID = 0;
        private static object syncIDLock = new object();
        //获取排课结果记录表最大ID
        public int GetMax_PKJGJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_PKJGJL_ID == 0)
                {
                    EDU_ELE_04_PKJGJL pkjgjl = db_ele.EDU_ELE_04_PKJGJL.FirstOrDefault();
                    if (pkjgjl == null)
                    {
                        Max_PKJGJL_ID = 1;
                    }
                    else
                    {
                        //Max_PKJGJL_ID = db_ele.EDU_ELE_04_PKJGJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_PKJGJL_ID++;
                }
                maxId = Max_PKJGJL_ID;
            }
            return maxId;
        }

    }
}
