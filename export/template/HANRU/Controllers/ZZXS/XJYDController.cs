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
    public class XJYDController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_07_02_XJYD_DISP> model = db_zzxs.VIEW_EDU_ZZXS_07_02_XJYD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXjyd(EDU_ZZXS_07_02_XJYD xjyd)
        {
            xjyd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXjyd(xjyd);
        }

        public void UpdXjyd(EDU_ZZXS_07_02_XJYD xjyd)
        {
            //设置默认值
            if (xjyd.ID == 0) xjyd.ID = 0;//学籍异动表编号
            if (xjyd.XSXXID == 0) xjyd.XSXXID = 0;//学生ID   学生信息数据表
            if (xjyd.SCHOOLID == 0) xjyd.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(xjyd.YDLBM)) xjyd.YDLBM = "";//异动类别码   学籍异动类别代码表
            if (string.IsNullOrEmpty(xjyd.YDRQ)) xjyd.YDRQ = "";//异动日期
            if (string.IsNullOrEmpty(xjyd.YDYYM)) xjyd.YDYYM = "";//异动原因码   学籍异动原因代码表
            if (string.IsNullOrEmpty(xjyd.SPRQ)) xjyd.SPRQ = "";//审批日期
            if (string.IsNullOrEmpty(xjyd.SPWH)) xjyd.SPWH = "";//审批文号
            if (xjyd.JBRID == 0) xjyd.JBRID = 0;//经办人ID   教职工基本数据子类表
            if (string.IsNullOrEmpty(xjyd.JBRGH)) xjyd.JBRGH = "";//经办人工号
            if (string.IsNullOrEmpty(xjyd.YDLYXXM)) xjyd.YDLYXXM = "";//异动来源学校码
            if (string.IsNullOrEmpty(xjyd.YDQXXXM)) xjyd.YDQXXXM = "";//异动去向学校码
            if (string.IsNullOrEmpty(xjyd.YDSM)) xjyd.YDSM = "";//异动说明
            if (string.IsNullOrEmpty(xjyd.YZYM)) xjyd.YZYM = "";//原专业码
            if (xjyd.YZYID == 0) xjyd.YZYID = 0;//原专业ID   专业基本信息数据表
            if (string.IsNullOrEmpty(xjyd.YBH)) xjyd.YBH = "";//原班号   学校班级数据表
            if (string.IsNullOrEmpty(xjyd.YNJ)) xjyd.YNJ = "";//原年级   学校年级数据表
            if (string.IsNullOrEmpty(xjyd.XZYM)) xjyd.XZYM = "";//现专业码
            if (xjyd.XZYID == 0) xjyd.XZYID = 0;//现专业ID   专业基本信息数据表
            if (string.IsNullOrEmpty(xjyd.XBH)) xjyd.XBH = "";//现班号   学校班级数据表
            if (string.IsNullOrEmpty(xjyd.XNJ)) xjyd.XNJ = "";//现年级   学校年级数据表
            EDU_ZZXS_07_02_XJYD xjyd_model = db_zzxs.EDU_ZZXS_07_02_XJYD.FirstOrDefault(e => e.ID == xjyd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xjyd_model != null)
            {
                xjyd_model.ID = xjyd.ID;//学籍异动表编号
                xjyd_model.XSXXID = xjyd.XSXXID;//学生ID   学生信息数据表
                xjyd_model.SCHOOLID = xjyd.SCHOOLID;//学校ID   学校配置表
                xjyd_model.YDLBM = xjyd.YDLBM;//异动类别码   学籍异动类别代码表
                xjyd_model.YDRQ = xjyd.YDRQ;//异动日期
                xjyd_model.YDYYM = xjyd.YDYYM;//异动原因码   学籍异动原因代码表
                xjyd_model.SPRQ = xjyd.SPRQ;//审批日期
                xjyd_model.SPWH = xjyd.SPWH;//审批文号
                xjyd_model.JBRID = xjyd.JBRID;//经办人ID   教职工基本数据子类表
                xjyd_model.JBRGH = xjyd.JBRGH;//经办人工号
                xjyd_model.YDLYXXM = xjyd.YDLYXXM;//异动来源学校码
                xjyd_model.YDQXXXM = xjyd.YDQXXXM;//异动去向学校码
                xjyd_model.YDSM = xjyd.YDSM;//异动说明
                xjyd_model.YZYM = xjyd.YZYM;//原专业码
                xjyd_model.YZYID = xjyd.YZYID;//原专业ID   专业基本信息数据表
                xjyd_model.YBH = xjyd.YBH;//原班号   学校班级数据表
                xjyd_model.YNJ = xjyd.YNJ;//原年级   学校年级数据表
                xjyd_model.XZYM = xjyd.XZYM;//现专业码
                xjyd_model.XZYID = xjyd.XZYID;//现专业ID   专业基本信息数据表
                xjyd_model.XBH = xjyd.XBH;//现班号   学校班级数据表
                xjyd_model.XNJ = xjyd.XNJ;//现年级   学校年级数据表
                db_zzxs.Entry(xjyd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_07_02_XJYD.Add(xjyd);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XJYDLBLst = JBLDAL.GetJY_XJYDLBSelLst();
            ViewBag.JY_XJYDYYLst = JBLDAL.GetJY_XJYDYYSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_07_02_XJYD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_07_02_XJYD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_07_02_XJYD xjyd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXjyd(xjyd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjyd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjyd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_07_02_XJYD xjyd= db_zzxs.EDU_ZZXS_07_02_XJYD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xjyd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_07_02_XJYD xjyd)
        {
            InitViewBag();
            try
            {
                
                
                UpdXjyd(xjyd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjyd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjyd);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_07_02_XJYD xjyd = db_zzxs.EDU_ZZXS_07_02_XJYD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_07_02_XJYD.Remove(xjyd);
                db_zzxs.SaveChanges();
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
                    EDU_ZZXS_07_02_XJYD xjyd = db_zzxs.EDU_ZZXS_07_02_XJYD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_07_02_XJYD.Remove(xjyd);
                    db_zzxs.SaveChanges();
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

        private static int Max_XJYD_ID = 0;
        private static object syncIDLock = new object();
        //获取学籍异动数据子类表最大ID
        public int GetMax_XJYD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XJYD_ID == 0)
                {
                    EDU_ZZXS_07_02_XJYD xjyd = db_zzxs.EDU_ZZXS_07_02_XJYD.FirstOrDefault();
                    if (xjyd == null)
                    {
                        Max_XJYD_ID = 1;
                    }
                    else
                    {
                        //Max_XJYD_ID = db_zzxs.EDU_ZZXS_07_02_XJYD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XJYD_ID++;
                }
                maxId = Max_XJYD_ID;
            }
            return maxId;
        }

    }
}
