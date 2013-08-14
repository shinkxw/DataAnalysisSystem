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
    public class ZTJXJHController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP> model = db_zzjx.VIEW_EDU_ZZJX_03_01_ZTJXJH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZtjxjh(EDU_ZZJX_03_01_ZTJXJH ztjxjh)
        {
            ztjxjh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZtjxjh(ztjxjh);
        }

        public void UpdZtjxjh(EDU_ZZJX_03_01_ZTJXJH ztjxjh)
        {
            //设置默认值
            if (ztjxjh.SCHOOLID == 0) ztjxjh.SCHOOLID = 0;//学校ID
            if (string.IsNullOrEmpty(ztjxjh.JHBH)) ztjxjh.JHBH = "";//计划编号
            if (string.IsNullOrEmpty(ztjxjh.JHNJ)) ztjxjh.JHNJ = "";//计划年级
            if (ztjxjh.ZYXXID == 0) ztjxjh.ZYXXID = 0;//专业编号
            if (string.IsNullOrEmpty(ztjxjh.JHZYMC)) ztjxjh.JHZYMC = "";//计划专业名称
            if (ztjxjh.ZXFYQ == 0) ztjxjh.ZXFYQ = 0;//总学分要求
            if (string.IsNullOrEmpty(ztjxjh.JLNY)) ztjxjh.JLNY = "";//建立年月
            if (ztjxjh.SYXZ == 0) ztjxjh.SYXZ = 0;//适用学制
            if (string.IsNullOrEmpty(ztjxjh.PYMB)) ztjxjh.PYMB = "";//培养目标
            if (string.IsNullOrEmpty(ztjxjh.SFKY)) ztjxjh.SFKY = "";//是否可用
            if (string.IsNullOrEmpty(ztjxjh.FJ)) ztjxjh.FJ = "";//附件
            EDU_ZZJX_03_01_ZTJXJH ztjxjh_model = db_zzjx.EDU_ZZJX_03_01_ZTJXJH.FirstOrDefault(e => e.SCHOOLID == ztjxjh.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (ztjxjh_model != null)
            {
                ztjxjh_model.SCHOOLID = ztjxjh.SCHOOLID;//学校ID
                ztjxjh_model.JHBH = ztjxjh.JHBH;//计划编号
                ztjxjh_model.JHNJ = ztjxjh.JHNJ;//计划年级
                ztjxjh_model.ZYXXID = ztjxjh.ZYXXID;//专业编号
                ztjxjh_model.JHZYMC = ztjxjh.JHZYMC;//计划专业名称
                ztjxjh_model.ZXFYQ = ztjxjh.ZXFYQ;//总学分要求
                ztjxjh_model.JLNY = ztjxjh.JLNY;//建立年月
                ztjxjh_model.SYXZ = ztjxjh.SYXZ;//适用学制
                ztjxjh_model.PYMB = ztjxjh.PYMB;//培养目标
                ztjxjh_model.SFKY = ztjxjh.SFKY;//是否可用
                ztjxjh_model.FJ = ztjxjh.FJ;//附件
                db_zzjx.Entry(ztjxjh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_03_01_ZTJXJH.Add(ztjxjh);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_03_01_ZTJXJH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_03_01_ZTJXJH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_03_01_ZTJXJH ztjxjh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZtjxjh(ztjxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(ztjxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(ztjxjh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_03_01_ZTJXJH ztjxjh= db_zzjx.EDU_ZZJX_03_01_ZTJXJH.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(ztjxjh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_03_01_ZTJXJH ztjxjh)
        {
            InitViewBag();
            try
            {
                
                
                UpdZtjxjh(ztjxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(ztjxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(ztjxjh);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_03_01_ZTJXJH ztjxjh = db_zzjx.EDU_ZZJX_03_01_ZTJXJH.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_03_01_ZTJXJH.Remove(ztjxjh);
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
                    EDU_ZZJX_03_01_ZTJXJH ztjxjh = db_zzjx.EDU_ZZJX_03_01_ZTJXJH.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_03_01_ZTJXJH.Remove(ztjxjh);
                    db_zzjx.SaveChanges();
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

        private static int Max_ZTJXJH_ID = 0;
        private static object syncIDLock = new object();
        //获取总体教学计划数据子类表最大ID
        public int GetMax_ZTJXJH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZTJXJH_ID == 0)
                {
                    EDU_ZZJX_03_01_ZTJXJH ztjxjh = db_zzjx.EDU_ZZJX_03_01_ZTJXJH.FirstOrDefault();
                    if (ztjxjh == null)
                    {
                        Max_ZTJXJH_ID = 1;
                    }
                    else
                    {
                        //Max_ZTJXJH_ID = db_zzjx.EDU_ZZJX_03_01_ZTJXJH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZTJXJH_ID++;
                }
                maxId = Max_ZTJXJH_ID;
            }
            return maxId;
        }

    }
}
