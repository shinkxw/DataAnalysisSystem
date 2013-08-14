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
    public class ZZDFXZController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP> model = db_zxdy.VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzdfxz(EDU_ZXDY_05_A02_ZZDFXZ zzdfxz)
        {
            zzdfxz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzdfxz(zzdfxz);
        }

        public void UpdZzdfxz(EDU_ZXDY_05_A02_ZZDFXZ zzdfxz)
        {
            //设置默认值
            if (zzdfxz.ID == 0) zzdfxz.ID = 0;//值周打分细则表ID
            if (zzdfxz.SCHOOLID == 0) zzdfxz.SCHOOLID = 0;//学校ID
            if (zzdfxz.SSDLID == 0) zzdfxz.SSDLID = 0;//所属大类ID
            if (string.IsNullOrEmpty(zzdfxz.XZNR)) zzdfxz.XZNR = "";//细则内容
            if (zzdfxz.XZFZ == 0) zzdfxz.XZFZ = 0;//细则分值
            EDU_ZXDY_05_A02_ZZDFXZ zzdfxz_model = db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.FirstOrDefault(e => e.ID == zzdfxz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzdfxz_model != null)
            {
                zzdfxz_model.ID = zzdfxz.ID;//值周打分细则表ID
                zzdfxz_model.SCHOOLID = zzdfxz.SCHOOLID;//学校ID
                zzdfxz_model.SSDLID = zzdfxz.SSDLID;//所属大类ID
                zzdfxz_model.XZNR = zzdfxz.XZNR;//细则内容
                zzdfxz_model.XZFZ = zzdfxz.XZFZ;//细则分值
                db_zxdy.Entry(zzdfxz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.Add(zzdfxz);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_05_A02_ZZDFXZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_05_A02_ZZDFXZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_05_A02_ZZDFXZ zzdfxz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzdfxz(zzdfxz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzdfxz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzdfxz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_05_A02_ZZDFXZ zzdfxz= db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzdfxz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_05_A02_ZZDFXZ zzdfxz)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzdfxz(zzdfxz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzdfxz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzdfxz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXDY_05_A02_ZZDFXZ zzdfxz = db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.Remove(zzdfxz);
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
                    EDU_ZXDY_05_A02_ZZDFXZ zzdfxz = db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.Remove(zzdfxz);
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

        private static int Max_ZZDFXZ_ID = 0;
        private static object syncIDLock = new object();
        //获取值周打分细则表最大ID
        public int GetMax_ZZDFXZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZDFXZ_ID == 0)
                {
                    EDU_ZXDY_05_A02_ZZDFXZ zzdfxz = db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.FirstOrDefault();
                    if (zzdfxz == null)
                    {
                        Max_ZZDFXZ_ID = 1;
                    }
                    else
                    {
                        //Max_ZZDFXZ_ID = db_zxdy.EDU_ZXDY_05_A02_ZZDFXZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZDFXZ_ID++;
                }
                maxId = Max_ZZDFXZ_ID;
            }
            return maxId;
        }

    }
}
