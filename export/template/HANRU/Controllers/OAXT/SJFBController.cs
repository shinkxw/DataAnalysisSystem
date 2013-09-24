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
    public class SJFBController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_12_A01_SJFB_DISP> model = db_oaxt.VIEW_EDU_OAXT_12_A01_SJFB_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSjfb(EDU_OAXT_12_A01_SJFB sjfb)
        {
            sjfb.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSjfb(sjfb);
        }

        public void UpdSjfb(EDU_OAXT_12_A01_SJFB sjfb)
        {
            //设置默认值
            if (sjfb.ID == 0) sjfb.ID = 0;//数据发布ID
            if (sjfb.SCHOOLID == 0) sjfb.SCHOOLID = 0;//学校名   学校配置表
            if (sjfb.WEBID == 0) sjfb.WEBID = 0;//网站ID   网站配置
            if (string.IsNullOrEmpty(sjfb.FBRID)) sjfb.FBRID = "";//发布人ID
            if (string.IsNullOrEmpty(sjfb.FBBZRID)) sjfb.FBBZRID = "";//发布批准人ID
            if (string.IsNullOrEmpty(sjfb.FBH)) sjfb.FBH = "";//发布号
            if (string.IsNullOrEmpty(sjfb.XXBT)) sjfb.XXBT = "";//数据标题
            if (string.IsNullOrEmpty(sjfb.FBLMH)) sjfb.FBLMH = "";//发布栏目号
            if (string.IsNullOrEmpty(sjfb.SJNR)) sjfb.SJNR = "";//数据内容
            if (sjfb.FJS == 0) sjfb.FJS = 0;//附件数
            if (string.IsNullOrEmpty(sjfb.FBRQ)) sjfb.FBRQ = "";//发布日期
            if (string.IsNullOrEmpty(sjfb.FBDW)) sjfb.FBDW = "";//发布单位号
            if (string.IsNullOrEmpty(sjfb.FBRGH)) sjfb.FBRGH = "";//发布人工号
            if (string.IsNullOrEmpty(sjfb.FBFW)) sjfb.FBFW = "";//发布范围
            if (string.IsNullOrEmpty(sjfb.FBBZRH)) sjfb.FBBZRH = "";//发布批准人号
            if (string.IsNullOrEmpty(sjfb.SJZT)) sjfb.SJZT = "";//数据状态
            EDU_OAXT_12_A01_SJFB sjfb_model = db_oaxt.EDU_OAXT_12_A01_SJFB.FirstOrDefault(e => e.ID == sjfb.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sjfb_model != null)
            {
                sjfb_model.ID = sjfb.ID;//数据发布ID
                sjfb_model.SCHOOLID = sjfb.SCHOOLID;//学校名   学校配置表
                sjfb_model.WEBID = sjfb.WEBID;//网站ID   网站配置
                sjfb_model.FBRID = sjfb.FBRID;//发布人ID
                sjfb_model.FBBZRID = sjfb.FBBZRID;//发布批准人ID
                sjfb_model.FBH = sjfb.FBH;//发布号
                sjfb_model.XXBT = sjfb.XXBT;//数据标题
                sjfb_model.FBLMH = sjfb.FBLMH;//发布栏目号
                sjfb_model.SJNR = sjfb.SJNR;//数据内容
                sjfb_model.FJS = sjfb.FJS;//附件数
                sjfb_model.FBRQ = sjfb.FBRQ;//发布日期
                sjfb_model.FBDW = sjfb.FBDW;//发布单位号
                sjfb_model.FBRGH = sjfb.FBRGH;//发布人工号
                sjfb_model.FBFW = sjfb.FBFW;//发布范围
                sjfb_model.FBBZRH = sjfb.FBBZRH;//发布批准人号
                sjfb_model.SJZT = sjfb.SJZT;//数据状态
                db_oaxt.Entry(sjfb_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_oaxt.EDU_OAXT_12_A01_SJFB.Add(sjfb);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_12_A01_SJFB());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_12_A01_SJFB());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_12_A01_SJFB sjfb)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSjfb(sjfb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sjfb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sjfb);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_12_A01_SJFB sjfb= db_oaxt.EDU_OAXT_12_A01_SJFB.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sjfb);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_12_A01_SJFB sjfb)
        {
            InitViewBag();
            try
            {
                
                
                UpdSjfb(sjfb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sjfb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sjfb);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_12_A01_SJFB sjfb = db_oaxt.EDU_OAXT_12_A01_SJFB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_12_A01_SJFB.Remove(sjfb);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_12_A01_SJFB sjfb = db_oaxt.EDU_OAXT_12_A01_SJFB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_12_A01_SJFB.Remove(sjfb);
                    db_oaxt.SaveChanges();
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

        private static int Max_SJFB_ID = 0;
        private static object syncIDLock = new object();
        //获取数据发布类表最大ID
        public int GetMax_SJFB_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SJFB_ID == 0)
                {
                    EDU_OAXT_12_A01_SJFB sjfb = db_oaxt.EDU_OAXT_12_A01_SJFB.FirstOrDefault();
                    if (sjfb == null)
                    {
                        Max_SJFB_ID = 1;
                    }
                    else
                    {
                        //Max_SJFB_ID = db_oaxt.EDU_OAXT_12_A01_SJFB.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SJFB_ID++;
                }
                maxId = Max_SJFB_ID;
            }
            return maxId;
        }

    }
}
