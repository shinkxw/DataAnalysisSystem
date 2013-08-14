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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class SSCWController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZFC_08_A01_SSCW_DISP> model = db_zzfc.VIEW_EDU_ZZFC_08_A01_SSCW_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.SCHOOLID.Contains(searchkey)).ToList();
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

        public void AddSscw(EDU_ZZFC_08_A01_SSCW sscw)
        {
            sscw.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSscw(sscw);
        }

        public void UpdSscw(EDU_ZZFC_08_A01_SSCW sscw)
        {
            //设置默认值
            if (sscw.SCHOOLID == 0) sscw.SCHOOLID = 0;//学校ID
            if (sscw.ID == 0) sscw.ID = 0;//床位ID
            if (sscw.SSLID == 0) sscw.SSLID = 0;//宿舍楼ID
            if (sscw.SSID == 0) sscw.SSID = 0;//宿舍ID
            if (string.IsNullOrEmpty(sscw.CWM)) sscw.CWM = "";//床位名
            if (string.IsNullOrEmpty(sscw.BZ)) sscw.BZ = "";//备注
            if (string.IsNullOrEmpty(sscw.SFRZ)) sscw.SFRZ = "";//是否入住
            EDU_ZZFC_08_A01_SSCW sscw_model = db_zzfc.EDU_ZZFC_08_A01_SSCW.FirstOrDefault(e => e.SCHOOLID == sscw.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sscw_model != null)
            {
                sscw_model.SCHOOLID = sscw.SCHOOLID;//学校ID
                sscw_model.ID = sscw.ID;//床位ID
                sscw_model.SSLID = sscw.SSLID;//宿舍楼ID
                sscw_model.SSID = sscw.SSID;//宿舍ID
                sscw_model.CWM = sscw.CWM;//床位名
                sscw_model.BZ = sscw.BZ;//备注
                sscw_model.SFRZ = sscw.SFRZ;//是否入住
                db_zzfc.Entry(sscw_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzfc.EDU_ZZFC_08_A01_SSCW.Add(sscw);
            }
            db_zzfc.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZFC_08_A01_SSCW());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZFC_08_A01_SSCW());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZFC_08_A01_SSCW sscw)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSscw(sscw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sscw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sscw);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZFC_08_A01_SSCW sscw= db_zzfc.EDU_ZZFC_08_A01_SSCW.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sscw);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZFC_08_A01_SSCW sscw)
        {
            InitViewBag();
            try
            {
                
                
                UpdSscw(sscw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sscw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sscw);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZFC_08_A01_SSCW sscw = db_zzfc.EDU_ZZFC_08_A01_SSCW.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzfc.EDU_ZZFC_08_A01_SSCW.Remove(sscw);
                db_zzfc.SaveChanges();
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
                    EDU_ZZFC_08_A01_SSCW sscw = db_zzfc.EDU_ZZFC_08_A01_SSCW.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzfc.EDU_ZZFC_08_A01_SSCW.Remove(sscw);
                    db_zzfc.SaveChanges();
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

        private static int Max_SSCW_ID = 0;
        private static object syncIDLock = new object();
        //获取宿舍床位表最大ID
        public int GetMax_SSCW_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SSCW_ID == 0)
                {
                    EDU_ZZFC_08_A01_SSCW sscw = db_zzfc.EDU_ZZFC_08_A01_SSCW.FirstOrDefault();
                    if (sscw == null)
                    {
                        Max_SSCW_ID = 1;
                    }
                    else
                    {
                        //Max_SSCW_ID = db_zzfc.EDU_ZZFC_08_A01_SSCW.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SSCW_ID++;
                }
                maxId = Max_SSCW_ID;
            }
            return maxId;
        }

    }
}
