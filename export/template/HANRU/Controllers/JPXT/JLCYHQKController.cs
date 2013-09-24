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
    public class JLCYHQKController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_05_JLCYHQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_05_JLCYHQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcyhqk(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            jlcyhqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcyhqk(jlcyhqk);
        }

        public void UpdJlcyhqk(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            //设置默认值
            if (jlcyhqk.ID == 0) jlcyhqk.ID = 0;//编号
            if (jlcyhqk.SCHOOLID == 0) jlcyhqk.SCHOOLID = 0;//学校ID   学校配置表
            if (jlcyhqk.JLCID == 0) jlcyhqk.JLCID = 0;//教练车ID   教练车数据表
            if (jlcyhqk.JLYID == 0) jlcyhqk.JLYID = 0;//教练员ID   教练员数据表
            if (jlcyhqk.YLCZ == 0) jlcyhqk.YLCZ = 0;//油量充值
            if (string.IsNullOrEmpty(jlcyhqk.BZ)) jlcyhqk.BZ = "";//备注
            EDU_JPXT_01_05_JLCYHQK jlcyhqk_model = db_jpxt.EDU_JPXT_01_05_JLCYHQK.FirstOrDefault(e => e.ID == jlcyhqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcyhqk_model != null)
            {
                jlcyhqk_model.ID = jlcyhqk.ID;//编号
                jlcyhqk_model.SCHOOLID = jlcyhqk.SCHOOLID;//学校ID   学校配置表
                jlcyhqk_model.JLCID = jlcyhqk.JLCID;//教练车ID   教练车数据表
                jlcyhqk_model.JLYID = jlcyhqk.JLYID;//教练员ID   教练员数据表
                jlcyhqk_model.LRSJ = jlcyhqk.LRSJ;//录入时间
                jlcyhqk_model.YLCZ = jlcyhqk.YLCZ;//油量充值
                jlcyhqk_model.BZ = jlcyhqk.BZ;//备注
                db_jpxt.Entry(jlcyhqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_01_05_JLCYHQK.Add(jlcyhqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_05_JLCYHQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_05_JLCYHQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcyhqk(jlcyhqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcyhqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcyhqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_05_JLCYHQK jlcyhqk= db_jpxt.EDU_JPXT_01_05_JLCYHQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcyhqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcyhqk(jlcyhqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcyhqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcyhqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_05_JLCYHQK jlcyhqk = db_jpxt.EDU_JPXT_01_05_JLCYHQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_05_JLCYHQK.Remove(jlcyhqk);
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
                    EDU_JPXT_01_05_JLCYHQK jlcyhqk = db_jpxt.EDU_JPXT_01_05_JLCYHQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_05_JLCYHQK.Remove(jlcyhqk);
                    db_jpxt.SaveChanges();
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

        private static int Max_JLCYHQK_ID = 0;
        private static object syncIDLock = new object();
        //获取教练车油耗情况表最大ID
        public int GetMax_JLCYHQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCYHQK_ID == 0)
                {
                    EDU_JPXT_01_05_JLCYHQK jlcyhqk = db_jpxt.EDU_JPXT_01_05_JLCYHQK.FirstOrDefault();
                    if (jlcyhqk == null)
                    {
                        Max_JLCYHQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLCYHQK_ID = db_jpxt.EDU_JPXT_01_05_JLCYHQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCYHQK_ID++;
                }
                maxId = Max_JLCYHQK_ID;
            }
            return maxId;
        }

    }
}
