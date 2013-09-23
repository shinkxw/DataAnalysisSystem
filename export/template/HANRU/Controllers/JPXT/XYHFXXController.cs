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
    public class XYHFXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_03_03_XYHFXX_DISP> model = db_jpxt.VIEW_EDU_JPXT_03_03_XYHFXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXyhfxx(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            xyhfxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXyhfxx(xyhfxx);
        }

        public void UpdXyhfxx(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            //设置默认值
            if (xyhfxx.ID == 0) xyhfxx.ID = 0;//编号
            if (xyhfxx.SCHOOLID == 0) xyhfxx.SCHOOLID = 0;//学校ID   学校配置表
            if (xyhfxx.XYID == 0) xyhfxx.XYID = 0;//学员ID   学员数据表
            if (xyhfxx.HFSJ == 0) xyhfxx.HFSJ = 0;//回访时间
            if (string.IsNullOrEmpty(xyhfxx.HFJG)) xyhfxx.HFJG = "";//回访结果
            if (string.IsNullOrEmpty(xyhfxx.BZ)) xyhfxx.BZ = "";//备注
            EDU_JPXT_03_03_XYHFXX xyhfxx_model = db_jpxt.EDU_JPXT_03_03_XYHFXX.FirstOrDefault(e => e.ID == xyhfxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xyhfxx_model != null)
            {
                xyhfxx_model.ID = xyhfxx.ID;//编号
                xyhfxx_model.SCHOOLID = xyhfxx.SCHOOLID;//学校ID   学校配置表
                xyhfxx_model.XYID = xyhfxx.XYID;//学员ID   学员数据表
                xyhfxx_model.HFSJ = xyhfxx.HFSJ;//回访时间
                xyhfxx_model.HFJG = xyhfxx.HFJG;//回访结果
                xyhfxx_model.BZ = xyhfxx.BZ;//备注
                db_jpxt.Entry(xyhfxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_03_03_XYHFXX.Add(xyhfxx);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_03_03_XYHFXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_03_03_XYHFXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXyhfxx(xyhfxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyhfxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyhfxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_03_03_XYHFXX xyhfxx= db_jpxt.EDU_JPXT_03_03_XYHFXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xyhfxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXyhfxx(xyhfxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyhfxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyhfxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_03_03_XYHFXX xyhfxx = db_jpxt.EDU_JPXT_03_03_XYHFXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_03_03_XYHFXX.Remove(xyhfxx);
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
                    EDU_JPXT_03_03_XYHFXX xyhfxx = db_jpxt.EDU_JPXT_03_03_XYHFXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_03_03_XYHFXX.Remove(xyhfxx);
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

        private static int Max_XYHFXX_ID = 0;
        private static object syncIDLock = new object();
        //获取学员回访信息表最大ID
        public int GetMax_XYHFXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XYHFXX_ID == 0)
                {
                    EDU_JPXT_03_03_XYHFXX xyhfxx = db_jpxt.EDU_JPXT_03_03_XYHFXX.FirstOrDefault();
                    if (xyhfxx == null)
                    {
                        Max_XYHFXX_ID = 1;
                    }
                    else
                    {
                        //Max_XYHFXX_ID = db_jpxt.EDU_JPXT_03_03_XYHFXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XYHFXX_ID++;
                }
                maxId = Max_XYHFXX_ID;
            }
            return maxId;
        }

    }
}
