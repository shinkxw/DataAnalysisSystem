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
    public class SXZGController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A07_SXZG_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A07_SXZG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxzg(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            sxzg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxzg(sxzg);
        }

        public void UpdSxzg(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            //设置默认值
            if (sxzg.ID == 0) sxzg.ID = 0;//实习转岗ID
            if (sxzg.SCHOOLID == 0) sxzg.SCHOOLID = 0;//学校ID   学校配置表
            if (sxzg.XSXXID == 0) sxzg.XSXXID = 0;//申请学生ID   学生信息数据表
            if (sxzg.ZCGW == 0) sxzg.ZCGW = 0;//转出岗位ID   实习岗位表
            if (sxzg.ZCGWQY == 0) sxzg.ZCGWQY = 0;//转出岗位企业ID   校外实习基地信息数据子类表
            if (sxzg.ZRGW == 0) sxzg.ZRGW = 0;//转入岗位ID   实习岗位表
            if (sxzg.ZRGWQY == 0) sxzg.ZRGWQY = 0;//转入岗位企业ID   校外实习基地信息数据子类表
            if (sxzg.BZRSH == 0) sxzg.BZRSH = 0;//班主任审核
            if (sxzg.ZCQYSH == 0) sxzg.ZCQYSH = 0;//转出企业审核
            if (sxzg.ZRQYSH == 0) sxzg.ZRQYSH = 0;//转入企业审核
            if (sxzg.JYCSH == 0) sxzg.JYCSH = 0;//就业处审核
            EDU_ZZJX_07_A07_SXZG sxzg_model = db_zzjx.EDU_ZZJX_07_A07_SXZG.FirstOrDefault(e => e.ID == sxzg.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxzg_model != null)
            {
                sxzg_model.ID = sxzg.ID;//实习转岗ID
                sxzg_model.SCHOOLID = sxzg.SCHOOLID;//学校ID   学校配置表
                sxzg_model.XSXXID = sxzg.XSXXID;//申请学生ID   学生信息数据表
                sxzg_model.ZCGW = sxzg.ZCGW;//转出岗位ID   实习岗位表
                sxzg_model.ZCGWQY = sxzg.ZCGWQY;//转出岗位企业ID   校外实习基地信息数据子类表
                sxzg_model.ZRGW = sxzg.ZRGW;//转入岗位ID   实习岗位表
                sxzg_model.ZRGWQY = sxzg.ZRGWQY;//转入岗位企业ID   校外实习基地信息数据子类表
                sxzg_model.BZRSH = sxzg.BZRSH;//班主任审核
                sxzg_model.ZCQYSH = sxzg.ZCQYSH;//转出企业审核
                sxzg_model.ZRQYSH = sxzg.ZRQYSH;//转入企业审核
                sxzg_model.JYCSH = sxzg.JYCSH;//就业处审核
                db_zzjx.Entry(sxzg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A07_SXZG.Add(sxzg);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A07_SXZG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A07_SXZG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxzg(sxzg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxzg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxzg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A07_SXZG sxzg= db_zzjx.EDU_ZZJX_07_A07_SXZG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxzg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxzg(sxzg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxzg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxzg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A07_SXZG sxzg = db_zzjx.EDU_ZZJX_07_A07_SXZG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A07_SXZG.Remove(sxzg);
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
                    EDU_ZZJX_07_A07_SXZG sxzg = db_zzjx.EDU_ZZJX_07_A07_SXZG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A07_SXZG.Remove(sxzg);
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

        private static int Max_SXZG_ID = 0;
        private static object syncIDLock = new object();
        //获取实习转岗表最大ID
        public int GetMax_SXZG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXZG_ID == 0)
                {
                    EDU_ZZJX_07_A07_SXZG sxzg = db_zzjx.EDU_ZZJX_07_A07_SXZG.FirstOrDefault();
                    if (sxzg == null)
                    {
                        Max_SXZG_ID = 1;
                    }
                    else
                    {
                        //Max_SXZG_ID = db_zzjx.EDU_ZZJX_07_A07_SXZG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXZG_ID++;
                }
                maxId = Max_SXZG_ID;
            }
            return maxId;
        }

    }
}
