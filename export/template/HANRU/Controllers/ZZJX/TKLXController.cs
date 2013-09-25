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
    public class TKLXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_08_A02_TKLX_DISP> model = db_zzjx.VIEW_EDU_ZZJX_08_A02_TKLX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTklx(EDU_ZZJX_08_A02_TKLX tklx)
        {
            tklx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTklx(tklx);
        }

        public void UpdTklx(EDU_ZZJX_08_A02_TKLX tklx)
        {
            //设置默认值
            if (tklx.ID == 0) tklx.ID = 0;//编号
            if (tklx.SCHOOLID == 0) tklx.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(tklx.LXMC)) tklx.LXMC = "";//类型名称
            EDU_ZZJX_08_A02_TKLX tklx_model = db_zzjx.EDU_ZZJX_08_A02_TKLX.FirstOrDefault(e => e.ID == tklx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tklx_model != null)
            {
                tklx_model.ID = tklx.ID;//编号
                tklx_model.SCHOOLID = tklx.SCHOOLID;//学校ID   学校配置表
                tklx_model.LXMC = tklx.LXMC;//类型名称
                db_zzjx.Entry(tklx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_08_A02_TKLX.Add(tklx);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_08_A02_TKLX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_08_A02_TKLX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_08_A02_TKLX tklx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTklx(tklx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tklx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tklx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_08_A02_TKLX tklx= db_zzjx.EDU_ZZJX_08_A02_TKLX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tklx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_08_A02_TKLX tklx)
        {
            InitViewBag();
            try
            {
                
                
                UpdTklx(tklx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tklx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tklx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_08_A02_TKLX tklx = db_zzjx.EDU_ZZJX_08_A02_TKLX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_08_A02_TKLX.Remove(tklx);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_08_A02_TKLX tklx = db_zzjx.EDU_ZZJX_08_A02_TKLX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_08_A02_TKLX.Remove(tklx);
                    db_zzjx.SaveChanges();
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

        private static int Max_TKLX_ID = 0;
        private static object syncIDLock = new object();
        //获取调课类型表最大ID
        public int GetMax_TKLX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TKLX_ID == 0)
                {
                    EDU_ZZJX_08_A02_TKLX tklx = db_zzjx.EDU_ZZJX_08_A02_TKLX.FirstOrDefault();
                    if (tklx == null)
                    {
                        Max_TKLX_ID = 1;
                    }
                    else
                    {
                        //Max_TKLX_ID = db_zzjx.EDU_ZZJX_08_A02_TKLX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TKLX_ID++;
                }
                maxId = Max_TKLX_ID;
            }
            return maxId;
        }

    }
}
