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
    public class JLCCLXHController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_06_JLCCLXH_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_06_JLCCLXH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcclxh(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            jlcclxh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcclxh(jlcclxh);
        }

        public void UpdJlcclxh(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            //设置默认值
            if (jlcclxh.ID == 0) jlcclxh.ID = 0;//编号
            if (jlcclxh.SCHOOLID == 0) jlcclxh.SCHOOLID = 0;//学校ID   学校配置表
            if (jlcclxh.JLCID == 0) jlcclxh.JLCID = 0;//教练车ID   教练车数据表
            if (jlcclxh.JLYID == 0) jlcclxh.JLYID = 0;//教练员ID   教练员数据表
            if (jlcclxh.XHQK == 0) jlcclxh.XHQK = 0;//消耗情况
            if (string.IsNullOrEmpty(jlcclxh.BZ)) jlcclxh.BZ = "";//备注
            EDU_JPXT_01_06_JLCCLXH jlcclxh_model = db_jpxt.EDU_JPXT_01_06_JLCCLXH.FirstOrDefault(e => e.ID == jlcclxh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcclxh_model != null)
            {
                jlcclxh_model.ID = jlcclxh.ID;//编号
                jlcclxh_model.SCHOOLID = jlcclxh.SCHOOLID;//学校ID   学校配置表
                jlcclxh_model.JLCID = jlcclxh.JLCID;//教练车ID   教练车数据表
                jlcclxh_model.JLYID = jlcclxh.JLYID;//教练员ID   教练员数据表
                jlcclxh_model.LRSJ = jlcclxh.LRSJ;//录入时间
                jlcclxh_model.XHQK = jlcclxh.XHQK;//消耗情况
                jlcclxh_model.BZ = jlcclxh.BZ;//备注
                db_jpxt.Entry(jlcclxh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_01_06_JLCCLXH.Add(jlcclxh);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_06_JLCCLXH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_06_JLCCLXH());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcclxh(jlcclxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcclxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcclxh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_06_JLCCLXH jlcclxh= db_jpxt.EDU_JPXT_01_06_JLCCLXH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcclxh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcclxh(jlcclxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcclxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcclxh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_06_JLCCLXH jlcclxh = db_jpxt.EDU_JPXT_01_06_JLCCLXH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_06_JLCCLXH.Remove(jlcclxh);
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
                    EDU_JPXT_01_06_JLCCLXH jlcclxh = db_jpxt.EDU_JPXT_01_06_JLCCLXH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_06_JLCCLXH.Remove(jlcclxh);
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

        private static int Max_JLCCLXH_ID = 0;
        private static object syncIDLock = new object();
        //获取教练车材料消耗表最大ID
        public int GetMax_JLCCLXH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCCLXH_ID == 0)
                {
                    EDU_JPXT_01_06_JLCCLXH jlcclxh = db_jpxt.EDU_JPXT_01_06_JLCCLXH.FirstOrDefault();
                    if (jlcclxh == null)
                    {
                        Max_JLCCLXH_ID = 1;
                    }
                    else
                    {
                        //Max_JLCCLXH_ID = db_jpxt.EDU_JPXT_01_06_JLCCLXH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCCLXH_ID++;
                }
                maxId = Max_JLCCLXH_ID;
            }
            return maxId;
        }

    }
}
