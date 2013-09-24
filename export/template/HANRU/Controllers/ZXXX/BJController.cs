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
    public class BJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_03_01_BJ_DISP> model = db_zxxx.VIEW_EDU_ZXXX_03_01_BJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.SCHOOLID.Contains(searchkey)).ToList();
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

        public void AddBj(EDU_ZXXX_03_01_BJ bj)
        {
            bj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdBj(bj);
        }

        public void UpdBj(EDU_ZXXX_03_01_BJ bj)
        {
            //设置默认值
            if (bj.SCHOOLID == 0) bj.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(bj.BH)) bj.BH = "";//班号
            if (string.IsNullOrEmpty(bj.NJ)) bj.NJ = "";//年级号   年级数据类表
            if (string.IsNullOrEmpty(bj.BJ)) bj.BJ = "";//班级名称
            if (string.IsNullOrEmpty(bj.JBNY)) bj.JBNY = "";//建班年月
            if (string.IsNullOrEmpty(bj.BZRGH)) bj.BZRGH = "";//班主任工号
            if (string.IsNullOrEmpty(bj.BZXH)) bj.BZXH = "";//班长学号
            if (string.IsNullOrEmpty(bj.BJRYCH)) bj.BJRYCH = "";//班级荣誉称号
            if (bj.XZ == 0) bj.XZ = 0;//学制
            if (string.IsNullOrEmpty(bj.BJLXM)) bj.BJLXM = "";//班级类型码   中小学班级类型代码表
            if (string.IsNullOrEmpty(bj.WLLX)) bj.WLLX = "";//文理类型
            if (string.IsNullOrEmpty(bj.BYRQ)) bj.BYRQ = "";//毕业日期
            if (string.IsNullOrEmpty(bj.SFSSMZSYJXB)) bj.SFSSMZSYJXB = "";//是否少数民族双语教学班   是否标志代码表
            if (string.IsNullOrEmpty(bj.SYJXMSM)) bj.SYJXMSM = "";//双语教学模式码   少数民族双语教学模式代码表
            if (bj.BZRID == 0) bj.BZRID = 0;//班主任ID   教职工基本数据子类表
            EDU_ZXXX_03_01_BJ bj_model = db_zxxx.EDU_ZXXX_03_01_BJ.FirstOrDefault(e => e.SCHOOLID == bj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (bj_model != null)
            {
                bj_model.SCHOOLID = bj.SCHOOLID;//学校名   学校配置表
                bj_model.BH = bj.BH;//班号
                bj_model.NJ = bj.NJ;//年级号   年级数据类表
                bj_model.BJ = bj.BJ;//班级名称
                bj_model.JBNY = bj.JBNY;//建班年月
                bj_model.BZRGH = bj.BZRGH;//班主任工号
                bj_model.BZXH = bj.BZXH;//班长学号
                bj_model.BJRYCH = bj.BJRYCH;//班级荣誉称号
                bj_model.XZ = bj.XZ;//学制
                bj_model.BJLXM = bj.BJLXM;//班级类型码   中小学班级类型代码表
                bj_model.WLLX = bj.WLLX;//文理类型
                bj_model.BYRQ = bj.BYRQ;//毕业日期
                bj_model.SFSSMZSYJXB = bj.SFSSMZSYJXB;//是否少数民族双语教学班   是否标志代码表
                bj_model.SYJXMSM = bj.SYJXMSM;//双语教学模式码   少数民族双语教学模式代码表
                bj_model.BZRID = bj.BZRID;//班主任ID   教职工基本数据子类表
                db_zxxx.Entry(bj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxxx.EDU_ZXXX_03_01_BJ.Add(bj);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_ZXXBJLXLst = JBLDAL.GetJY_ZXXBJLXSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SSMZSYJXMSLst = JBLDAL.GetJY_SSMZSYJXMSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_03_01_BJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_03_01_BJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_03_01_BJ bj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddBj(bj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(bj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(bj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_03_01_BJ bj= db_zxxx.EDU_ZXXX_03_01_BJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(bj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_03_01_BJ bj)
        {
            InitViewBag();
            try
            {
                
                
                UpdBj(bj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(bj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(bj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXXX_03_01_BJ bj = db_zxxx.EDU_ZXXX_03_01_BJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_03_01_BJ.Remove(bj);
                db_zxxx.SaveChanges();
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
                    EDU_ZXXX_03_01_BJ bj = db_zxxx.EDU_ZXXX_03_01_BJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_03_01_BJ.Remove(bj);
                    db_zxxx.SaveChanges();
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

        private static int Max_BJ_ID = 0;
        private static object syncIDLock = new object();
        //获取班级数据类表最大ID
        public int GetMax_BJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_BJ_ID == 0)
                {
                    EDU_ZXXX_03_01_BJ bj = db_zxxx.EDU_ZXXX_03_01_BJ.FirstOrDefault();
                    if (bj == null)
                    {
                        Max_BJ_ID = 1;
                    }
                    else
                    {
                        //Max_BJ_ID = db_zxxx.EDU_ZXXX_03_01_BJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_BJ_ID++;
                }
                maxId = Max_BJ_ID;
            }
            return maxId;
        }

    }
}
