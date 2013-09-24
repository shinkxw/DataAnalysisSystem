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
    public class MPJLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_06_A01_MPJL_DISP> model = db_zxjx.VIEW_EDU_ZXJX_06_A01_MPJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddMpjl(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            mpjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdMpjl(mpjl);
        }

        public void UpdMpjl(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            //设置默认值
            if (mpjl.ID == 0) mpjl.ID = 0;//编号
            if (mpjl.SCHOOLID == 0) mpjl.SCHOOLID = 0;//学校名   学校配置表
            if (mpjl.MPJS == 0) mpjl.MPJS = 0;//面批教师   教职工基本数据子类表
            if (string.IsNullOrEmpty(mpjl.MPKC)) mpjl.MPKC = "";//面批课程   课程数据类
            if (mpjl.MPXS == 0) mpjl.MPXS = 0;//面批学生   学生基本数据子类表
            if (mpjl.XNID == 0) mpjl.XNID = 0;//学年   学年表
            if (mpjl.XQID == 0) mpjl.XQID = 0;//学期   学期数据表
            if (string.IsNullOrEmpty(mpjl.NJID)) mpjl.NJID = "";//年级   年级数据类表
            if (string.IsNullOrEmpty(mpjl.BJID)) mpjl.BJID = "";//班级   班级数据类表
            if (mpjl.MPJG == 0) mpjl.MPJG = 0;//面批结果
            if (string.IsNullOrEmpty(mpjl.BZ)) mpjl.BZ = "";//备注
            if (mpjl.JSRKID == 0) mpjl.JSRKID = 0;//教师任课编号
            EDU_ZXJX_06_A01_MPJL mpjl_model = db_zxjx.EDU_ZXJX_06_A01_MPJL.FirstOrDefault(e => e.ID == mpjl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (mpjl_model != null)
            {
                mpjl_model.ID = mpjl.ID;//编号
                mpjl_model.SCHOOLID = mpjl.SCHOOLID;//学校名   学校配置表
                mpjl_model.MPJS = mpjl.MPJS;//面批教师   教职工基本数据子类表
                mpjl_model.MPKC = mpjl.MPKC;//面批课程   课程数据类
                mpjl_model.MPXS = mpjl.MPXS;//面批学生   学生基本数据子类表
                mpjl_model.XNID = mpjl.XNID;//学年   学年表
                mpjl_model.XQID = mpjl.XQID;//学期   学期数据表
                mpjl_model.NJID = mpjl.NJID;//年级   年级数据类表
                mpjl_model.BJID = mpjl.BJID;//班级   班级数据类表
                mpjl_model.MPJG = mpjl.MPJG;//面批结果
                mpjl_model.MPSJ = mpjl.MPSJ;//面批时间
                mpjl_model.RRSJ = mpjl.RRSJ;//录入时间
                mpjl_model.BZ = mpjl.BZ;//备注
                mpjl_model.JSRKID = mpjl.JSRKID;//教师任课编号
                db_zxjx.Entry(mpjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjx.EDU_ZXJX_06_A01_MPJL.Add(mpjl);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_06_A01_MPJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_06_A01_MPJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddMpjl(mpjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(mpjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(mpjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_06_A01_MPJL mpjl= db_zxjx.EDU_ZXJX_06_A01_MPJL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(mpjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdMpjl(mpjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(mpjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(mpjl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_06_A01_MPJL mpjl = db_zxjx.EDU_ZXJX_06_A01_MPJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_06_A01_MPJL.Remove(mpjl);
                db_zxjx.SaveChanges();
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
                    EDU_ZXJX_06_A01_MPJL mpjl = db_zxjx.EDU_ZXJX_06_A01_MPJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_06_A01_MPJL.Remove(mpjl);
                    db_zxjx.SaveChanges();
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

        private static int Max_MPJL_ID = 0;
        private static object syncIDLock = new object();
        //获取面批记录表最大ID
        public int GetMax_MPJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_MPJL_ID == 0)
                {
                    EDU_ZXJX_06_A01_MPJL mpjl = db_zxjx.EDU_ZXJX_06_A01_MPJL.FirstOrDefault();
                    if (mpjl == null)
                    {
                        Max_MPJL_ID = 1;
                    }
                    else
                    {
                        //Max_MPJL_ID = db_zxjx.EDU_ZXJX_06_A01_MPJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_MPJL_ID++;
                }
                maxId = Max_MPJL_ID;
            }
            return maxId;
        }

    }
}
