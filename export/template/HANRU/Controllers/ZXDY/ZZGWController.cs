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
    public class ZZGWController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A01_ZZGW_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A01_ZZGW_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzgw(EDU_ZXDY_04_A01_ZZGW zzgw)
        {
            zzgw.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzgw(zzgw);
        }

        public void UpdZzgw(EDU_ZXDY_04_A01_ZZGW zzgw)
        {
            //设置默认值
            if (zzgw.ID == 0) zzgw.ID = 0;//值周岗位表ID
            if (zzgw.SCHOOLID == 0) zzgw.SCHOOLID = 0;//学校ID   学校配置表
            if (zzgw.XQID == 0) zzgw.XQID = 0;//学期ID   学期数据表
            if (string.IsNullOrEmpty(zzgw.GWGZNR)) zzgw.GWGZNR = "";//岗位工作内容
            EDU_ZXDY_04_A01_ZZGW zzgw_model = db_zxdy.EDU_ZXDY_04_A01_ZZGW.FirstOrDefault(e => e.ID == zzgw.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzgw_model != null)
            {
                zzgw_model.ID = zzgw.ID;//值周岗位表ID
                zzgw_model.SCHOOLID = zzgw.SCHOOLID;//学校ID   学校配置表
                zzgw_model.XQID = zzgw.XQID;//学期ID   学期数据表
                zzgw_model.GWGZNR = zzgw.GWGZNR;//岗位工作内容
                db_zxdy.Entry(zzgw_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_04_A01_ZZGW.Add(zzgw);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A01_ZZGW());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A01_ZZGW());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A01_ZZGW zzgw)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzgw(zzgw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzgw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzgw);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A01_ZZGW zzgw= db_zxdy.EDU_ZXDY_04_A01_ZZGW.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzgw);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A01_ZZGW zzgw)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzgw(zzgw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzgw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzgw);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_04_A01_ZZGW zzgw = db_zxdy.EDU_ZXDY_04_A01_ZZGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A01_ZZGW.Remove(zzgw);
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
                    EDU_ZXDY_04_A01_ZZGW zzgw = db_zxdy.EDU_ZXDY_04_A01_ZZGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A01_ZZGW.Remove(zzgw);
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

        private static int Max_ZZGW_ID = 0;
        private static object syncIDLock = new object();
        //获取值周岗位数据表最大ID
        public int GetMax_ZZGW_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZGW_ID == 0)
                {
                    EDU_ZXDY_04_A01_ZZGW zzgw = db_zxdy.EDU_ZXDY_04_A01_ZZGW.FirstOrDefault();
                    if (zzgw == null)
                    {
                        Max_ZZGW_ID = 1;
                    }
                    else
                    {
                        //Max_ZZGW_ID = db_zxdy.EDU_ZXDY_04_A01_ZZGW.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZGW_ID++;
                }
                maxId = Max_ZZGW_ID;
            }
            return maxId;
        }

    }
}
