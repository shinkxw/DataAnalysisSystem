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
    public class SXRZController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A09_SXRZ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A09_SXRZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxrz(EDU_ZZJX_07_A09_SXRZ sxrz)
        {
            sxrz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxrz(sxrz);
        }

        public void UpdSxrz(EDU_ZZJX_07_A09_SXRZ sxrz)
        {
            //设置默认值
            if (sxrz.ID == 0) sxrz.ID = 0;//实习日志ID
            if (sxrz.SCHOOLID == 0) sxrz.SCHOOLID = 0;//学校ID   学校配置表
            if (sxrz.XSXXID == 0) sxrz.XSXXID = 0;//学生信息ID   学生信息数据表
            if (sxrz.SXJHID == 0) sxrz.SXJHID = 0;//实习计划ID   学校实习计划表
            if (sxrz.SXJDID == 0) sxrz.SXJDID = 0;//实习阶段ID   学校实习阶段表
            if (sxrz.SXZYID == 0) sxrz.SXZYID = 0;//实习周/月表ID   学校实习周/月表
            if (string.IsNullOrEmpty(sxrz.RZBT)) sxrz.RZBT = "";//日志标题
            if (string.IsNullOrEmpty(sxrz.NR)) sxrz.NR = "";//内容
            EDU_ZZJX_07_A09_SXRZ sxrz_model = db_zzjx.EDU_ZZJX_07_A09_SXRZ.FirstOrDefault(e => e.ID == sxrz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxrz_model != null)
            {
                sxrz_model.ID = sxrz.ID;//实习日志ID
                sxrz_model.SCHOOLID = sxrz.SCHOOLID;//学校ID   学校配置表
                sxrz_model.XSXXID = sxrz.XSXXID;//学生信息ID   学生信息数据表
                sxrz_model.SXJHID = sxrz.SXJHID;//实习计划ID   学校实习计划表
                sxrz_model.SXJDID = sxrz.SXJDID;//实习阶段ID   学校实习阶段表
                sxrz_model.SXZYID = sxrz.SXZYID;//实习周/月表ID   学校实习周/月表
                sxrz_model.RZBT = sxrz.RZBT;//日志标题
                sxrz_model.NR = sxrz.NR;//内容
                db_zzjx.Entry(sxrz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A09_SXRZ.Add(sxrz);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A09_SXRZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A09_SXRZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A09_SXRZ sxrz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxrz(sxrz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxrz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxrz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A09_SXRZ sxrz= db_zzjx.EDU_ZZJX_07_A09_SXRZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxrz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A09_SXRZ sxrz)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxrz(sxrz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxrz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxrz);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A09_SXRZ sxrz = db_zzjx.EDU_ZZJX_07_A09_SXRZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A09_SXRZ.Remove(sxrz);
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
                    EDU_ZZJX_07_A09_SXRZ sxrz = db_zzjx.EDU_ZZJX_07_A09_SXRZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A09_SXRZ.Remove(sxrz);
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

        private static int Max_SXRZ_ID = 0;
        private static object syncIDLock = new object();
        //获取实习日志表最大ID
        public int GetMax_SXRZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXRZ_ID == 0)
                {
                    EDU_ZZJX_07_A09_SXRZ sxrz = db_zzjx.EDU_ZZJX_07_A09_SXRZ.FirstOrDefault();
                    if (sxrz == null)
                    {
                        Max_SXRZ_ID = 1;
                    }
                    else
                    {
                        //Max_SXRZ_ID = db_zzjx.EDU_ZZJX_07_A09_SXRZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXRZ_ID++;
                }
                maxId = Max_SXRZ_ID;
            }
            return maxId;
        }

    }
}
