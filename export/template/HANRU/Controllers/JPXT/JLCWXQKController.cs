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
    public class JLCWXQKController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_03_JLCWXQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_03_JLCWXQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcwxqk(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            jlcwxqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcwxqk(jlcwxqk);
        }

        public void UpdJlcwxqk(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            //设置默认值
            if (jlcwxqk.ID == 0) jlcwxqk.ID = 0;//编号
            if (jlcwxqk.SCHOOLID == 0) jlcwxqk.SCHOOLID = 0;//学校ID   学校配置表
            if (jlcwxqk.JLCID == 0) jlcwxqk.JLCID = 0;//教练车ID   教练车数据表
            if (string.IsNullOrEmpty(jlcwxqk.GZXX)) jlcwxqk.GZXX = "";//故障现象
            if (jlcwxqk.SXSJ == 0) jlcwxqk.SXSJ = 0;//送修时间
            if (jlcwxqk.WCSJ == 0) jlcwxqk.WCSJ = 0;//完成时间
            if (string.IsNullOrEmpty(jlcwxqk.WXJG)) jlcwxqk.WXJG = "";//维修结果
            if (string.IsNullOrEmpty(jlcwxqk.BZ)) jlcwxqk.BZ = "";//备注
            EDU_JPXT_01_03_JLCWXQK jlcwxqk_model = db_jpxt.EDU_JPXT_01_03_JLCWXQK.FirstOrDefault(e => e.ID == jlcwxqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcwxqk_model != null)
            {
                jlcwxqk_model.ID = jlcwxqk.ID;//编号
                jlcwxqk_model.SCHOOLID = jlcwxqk.SCHOOLID;//学校ID   学校配置表
                jlcwxqk_model.JLCID = jlcwxqk.JLCID;//教练车ID   教练车数据表
                jlcwxqk_model.GZXX = jlcwxqk.GZXX;//故障现象
                jlcwxqk_model.SXSJ = jlcwxqk.SXSJ;//送修时间
                jlcwxqk_model.WCSJ = jlcwxqk.WCSJ;//完成时间
                jlcwxqk_model.WXJG = jlcwxqk.WXJG;//维修结果
                jlcwxqk_model.BZ = jlcwxqk.BZ;//备注
                db_jpxt.Entry(jlcwxqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_01_03_JLCWXQK.Add(jlcwxqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_03_JLCWXQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_03_JLCWXQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcwxqk(jlcwxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcwxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcwxqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_03_JLCWXQK jlcwxqk= db_jpxt.EDU_JPXT_01_03_JLCWXQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcwxqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcwxqk(jlcwxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcwxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcwxqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_03_JLCWXQK jlcwxqk = db_jpxt.EDU_JPXT_01_03_JLCWXQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_03_JLCWXQK.Remove(jlcwxqk);
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
                    EDU_JPXT_01_03_JLCWXQK jlcwxqk = db_jpxt.EDU_JPXT_01_03_JLCWXQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_03_JLCWXQK.Remove(jlcwxqk);
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

        private static int Max_JLCWXQK_ID = 0;
        private static object syncIDLock = new object();
        //获取教练车维修情况表最大ID
        public int GetMax_JLCWXQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCWXQK_ID == 0)
                {
                    EDU_JPXT_01_03_JLCWXQK jlcwxqk = db_jpxt.EDU_JPXT_01_03_JLCWXQK.FirstOrDefault();
                    if (jlcwxqk == null)
                    {
                        Max_JLCWXQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLCWXQK_ID = db_jpxt.EDU_JPXT_01_03_JLCWXQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCWXQK_ID++;
                }
                maxId = Max_JLCWXQK_ID;
            }
            return maxId;
        }

    }
}
