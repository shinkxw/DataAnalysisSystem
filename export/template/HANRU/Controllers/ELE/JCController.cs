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
    public class JCController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_JC_DISP> model = db_ele.VIEW_EDU_ELE_05_JC_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJc(EDU_ELE_05_JC jc)
        {
            jc.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJc(jc);
        }

        public void UpdJc(EDU_ELE_05_JC jc)
        {
            //设置默认值
            if (jc.ID == 0) jc.ID = 0;//编号
            if (jc.SCHOOLID == 0) jc.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(jc.MC)) jc.MC = "";//名称
            EDU_ELE_05_JC jc_model = db_ele.EDU_ELE_05_JC.FirstOrDefault(e => e.ID == jc.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jc_model != null)
            {
                jc_model.ID = jc.ID;//编号
                jc_model.SCHOOLID = jc.SCHOOLID;//学校名   学校配置表
                jc_model.MC = jc.MC;//名称
                db_ele.Entry(jc_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_05_JC.Add(jc);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_JC());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_JC());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_JC jc)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJc(jc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jc);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_JC jc= db_ele.EDU_ELE_05_JC.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jc);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_JC jc)
        {
            InitViewBag();
            try
            {
                
                
                UpdJc(jc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jc);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_05_JC jc = db_ele.EDU_ELE_05_JC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_JC.Remove(jc);
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
                    EDU_ELE_05_JC jc = db_ele.EDU_ELE_05_JC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_JC.Remove(jc);
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

        private static int Max_JC_ID = 0;
        private static object syncIDLock = new object();
        //获取节次最大ID
        public int GetMax_JC_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JC_ID == 0)
                {
                    EDU_ELE_05_JC jc = db_ele.EDU_ELE_05_JC.FirstOrDefault();
                    if (jc == null)
                    {
                        Max_JC_ID = 1;
                    }
                    else
                    {
                        //Max_JC_ID = db_ele.EDU_ELE_05_JC.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JC_ID++;
                }
                maxId = Max_JC_ID;
            }
            return maxId;
        }

    }
}
