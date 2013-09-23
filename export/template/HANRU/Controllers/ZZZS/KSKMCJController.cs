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
    public class KSKMCJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP> model = db_zzzs.VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddKskmcj(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            kskmcj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKskmcj(kskmcj);
        }

        public void UpdKskmcj(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            //设置默认值
            if (kskmcj.XSXXID == 0) kskmcj.XSXXID = 0;//考生ID   学生信息数据表
            if (kskmcj.SCHOOLID == 0) kskmcj.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(kskmcj.KMM)) kskmcj.KMM = "";//科目码   中考科目代码
            if (kskmcj.ZKFS == 0) kskmcj.ZKFS = 0;//中考分数
            EDU_ZZZS_03_01_KSKMCJ kskmcj_model = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.FirstOrDefault(e => e.XSXXID == kskmcj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kskmcj_model != null)
            {
                kskmcj_model.XSXXID = kskmcj.XSXXID;//考生ID   学生信息数据表
                kskmcj_model.SCHOOLID = kskmcj.SCHOOLID;//学校ID   学校配置表
                kskmcj_model.KMM = kskmcj.KMM;//科目码   中考科目代码
                kskmcj_model.ZKFS = kskmcj.ZKFS;//中考分数
                db_zzzs.Entry(kskmcj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Add(kskmcj);
            }
            db_zzzs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZZ_ZKKMLst = ZZBLDAL.GetZZ_ZKKMSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZZS_03_01_KSKMCJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZZS_03_01_KSKMCJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKskmcj(kskmcj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kskmcj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kskmcj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZZS_03_01_KSKMCJ kskmcj= db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kskmcj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            InitViewBag();
            try
            {
                
                
                UpdKskmcj(kskmcj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kskmcj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kskmcj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZZS_03_01_KSKMCJ kskmcj = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Remove(kskmcj);
                db_zzzs.SaveChanges();
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
                    EDU_ZZZS_03_01_KSKMCJ kskmcj = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Remove(kskmcj);
                    db_zzzs.SaveChanges();
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

        private static int Max_KSKMCJ_ID = 0;
        private static object syncIDLock = new object();
        //获取考生科目成绩数据类表最大ID
        public int GetMax_KSKMCJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KSKMCJ_ID == 0)
                {
                    EDU_ZZZS_03_01_KSKMCJ kskmcj = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.FirstOrDefault();
                    if (kskmcj == null)
                    {
                        Max_KSKMCJ_ID = 1;
                    }
                    else
                    {
                        //Max_KSKMCJ_ID = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KSKMCJ_ID++;
                }
                maxId = Max_KSKMCJ_ID;
            }
            return maxId;
        }

    }
}
