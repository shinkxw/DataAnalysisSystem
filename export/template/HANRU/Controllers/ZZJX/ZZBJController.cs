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
    public class ZZBJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_02_02_ZZBJ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_02_02_ZZBJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XZBDM.Contains(searchkey)).ToList();
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

        public void AddZzbj(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            zzbj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzbj(zzbj);
        }

        public void UpdZzbj(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            //设置默认值
            if (string.IsNullOrEmpty(zzbj.XZBDM)) zzbj.XZBDM = "";//行政班代码
            if (zzbj.SCHOOLID == 0) zzbj.SCHOOLID = 0;//学校名   学校配置表
            if (zzbj.ZYXXID == 0) zzbj.ZYXXID = 0;//专业基本信息   专业基本信息数据表
            if (string.IsNullOrEmpty(zzbj.ZZNJID)) zzbj.ZZNJID = "";//学校年级数据表   学校年级数据表
            if (string.IsNullOrEmpty(zzbj.XZBMC)) zzbj.XZBMC = "";//行政班名称
            if (string.IsNullOrEmpty(zzbj.JBNY)) zzbj.JBNY = "";//建班年月
            if (string.IsNullOrEmpty(zzbj.BZRGH)) zzbj.BZRGH = "";//班主任工号
            if (string.IsNullOrEmpty(zzbj.JSBH)) zzbj.JSBH = "";//教室编号
            if (zzbj.NANSRS == 0) zzbj.NANSRS = 0;//男生人数
            if (zzbj.NVSRS == 0) zzbj.NVSRS = 0;//女生人数
            if (zzbj.ZRS == 0) zzbj.ZRS = 0;//总人数
            if (string.IsNullOrEmpty(zzbj.BZXH)) zzbj.BZXH = "";//班长学号
            if (string.IsNullOrEmpty(zzbj.JXJH)) zzbj.JXJH = "";//教学计划
            if (string.IsNullOrEmpty(zzbj.JGH)) zzbj.JGH = "";//机构号   校内机构数据类表
            if (string.IsNullOrEmpty(zzbj.XQDM)) zzbj.XQDM = "";//校区代码
            EDU_ZZJX_02_02_ZZBJ zzbj_model = db_zzjx.EDU_ZZJX_02_02_ZZBJ.FirstOrDefault(e => e.XZBDM == zzbj.XZBDM
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzbj_model != null)
            {
                zzbj_model.XZBDM = zzbj.XZBDM;//行政班代码
                zzbj_model.SCHOOLID = zzbj.SCHOOLID;//学校名   学校配置表
                zzbj_model.ZYXXID = zzbj.ZYXXID;//专业基本信息   专业基本信息数据表
                zzbj_model.ZZNJID = zzbj.ZZNJID;//学校年级数据表   学校年级数据表
                zzbj_model.XZBMC = zzbj.XZBMC;//行政班名称
                zzbj_model.JBNY = zzbj.JBNY;//建班年月
                zzbj_model.BZRGH = zzbj.BZRGH;//班主任工号
                zzbj_model.JSBH = zzbj.JSBH;//教室编号
                zzbj_model.NANSRS = zzbj.NANSRS;//男生人数
                zzbj_model.NVSRS = zzbj.NVSRS;//女生人数
                zzbj_model.ZRS = zzbj.ZRS;//总人数
                zzbj_model.BZXH = zzbj.BZXH;//班长学号
                zzbj_model.JXJH = zzbj.JXJH;//教学计划
                zzbj_model.JGH = zzbj.JGH;//机构号   校内机构数据类表
                zzbj_model.XQDM = zzbj.XQDM;//校区代码
                db_zzjx.Entry(zzbj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_02_02_ZZBJ.Add(zzbj);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_02_02_ZZBJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_02_02_ZZBJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzbj(zzbj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzbj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzbj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_02_02_ZZBJ zzbj= db_zzjx.EDU_ZZJX_02_02_ZZBJ.Single(e => e.XZBDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzbj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzbj(zzbj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzbj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzbj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_02_02_ZZBJ zzbj = db_zzjx.EDU_ZZJX_02_02_ZZBJ.SingleOrDefault(e => e.XZBDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_02_02_ZZBJ.Remove(zzbj);
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
                    EDU_ZZJX_02_02_ZZBJ zzbj = db_zzjx.EDU_ZZJX_02_02_ZZBJ.SingleOrDefault(e => e.XZBDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_02_02_ZZBJ.Remove(zzbj);
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

        private static int Max_ZZBJ_ID = 0;
        private static object syncIDLock = new object();
        //获取学校班级数据表最大ID
        public int GetMax_ZZBJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZBJ_ID == 0)
                {
                    EDU_ZZJX_02_02_ZZBJ zzbj = db_zzjx.EDU_ZZJX_02_02_ZZBJ.FirstOrDefault();
                    if (zzbj == null)
                    {
                        Max_ZZBJ_ID = 1;
                    }
                    else
                    {
                        //Max_ZZBJ_ID = db_zzjx.EDU_ZZJX_02_02_ZZBJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZBJ_ID++;
                }
                maxId = Max_ZZBJ_ID;
            }
            return maxId;
        }

    }
}
