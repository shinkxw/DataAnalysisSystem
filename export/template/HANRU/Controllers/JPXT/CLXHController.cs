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
    public class CLXHController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_05_01_CLXH_DISP> model = db_jpxt.VIEW_EDU_JPXT_05_01_CLXH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddClxh(EDU_JPXT_05_01_CLXH clxh)
        {
            clxh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdClxh(clxh);
        }

        public void UpdClxh(EDU_JPXT_05_01_CLXH clxh)
        {
            //设置默认值
            if (clxh.ID == 0) clxh.ID = 0;//编号
            if (clxh.SCHOOLID == 0) clxh.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(clxh.CLXHMC)) clxh.CLXHMC = "";//车辆型号名称
            if (string.IsNullOrEmpty(clxh.BZ)) clxh.BZ = "";//备注
            EDU_JPXT_05_01_CLXH clxh_model = db_jpxt.EDU_JPXT_05_01_CLXH.FirstOrDefault(e => e.ID == clxh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (clxh_model != null)
            {
                clxh_model.ID = clxh.ID;//编号
                clxh_model.SCHOOLID = clxh.SCHOOLID;//学校ID   学校配置表
                clxh_model.CLXHMC = clxh.CLXHMC;//车辆型号名称
                clxh_model.BZ = clxh.BZ;//备注
                db_jpxt.Entry(clxh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_05_01_CLXH.Add(clxh);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_05_01_CLXH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_05_01_CLXH());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_05_01_CLXH clxh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddClxh(clxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(clxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(clxh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_05_01_CLXH clxh= db_jpxt.EDU_JPXT_05_01_CLXH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(clxh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_05_01_CLXH clxh)
        {
            InitViewBag();
            try
            {
                
                
                UpdClxh(clxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(clxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(clxh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_05_01_CLXH clxh = db_jpxt.EDU_JPXT_05_01_CLXH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_05_01_CLXH.Remove(clxh);
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
                    EDU_JPXT_05_01_CLXH clxh = db_jpxt.EDU_JPXT_05_01_CLXH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_05_01_CLXH.Remove(clxh);
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

        private static int Max_CLXH_ID = 0;
        private static object syncIDLock = new object();
        //获取车辆型号数据表最大ID
        public int GetMax_CLXH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_CLXH_ID == 0)
                {
                    EDU_JPXT_05_01_CLXH clxh = db_jpxt.EDU_JPXT_05_01_CLXH.FirstOrDefault();
                    if (clxh == null)
                    {
                        Max_CLXH_ID = 1;
                    }
                    else
                    {
                        //Max_CLXH_ID = db_jpxt.EDU_JPXT_05_01_CLXH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_CLXH_ID++;
                }
                maxId = Max_CLXH_ID;
            }
            return maxId;
        }

    }
}
