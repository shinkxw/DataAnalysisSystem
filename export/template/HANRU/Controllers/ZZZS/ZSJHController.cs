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
    public class ZSJHController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZZS_01_A01_ZSJH_DISP> model = db_zzzs.VIEW_EDU_ZZZS_01_A01_ZSJH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZsjh(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            zsjh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZsjh(zsjh);
        }

        public void UpdZsjh(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            //设置默认值
            if (zsjh.ID == 0) zsjh.ID = 0;//编号
            if (zsjh.SCHOOLID == 0) zsjh.SCHOOLID = 0;//学校名   学校配置表
            if (zsjh.ZYXXID == 0) zsjh.ZYXXID = 0;//专业基本信息   专业基本信息数据表
            if (zsjh.XNID == 0) zsjh.XNID = 0;//学年   学年表
            if (zsjh.ZSJHRS == 0) zsjh.ZSJHRS = 0;//招生计划
            if (string.IsNullOrEmpty(zsjh.BZ)) zsjh.BZ = "";//备注
            EDU_ZZZS_01_A01_ZSJH zsjh_model = db_zzzs.EDU_ZZZS_01_A01_ZSJH.FirstOrDefault(e => e.ID == zsjh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zsjh_model != null)
            {
                zsjh_model.ID = zsjh.ID;//编号
                zsjh_model.SCHOOLID = zsjh.SCHOOLID;//学校名   学校配置表
                zsjh_model.ZYXXID = zsjh.ZYXXID;//专业基本信息   专业基本信息数据表
                zsjh_model.XNID = zsjh.XNID;//学年   学年表
                zsjh_model.ZSJHRS = zsjh.ZSJHRS;//招生计划
                zsjh_model.BZ = zsjh.BZ;//备注
                db_zzzs.Entry(zsjh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzzs.EDU_ZZZS_01_A01_ZSJH.Add(zsjh);
            }
            db_zzzs.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZZS_01_A01_ZSJH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZZS_01_A01_ZSJH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZsjh(zsjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsjh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZZS_01_A01_ZSJH zsjh= db_zzzs.EDU_ZZZS_01_A01_ZSJH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zsjh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            InitViewBag();
            try
            {
                
                
                UpdZsjh(zsjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsjh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZZS_01_A01_ZSJH zsjh = db_zzzs.EDU_ZZZS_01_A01_ZSJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzzs.EDU_ZZZS_01_A01_ZSJH.Remove(zsjh);
                db_zzzs.SaveChanges();
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
                    EDU_ZZZS_01_A01_ZSJH zsjh = db_zzzs.EDU_ZZZS_01_A01_ZSJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzzs.EDU_ZZZS_01_A01_ZSJH.Remove(zsjh);
                    db_zzzs.SaveChanges();
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

        private static int Max_ZSJH_ID = 0;
        private static object syncIDLock = new object();
        //获取招生计划数据表最大ID
        public int GetMax_ZSJH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZSJH_ID == 0)
                {
                    EDU_ZZZS_01_A01_ZSJH zsjh = db_zzzs.EDU_ZZZS_01_A01_ZSJH.FirstOrDefault();
                    if (zsjh == null)
                    {
                        Max_ZSJH_ID = 1;
                    }
                    else
                    {
                        //Max_ZSJH_ID = db_zzzs.EDU_ZZZS_01_A01_ZSJH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZSJH_ID++;
                }
                maxId = Max_ZSJH_ID;
            }
            return maxId;
        }

    }
}
