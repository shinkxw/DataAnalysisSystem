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
    public class XSCJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_06_01_XSCJ_DISP> model = db_zzxs.VIEW_EDU_ZZXS_06_01_XSCJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddXscj(EDU_ZZXS_06_01_XSCJ xscj)
        {
            xscj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXscj(xscj);
        }

        public void UpdXscj(EDU_ZZXS_06_01_XSCJ xscj)
        {
            //设置默认值
            if (xscj.XSXXID == 0) xscj.XSXXID = 0;//学生ID
            if (xscj.SCHOOLID == 0) xscj.SCHOOLID = 0;//学校ID
            if (string.IsNullOrEmpty(xscj.KCH)) xscj.KCH = "";//课程号
            if (xscj.XQID == 0) xscj.XQID = 0;//学期ID
            if (string.IsNullOrEmpty(xscj.KCMC)) xscj.KCMC = "";//课程名称
            if (xscj.XF == 0) xscj.XF = 0;//学分
            if (string.IsNullOrEmpty(xscj.XQMC)) xscj.XQMC = "";//学期名称
            if (xscj.PSCJ == 0) xscj.PSCJ = 0;//平时成绩
            if (xscj.CJ == 0) xscj.CJ = 0;//成绩
            if (string.IsNullOrEmpty(xscj.KSXZ)) xscj.KSXZ = "";//考试性质
            if (xscj.RKJGID == 0) xscj.RKJGID = 0;//任课教工ID
            if (string.IsNullOrEmpty(xscj.RKJGH)) xscj.RKJGH = "";//任课教工号
            if (xscj.CJLRJGID == 0) xscj.CJLRJGID = 0;//成绩录入教工ID
            if (string.IsNullOrEmpty(xscj.CJLRJGH)) xscj.CJLRJGH = "";//成绩录入教工号
            if (string.IsNullOrEmpty(xscj.CJLRRQ)) xscj.CJLRRQ = "";//成绩录入日期
            if (xscj.QZCJ == 0) xscj.QZCJ = 0;//期中成绩
            if (xscj.QMCJ == 0) xscj.QMCJ = 0;//期末成绩
            EDU_ZZXS_06_01_XSCJ xscj_model = db_zzxs.EDU_ZZXS_06_01_XSCJ.FirstOrDefault(e => e.XSXXID == xscj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xscj_model != null)
            {
                xscj_model.XSXXID = xscj.XSXXID;//学生ID
                xscj_model.SCHOOLID = xscj.SCHOOLID;//学校ID
                xscj_model.KCH = xscj.KCH;//课程号
                xscj_model.XQID = xscj.XQID;//学期ID
                xscj_model.KCMC = xscj.KCMC;//课程名称
                xscj_model.XF = xscj.XF;//学分
                xscj_model.XQMC = xscj.XQMC;//学期名称
                xscj_model.PSCJ = xscj.PSCJ;//平时成绩
                xscj_model.CJ = xscj.CJ;//成绩
                xscj_model.KSXZ = xscj.KSXZ;//考试性质
                xscj_model.RKJGID = xscj.RKJGID;//任课教工ID
                xscj_model.RKJGH = xscj.RKJGH;//任课教工号
                xscj_model.CJLRJGID = xscj.CJLRJGID;//成绩录入教工ID
                xscj_model.CJLRJGH = xscj.CJLRJGH;//成绩录入教工号
                xscj_model.CJLRRQ = xscj.CJLRRQ;//成绩录入日期
                xscj_model.QZCJ = xscj.QZCJ;//期中成绩
                xscj_model.QMCJ = xscj.QMCJ;//期末成绩
                db_zzxs.Entry(xscj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_06_01_XSCJ.Add(xscj);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_06_01_XSCJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_06_01_XSCJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_06_01_XSCJ xscj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXscj(xscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xscj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_06_01_XSCJ xscj= db_zzxs.EDU_ZZXS_06_01_XSCJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xscj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_06_01_XSCJ xscj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXscj(xscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xscj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_06_01_XSCJ xscj = db_zzxs.EDU_ZZXS_06_01_XSCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_06_01_XSCJ.Remove(xscj);
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
                    EDU_ZZXS_06_01_XSCJ xscj = db_zzxs.EDU_ZZXS_06_01_XSCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_06_01_XSCJ.Remove(xscj);
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

        private static int Max_XSCJ_ID = 0;
        private static object syncIDLock = new object();
        //获取学生成绩数据类表最大ID
        public int GetMax_XSCJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSCJ_ID == 0)
                {
                    EDU_ZZXS_06_01_XSCJ xscj = db_zzxs.EDU_ZZXS_06_01_XSCJ.FirstOrDefault();
                    if (xscj == null)
                    {
                        Max_XSCJ_ID = 1;
                    }
                    else
                    {
                        //Max_XSCJ_ID = db_zzxs.EDU_ZZXS_06_01_XSCJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSCJ_ID++;
                }
                maxId = Max_XSCJ_ID;
            }
            return maxId;
        }

    }
}
