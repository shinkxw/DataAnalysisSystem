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
    public class XYKSQKController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_03_02_XYKSQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_03_02_XYKSQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XYID.Contains(searchkey)).ToList();
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

        public void AddXyksqk(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            xyksqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXyksqk(xyksqk);
        }

        public void UpdXyksqk(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            //设置默认值
            if (xyksqk.XYID == 0) xyksqk.XYID = 0;//学员ID   学员数据表
            if (xyksqk.SCHOOLID == 0) xyksqk.SCHOOLID = 0;//学校ID   学校配置表
            if (xyksqk.KMYIKSSJ == 0) xyksqk.KMYIKSSJ = 0;//科目一考试时间
            if (xyksqk.KMYIKSJG == 0) xyksqk.KMYIKSJG = 0;//科目一考试结果
            if (xyksqk.KMERKSSJ == 0) xyksqk.KMERKSSJ = 0;//科目二考试时间
            if (xyksqk.KMERYKSJG == 0) xyksqk.KMERYKSJG = 0;//科目二考试结果
            if (xyksqk.KMSANKSSJ == 0) xyksqk.KMSANKSSJ = 0;//科目三考试时间
            if (xyksqk.KMSANKSJG == 0) xyksqk.KMSANKSJG = 0;//科目三考试结果
            if (xyksqk.KMSIKSSJ == 0) xyksqk.KMSIKSSJ = 0;//科目四考试时间
            if (xyksqk.KMSIKSJG == 0) xyksqk.KMSIKSJG = 0;//科目四考试结果
            if (xyksqk.KMWUKSSJ == 0) xyksqk.KMWUKSSJ = 0;//科目五考试时间
            if (xyksqk.KMWUKSJG == 0) xyksqk.KMWUKSJG = 0;//科目五考试结果
            EDU_JPXT_03_02_XYKSQK xyksqk_model = db_jpxt.EDU_JPXT_03_02_XYKSQK.FirstOrDefault(e => e.XYID == xyksqk.XYID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xyksqk_model != null)
            {
                xyksqk_model.XYID = xyksqk.XYID;//学员ID   学员数据表
                xyksqk_model.SCHOOLID = xyksqk.SCHOOLID;//学校ID   学校配置表
                xyksqk_model.KMYIKSSJ = xyksqk.KMYIKSSJ;//科目一考试时间
                xyksqk_model.KMYIKSJG = xyksqk.KMYIKSJG;//科目一考试结果
                xyksqk_model.KMERKSSJ = xyksqk.KMERKSSJ;//科目二考试时间
                xyksqk_model.KMERYKSJG = xyksqk.KMERYKSJG;//科目二考试结果
                xyksqk_model.KMSANKSSJ = xyksqk.KMSANKSSJ;//科目三考试时间
                xyksqk_model.KMSANKSJG = xyksqk.KMSANKSJG;//科目三考试结果
                xyksqk_model.KMSIKSSJ = xyksqk.KMSIKSSJ;//科目四考试时间
                xyksqk_model.KMSIKSJG = xyksqk.KMSIKSJG;//科目四考试结果
                xyksqk_model.KMWUKSSJ = xyksqk.KMWUKSSJ;//科目五考试时间
                xyksqk_model.KMWUKSJG = xyksqk.KMWUKSJG;//科目五考试结果
                db_jpxt.Entry(xyksqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_03_02_XYKSQK.Add(xyksqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_03_02_XYKSQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_03_02_XYKSQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXyksqk(xyksqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyksqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyksqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_03_02_XYKSQK xyksqk= db_jpxt.EDU_JPXT_03_02_XYKSQK.Single(e => e.XYID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xyksqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdXyksqk(xyksqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyksqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyksqk);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_JPXT_03_02_XYKSQK xyksqk = db_jpxt.EDU_JPXT_03_02_XYKSQK.SingleOrDefault(e => e.XYID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_03_02_XYKSQK.Remove(xyksqk);
                db_jpxt.SaveChanges();
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
                    EDU_JPXT_03_02_XYKSQK xyksqk = db_jpxt.EDU_JPXT_03_02_XYKSQK.SingleOrDefault(e => e.XYID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_03_02_XYKSQK.Remove(xyksqk);
                    db_jpxt.SaveChanges();
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

        private static int Max_XYKSQK_ID = 0;
        private static object syncIDLock = new object();
        //获取学员考试情况表最大ID
        public int GetMax_XYKSQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XYKSQK_ID == 0)
                {
                    EDU_JPXT_03_02_XYKSQK xyksqk = db_jpxt.EDU_JPXT_03_02_XYKSQK.FirstOrDefault();
                    if (xyksqk == null)
                    {
                        Max_XYKSQK_ID = 1;
                    }
                    else
                    {
                        //Max_XYKSQK_ID = db_jpxt.EDU_JPXT_03_02_XYKSQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XYKSQK_ID++;
                }
                maxId = Max_XYKSQK_ID;
            }
            return maxId;
        }

    }
}
