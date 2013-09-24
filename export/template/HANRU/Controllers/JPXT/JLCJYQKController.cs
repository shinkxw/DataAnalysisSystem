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
    public class JLCJYQKController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_04_JLCJYQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_04_JLCJYQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcjyqk(EDU_JPXT_01_04_JLCJYQK jlcjyqk)
        {
            jlcjyqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcjyqk(jlcjyqk);
        }

        public void UpdJlcjyqk(EDU_JPXT_01_04_JLCJYQK jlcjyqk)
        {
            //设置默认值
            if (jlcjyqk.ID == 0) jlcjyqk.ID = 0;//编号
            if (jlcjyqk.SCHOOLID == 0) jlcjyqk.SCHOOLID = 0;//学校ID   学校配置表
            if (jlcjyqk.JLCID == 0) jlcjyqk.JLCID = 0;//教练车ID   教练车数据表
            if (string.IsNullOrEmpty(jlcjyqk.JYNR)) jlcjyqk.JYNR = "";//检验内容
            if (string.IsNullOrEmpty(jlcjyqk.JYJG)) jlcjyqk.JYJG = "";//检验结果
            if (string.IsNullOrEmpty(jlcjyqk.BZ)) jlcjyqk.BZ = "";//备注
            EDU_JPXT_01_04_JLCJYQK jlcjyqk_model = db_jpxt.EDU_JPXT_01_04_JLCJYQK.FirstOrDefault(e => e.ID == jlcjyqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcjyqk_model != null)
            {
                jlcjyqk_model.ID = jlcjyqk.ID;//编号
                jlcjyqk_model.SCHOOLID = jlcjyqk.SCHOOLID;//学校ID   学校配置表
                jlcjyqk_model.JLCID = jlcjyqk.JLCID;//教练车ID   教练车数据表
                jlcjyqk_model.JYNR = jlcjyqk.JYNR;//检验内容
                jlcjyqk_model.JYSJ = jlcjyqk.JYSJ;//检验时间
                jlcjyqk_model.WCSJ = jlcjyqk.WCSJ;//完成时间
                jlcjyqk_model.JYJG = jlcjyqk.JYJG;//检验结果
                jlcjyqk_model.BZ = jlcjyqk.BZ;//备注
                db_jpxt.Entry(jlcjyqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_01_04_JLCJYQK.Add(jlcjyqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_04_JLCJYQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_04_JLCJYQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_04_JLCJYQK jlcjyqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcjyqk(jlcjyqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcjyqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcjyqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_04_JLCJYQK jlcjyqk= db_jpxt.EDU_JPXT_01_04_JLCJYQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcjyqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_04_JLCJYQK jlcjyqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcjyqk(jlcjyqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcjyqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcjyqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_04_JLCJYQK jlcjyqk = db_jpxt.EDU_JPXT_01_04_JLCJYQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_04_JLCJYQK.Remove(jlcjyqk);
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
                    EDU_JPXT_01_04_JLCJYQK jlcjyqk = db_jpxt.EDU_JPXT_01_04_JLCJYQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_04_JLCJYQK.Remove(jlcjyqk);
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

        private static int Max_JLCJYQK_ID = 0;
        private static object syncIDLock = new object();
        //获取教练车检验情况表最大ID
        public int GetMax_JLCJYQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCJYQK_ID == 0)
                {
                    EDU_JPXT_01_04_JLCJYQK jlcjyqk = db_jpxt.EDU_JPXT_01_04_JLCJYQK.FirstOrDefault();
                    if (jlcjyqk == null)
                    {
                        Max_JLCJYQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLCJYQK_ID = db_jpxt.EDU_JPXT_01_04_JLCJYQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCJYQK_ID++;
                }
                maxId = Max_JLCJYQK_ID;
            }
            return maxId;
        }

    }
}
