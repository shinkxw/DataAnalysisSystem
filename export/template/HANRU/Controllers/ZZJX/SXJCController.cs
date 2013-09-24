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
    public class SXJCController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A11_SXJC_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A11_SXJC_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxjc(EDU_ZZJX_07_A11_SXJC sxjc)
        {
            sxjc.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxjc(sxjc);
        }

        public void UpdSxjc(EDU_ZZJX_07_A11_SXJC sxjc)
        {
            //设置默认值
            if (sxjc.ID == 0) sxjc.ID = 0;//奖惩信息ID
            if (sxjc.SCHOOLID == 0) sxjc.SCHOOLID = 0;//学校ID   学校配置表
            if (sxjc.SXJHID == 0) sxjc.SXJHID = 0;//实习计划ID   学校实习计划表
            if (sxjc.XSXXID == 0) sxjc.XSXXID = 0;//学生信息ID   学生信息数据表
            if (sxjc.JCLX == 0) sxjc.JCLX = 0;//奖惩类型
            if (string.IsNullOrEmpty(sxjc.CLJG)) sxjc.CLJG = "";//处理结果
            if (string.IsNullOrEmpty(sxjc.BZ)) sxjc.BZ = "";//备注
            if (sxjc.TJR == 0) sxjc.TJR = 0;//添加人
            EDU_ZZJX_07_A11_SXJC sxjc_model = db_zzjx.EDU_ZZJX_07_A11_SXJC.FirstOrDefault(e => e.ID == sxjc.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxjc_model != null)
            {
                sxjc_model.ID = sxjc.ID;//奖惩信息ID
                sxjc_model.SCHOOLID = sxjc.SCHOOLID;//学校ID   学校配置表
                sxjc_model.SXJHID = sxjc.SXJHID;//实习计划ID   学校实习计划表
                sxjc_model.XSXXID = sxjc.XSXXID;//学生信息ID   学生信息数据表
                sxjc_model.JCLX = sxjc.JCLX;//奖惩类型
                sxjc_model.JCRQ = sxjc.JCRQ;//奖惩日期
                sxjc_model.CLJG = sxjc.CLJG;//处理结果
                sxjc_model.BZ = sxjc.BZ;//备注
                sxjc_model.TJR = sxjc.TJR;//添加人
                db_zzjx.Entry(sxjc_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A11_SXJC.Add(sxjc);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A11_SXJC());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A11_SXJC());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A11_SXJC sxjc)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxjc(sxjc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxjc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxjc);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A11_SXJC sxjc= db_zzjx.EDU_ZZJX_07_A11_SXJC.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxjc);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A11_SXJC sxjc)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxjc(sxjc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxjc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxjc);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A11_SXJC sxjc = db_zzjx.EDU_ZZJX_07_A11_SXJC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A11_SXJC.Remove(sxjc);
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
                    EDU_ZZJX_07_A11_SXJC sxjc = db_zzjx.EDU_ZZJX_07_A11_SXJC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A11_SXJC.Remove(sxjc);
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

        private static int Max_SXJC_ID = 0;
        private static object syncIDLock = new object();
        //获取实习奖惩表最大ID
        public int GetMax_SXJC_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXJC_ID == 0)
                {
                    EDU_ZZJX_07_A11_SXJC sxjc = db_zzjx.EDU_ZZJX_07_A11_SXJC.FirstOrDefault();
                    if (sxjc == null)
                    {
                        Max_SXJC_ID = 1;
                    }
                    else
                    {
                        //Max_SXJC_ID = db_zzjx.EDU_ZZJX_07_A11_SXJC.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXJC_ID++;
                }
                maxId = Max_SXJC_ID;
            }
            return maxId;
        }

    }
}
