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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class ZZRYAPController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzryap(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            zzryap.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzryap(zzryap);
        }

        public void UpdZzryap(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            //设置默认值
            if (zzryap.ID == 0) zzryap.ID = 0;//值周人员安排表ID
            if (zzryap.SCHOOLID == 0) zzryap.SCHOOLID = 0;//学校ID
            if (zzryap.XQID == 0) zzryap.XQID = 0;//学期ID
            if (zzryap.ZCID == 0) zzryap.ZCID = 0;//周次ID
            if (zzryap.KSRQ == 0) zzryap.KSRQ = 0;//开始日期
            if (zzryap.JSRQ == 0) zzryap.JSRQ = 0;//结束日期
            if (string.IsNullOrEmpty(zzryap.ZZBJ)) zzryap.ZZBJ = "";//值周班级班号
            if (string.IsNullOrEmpty(zzryap.ZZID)) zzryap.ZZID = "";//组长ID
            if (string.IsNullOrEmpty(zzryap.ZYIDLB)) zzryap.ZYIDLB = "";//组员ID列表
            EDU_ZXDY_04_A02_ZZRYAP zzryap_model = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.FirstOrDefault(e => e.ID == zzryap.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzryap_model != null)
            {
                zzryap_model.ID = zzryap.ID;//值周人员安排表ID
                zzryap_model.SCHOOLID = zzryap.SCHOOLID;//学校ID
                zzryap_model.XQID = zzryap.XQID;//学期ID
                zzryap_model.ZCID = zzryap.ZCID;//周次ID
                zzryap_model.KSRQ = zzryap.KSRQ;//开始日期
                zzryap_model.JSRQ = zzryap.JSRQ;//结束日期
                zzryap_model.ZZBJ = zzryap.ZZBJ;//值周班级班号
                zzryap_model.ZZID = zzryap.ZZID;//组长ID
                zzryap_model.ZYIDLB = zzryap.ZYIDLB;//组员ID列表
                db_zxdy.Entry(zzryap_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Add(zzryap);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A02_ZZRYAP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A02_ZZRYAP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzryap(zzryap);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzryap);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzryap);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A02_ZZRYAP zzryap= db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzryap);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzryap(zzryap);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzryap);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzryap);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXDY_04_A02_ZZRYAP zzryap = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Remove(zzryap);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_04_A02_ZZRYAP zzryap = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Remove(zzryap);
                    db_zxdy.SaveChanges();
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

        private static int Max_ZZRYAP_ID = 0;
        private static object syncIDLock = new object();
        //获取值周人员安排表最大ID
        public int GetMax_ZZRYAP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZRYAP_ID == 0)
                {
                    EDU_ZXDY_04_A02_ZZRYAP zzryap = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.FirstOrDefault();
                    if (zzryap == null)
                    {
                        Max_ZZRYAP_ID = 1;
                    }
                    else
                    {
                        //Max_ZZRYAP_ID = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZRYAP_ID++;
                }
                maxId = Max_ZZRYAP_ID;
            }
            return maxId;
        }

    }
}
