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
    public class ZXKSCJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP> model = db_zxxs.VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZxkscj(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            zxkscj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZxkscj(zxkscj);
        }

        public void UpdZxkscj(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            //设置默认值
            if (zxkscj.ID == 0) zxkscj.ID = 0;//考试成绩表
            if (zxkscj.SCHOOLID == 0) zxkscj.SCHOOLID = 0;//学校名   学校配置表
            if (zxkscj.XSXXID == 0) zxkscj.XSXXID = 0;//学生ID   学生基本数据子类表
            if (string.IsNullOrEmpty(zxkscj.XN)) zxkscj.XN = "";//学年（度）
            if (string.IsNullOrEmpty(zxkscj.XQM)) zxkscj.XQM = "";//学期码   学期代码表
            if (string.IsNullOrEmpty(zxkscj.KSRQ)) zxkscj.KSRQ = "";//考试日期
            if (string.IsNullOrEmpty(zxkscj.KCH)) zxkscj.KCH = "";//课程号   课程数据类
            if (zxkscj.RKJSID == 0) zxkscj.RKJSID = 0;//任课教师ID   教职工基本数据子类表
            if (zxkscj.CJLRRID == 0) zxkscj.CJLRRID = 0;//成绩录入人ID   教职工基本数据子类表
            if (string.IsNullOrEmpty(zxkscj.KSFSM)) zxkscj.KSFSM = "";//考试方式码   考试方式代码表
            if (string.IsNullOrEmpty(zxkscj.KSXZM)) zxkscj.KSXZM = "";//考试性质码   考试性质代码表
            if (string.IsNullOrEmpty(zxkscj.KSXSM)) zxkscj.KSXSM = "";//考试形式码   考试形式代码表
            if (zxkscj.FSLKSCJ == 0) zxkscj.FSLKSCJ = 0;//分数类考试成绩
            if (string.IsNullOrEmpty(zxkscj.DJLKSCJ)) zxkscj.DJLKSCJ = "";//等级类考试成绩
            if (zxkscj.KCCJ == 0) zxkscj.KCCJ = 0;//课程成绩
            if (string.IsNullOrEmpty(zxkscj.KCDJCJM)) zxkscj.KCDJCJM = "";//课程等级成绩码
            if (string.IsNullOrEmpty(zxkscj.RKJSGH)) zxkscj.RKJSGH = "";//任课教师工号
            if (string.IsNullOrEmpty(zxkscj.CJLRRH)) zxkscj.CJLRRH = "";//成绩录入人号
            if (string.IsNullOrEmpty(zxkscj.CJLRRQ)) zxkscj.CJLRRQ = "";//成绩录入日期
            if (string.IsNullOrEmpty(zxkscj.CJLRSJ)) zxkscj.CJLRSJ = "";//成绩录入时间
            if (zxkscj.XQID == 0) zxkscj.XQID = 0;//学期   学期数据表
            if (zxkscj.XNID == 0) zxkscj.XNID = 0;//学年   学年表
            if (string.IsNullOrEmpty(zxkscj.NJID)) zxkscj.NJID = "";//年级   年级数据类表
            if (string.IsNullOrEmpty(zxkscj.BJID)) zxkscj.BJID = "";//班级   班级数据类表
            if (zxkscj.SSKSID == 0) zxkscj.SSKSID = 0;//所属考试ID   考试数据表
            if (zxkscj.SSKSKMID == 0) zxkscj.SSKSKMID = 0;//所属考试科目ID   考试科目数据表
            if (zxkscj.SJID == 0) zxkscj.SJID = 0;//试卷ID
            EDU_ZXXS_02_06_ZXKSCJ zxkscj_model = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.FirstOrDefault(e => e.ID == zxkscj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zxkscj_model != null)
            {
                zxkscj_model.ID = zxkscj.ID;//考试成绩表
                zxkscj_model.SCHOOLID = zxkscj.SCHOOLID;//学校名   学校配置表
                zxkscj_model.XSXXID = zxkscj.XSXXID;//学生ID   学生基本数据子类表
                zxkscj_model.XN = zxkscj.XN;//学年（度）
                zxkscj_model.XQM = zxkscj.XQM;//学期码   学期代码表
                zxkscj_model.KSRQ = zxkscj.KSRQ;//考试日期
                zxkscj_model.KCH = zxkscj.KCH;//课程号   课程数据类
                zxkscj_model.RKJSID = zxkscj.RKJSID;//任课教师ID   教职工基本数据子类表
                zxkscj_model.CJLRRID = zxkscj.CJLRRID;//成绩录入人ID   教职工基本数据子类表
                zxkscj_model.KSFSM = zxkscj.KSFSM;//考试方式码   考试方式代码表
                zxkscj_model.KSXZM = zxkscj.KSXZM;//考试性质码   考试性质代码表
                zxkscj_model.KSXSM = zxkscj.KSXSM;//考试形式码   考试形式代码表
                zxkscj_model.FSLKSCJ = zxkscj.FSLKSCJ;//分数类考试成绩
                zxkscj_model.DJLKSCJ = zxkscj.DJLKSCJ;//等级类考试成绩
                zxkscj_model.KCCJ = zxkscj.KCCJ;//课程成绩
                zxkscj_model.KCDJCJM = zxkscj.KCDJCJM;//课程等级成绩码
                zxkscj_model.RKJSGH = zxkscj.RKJSGH;//任课教师工号
                zxkscj_model.CJLRRH = zxkscj.CJLRRH;//成绩录入人号
                zxkscj_model.CJLRRQ = zxkscj.CJLRRQ;//成绩录入日期
                zxkscj_model.CJLRSJ = zxkscj.CJLRSJ;//成绩录入时间
                zxkscj_model.XQID = zxkscj.XQID;//学期   学期数据表
                zxkscj_model.XNID = zxkscj.XNID;//学年   学年表
                zxkscj_model.NJID = zxkscj.NJID;//年级   年级数据类表
                zxkscj_model.BJID = zxkscj.BJID;//班级   班级数据类表
                zxkscj_model.SSKSID = zxkscj.SSKSID;//所属考试ID   考试数据表
                zxkscj_model.SSKSKMID = zxkscj.SSKSKMID;//所属考试科目ID   考试科目数据表
                zxkscj_model.SJID = zxkscj.SJID;//试卷ID
                db_zxxs.Entry(zxkscj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Add(zxkscj);
            }
            db_zxxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XQLst = JBLDAL.GetJY_XQSelLst();
            ViewBag.JY_KSFSLst = JBLDAL.GetJY_KSFSSelLst();
            ViewBag.JY_KSXZLst = JBLDAL.GetJY_KSXZSelLst();
            ViewBag.JY_KSXSLst = JBLDAL.GetJY_KSXSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXS_02_06_ZXKSCJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXS_02_06_ZXKSCJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZxkscj(zxkscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxkscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxkscj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXS_02_06_ZXKSCJ zxkscj= db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zxkscj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            InitViewBag();
            try
            {
                
                
                UpdZxkscj(zxkscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxkscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxkscj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXS_02_06_ZXKSCJ zxkscj = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Remove(zxkscj);
                db_zxxs.SaveChanges();
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
                    EDU_ZXXS_02_06_ZXKSCJ zxkscj = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Remove(zxkscj);
                    db_zxxs.SaveChanges();
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

        private static int Max_ZXKSCJ_ID = 0;
        private static object syncIDLock = new object();
        //获取在校考试成绩数据子类表最大ID
        public int GetMax_ZXKSCJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZXKSCJ_ID == 0)
                {
                    EDU_ZXXS_02_06_ZXKSCJ zxkscj = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.FirstOrDefault();
                    if (zxkscj == null)
                    {
                        Max_ZXKSCJ_ID = 1;
                    }
                    else
                    {
                        //Max_ZXKSCJ_ID = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZXKSCJ_ID++;
                }
                maxId = Max_ZXKSCJ_ID;
            }
            return maxId;
        }

    }
}
