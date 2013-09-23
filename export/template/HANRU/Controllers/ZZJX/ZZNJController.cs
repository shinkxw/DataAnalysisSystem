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
    public class ZZNJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_02_01_ZZNJ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_02_01_ZZNJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.NJDM.Contains(searchkey)).ToList();
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

        public void AddZznj(EDU_ZZJX_02_01_ZZNJ zznj)
        {
            zznj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZznj(zznj);
        }

        public void UpdZznj(EDU_ZZJX_02_01_ZZNJ zznj)
        {
            //设置默认值
            if (string.IsNullOrEmpty(zznj.NJDM)) zznj.NJDM = "";//年级代码
            if (zznj.SCHOOLID == 0) zznj.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(zznj.NJMC)) zznj.NJMC = "";//年级名称
            if (string.IsNullOrEmpty(zznj.SSNF)) zznj.SSNF = "";//所属年份
            if (string.IsNullOrEmpty(zznj.NJZT)) zznj.NJZT = "";//年级状态   是否标志代码表
            EDU_ZZJX_02_01_ZZNJ zznj_model = db_zzjx.EDU_ZZJX_02_01_ZZNJ.FirstOrDefault(e => e.NJDM == zznj.NJDM
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zznj_model != null)
            {
                zznj_model.NJDM = zznj.NJDM;//年级代码
                zznj_model.SCHOOLID = zznj.SCHOOLID;//学校名   学校配置表
                zznj_model.NJMC = zznj.NJMC;//年级名称
                zznj_model.SSNF = zznj.SSNF;//所属年份
                zznj_model.NJZT = zznj.NJZT;//年级状态   是否标志代码表
                db_zzjx.Entry(zznj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_02_01_ZZNJ.Add(zznj);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_02_01_ZZNJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_02_01_ZZNJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_02_01_ZZNJ zznj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZznj(zznj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zznj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zznj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_02_01_ZZNJ zznj= db_zzjx.EDU_ZZJX_02_01_ZZNJ.Single(e => e.NJDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zznj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_02_01_ZZNJ zznj)
        {
            InitViewBag();
            try
            {
                
                
                UpdZznj(zznj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zznj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zznj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_02_01_ZZNJ zznj = db_zzjx.EDU_ZZJX_02_01_ZZNJ.SingleOrDefault(e => e.NJDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_02_01_ZZNJ.Remove(zznj);
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
                    EDU_ZZJX_02_01_ZZNJ zznj = db_zzjx.EDU_ZZJX_02_01_ZZNJ.SingleOrDefault(e => e.NJDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_02_01_ZZNJ.Remove(zznj);
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

        private static int Max_ZZNJ_ID = 0;
        private static object syncIDLock = new object();
        //获取学校年级数据表最大ID
        public int GetMax_ZZNJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZNJ_ID == 0)
                {
                    EDU_ZZJX_02_01_ZZNJ zznj = db_zzjx.EDU_ZZJX_02_01_ZZNJ.FirstOrDefault();
                    if (zznj == null)
                    {
                        Max_ZZNJ_ID = 1;
                    }
                    else
                    {
                        //Max_ZZNJ_ID = db_zzjx.EDU_ZZJX_02_01_ZZNJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZNJ_ID++;
                }
                maxId = Max_ZZNJ_ID;
            }
            return maxId;
        }

    }
}
