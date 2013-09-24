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
    public class ZZGWFPController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzgwfp(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            zzgwfp.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzgwfp(zzgwfp);
        }

        public void UpdZzgwfp(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            //设置默认值
            if (zzgwfp.ID == 0) zzgwfp.ID = 0;//值周岗位分配表ID
            if (zzgwfp.SCHOOLID == 0) zzgwfp.SCHOOLID = 0;//学校ID   学校配置表
            if (zzgwfp.XQID == 0) zzgwfp.XQID = 0;//学期ID   学期数据表
            if (zzgwfp.ZCID == 0) zzgwfp.ZCID = 0;//周次ID   值周周次表
            if (zzgwfp.GZR == 0) zzgwfp.GZR = 0;//工作日
            if (zzgwfp.GWID == 0) zzgwfp.GWID = 0;//岗位ID   值周岗位数据表
            if (string.IsNullOrEmpty(zzgwfp.JSID)) zzgwfp.JSID = "";//教师ID   应用系统用户表
            EDU_ZXDY_04_A03_ZZGWFP zzgwfp_model = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.FirstOrDefault(e => e.ID == zzgwfp.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzgwfp_model != null)
            {
                zzgwfp_model.ID = zzgwfp.ID;//值周岗位分配表ID
                zzgwfp_model.SCHOOLID = zzgwfp.SCHOOLID;//学校ID   学校配置表
                zzgwfp_model.XQID = zzgwfp.XQID;//学期ID   学期数据表
                zzgwfp_model.ZCID = zzgwfp.ZCID;//周次ID   值周周次表
                zzgwfp_model.GZR = zzgwfp.GZR;//工作日
                zzgwfp_model.GWID = zzgwfp.GWID;//岗位ID   值周岗位数据表
                zzgwfp_model.JSID = zzgwfp.JSID;//教师ID   应用系统用户表
                db_zxdy.Entry(zzgwfp_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Add(zzgwfp);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A03_ZZGWFP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A03_ZZGWFP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzgwfp(zzgwfp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzgwfp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzgwfp);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A03_ZZGWFP zzgwfp= db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzgwfp);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzgwfp(zzgwfp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzgwfp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzgwfp);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_04_A03_ZZGWFP zzgwfp = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Remove(zzgwfp);
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
                    EDU_ZXDY_04_A03_ZZGWFP zzgwfp = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Remove(zzgwfp);
                    db_zxdy.SaveChanges();
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

        private static int Max_ZZGWFP_ID = 0;
        private static object syncIDLock = new object();
        //获取值周岗位分配表最大ID
        public int GetMax_ZZGWFP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZGWFP_ID == 0)
                {
                    EDU_ZXDY_04_A03_ZZGWFP zzgwfp = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.FirstOrDefault();
                    if (zzgwfp == null)
                    {
                        Max_ZZGWFP_ID = 1;
                    }
                    else
                    {
                        //Max_ZZGWFP_ID = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZGWFP_ID++;
                }
                maxId = Max_ZZGWFP_ID;
            }
            return maxId;
        }

    }
}
