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
    public class SXTSController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A08_SXTS_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A08_SXTS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxts(EDU_ZZJX_07_A08_SXTS sxts)
        {
            sxts.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxts(sxts);
        }

        public void UpdSxts(EDU_ZZJX_07_A08_SXTS sxts)
        {
            //设置默认值
            if (sxts.ID == 0) sxts.ID = 0;//实习投诉ID
            if (sxts.SCHOOLID == 0) sxts.SCHOOLID = 0;//学校ID   学校配置表
            if (sxts.QYID == 0) sxts.QYID = 0;//企业ID   校外实习基地信息数据子类表
            if (sxts.SXJHID == 0) sxts.SXJHID = 0;//实习计划ID   学校实习计划表
            if (sxts.XSXXID == 0) sxts.XSXXID = 0;//投诉学生ID   学生信息数据表
            if (string.IsNullOrEmpty(sxts.TSYY)) sxts.TSYY = "";//投诉原因
            if (string.IsNullOrEmpty(sxts.TSJG)) sxts.TSJG = "";//投诉结果
            if (string.IsNullOrEmpty(sxts.QYJY)) sxts.QYJY = "";//企业建议
            EDU_ZZJX_07_A08_SXTS sxts_model = db_zzjx.EDU_ZZJX_07_A08_SXTS.FirstOrDefault(e => e.ID == sxts.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxts_model != null)
            {
                sxts_model.ID = sxts.ID;//实习投诉ID
                sxts_model.SCHOOLID = sxts.SCHOOLID;//学校ID   学校配置表
                sxts_model.QYID = sxts.QYID;//企业ID   校外实习基地信息数据子类表
                sxts_model.SXJHID = sxts.SXJHID;//实习计划ID   学校实习计划表
                sxts_model.XSXXID = sxts.XSXXID;//投诉学生ID   学生信息数据表
                sxts_model.TSSJ = sxts.TSSJ;//投诉时间
                sxts_model.TSYY = sxts.TSYY;//投诉原因
                sxts_model.TSJG = sxts.TSJG;//投诉结果
                sxts_model.QYJY = sxts.QYJY;//企业建议
                db_zzjx.Entry(sxts_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A08_SXTS.Add(sxts);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A08_SXTS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A08_SXTS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A08_SXTS sxts)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxts(sxts);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxts);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxts);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A08_SXTS sxts= db_zzjx.EDU_ZZJX_07_A08_SXTS.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxts);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A08_SXTS sxts)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxts(sxts);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxts);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxts);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A08_SXTS sxts = db_zzjx.EDU_ZZJX_07_A08_SXTS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A08_SXTS.Remove(sxts);
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
                    EDU_ZZJX_07_A08_SXTS sxts = db_zzjx.EDU_ZZJX_07_A08_SXTS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A08_SXTS.Remove(sxts);
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

        private static int Max_SXTS_ID = 0;
        private static object syncIDLock = new object();
        //获取实习投诉表最大ID
        public int GetMax_SXTS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXTS_ID == 0)
                {
                    EDU_ZZJX_07_A08_SXTS sxts = db_zzjx.EDU_ZZJX_07_A08_SXTS.FirstOrDefault();
                    if (sxts == null)
                    {
                        Max_SXTS_ID = 1;
                    }
                    else
                    {
                        //Max_SXTS_ID = db_zzjx.EDU_ZZJX_07_A08_SXTS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXTS_ID++;
                }
                maxId = Max_SXTS_ID;
            }
            return maxId;
        }

    }
}
