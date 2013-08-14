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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class SJFBController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_12_A01_SJFB_DISP> model = db_zxbg.VIEW_EDU_ZXBG_12_A01_SJFB_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSjfb(EDU_ZXBG_12_A01_SJFB sjfb)
        {
            sjfb.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSjfb(sjfb);
        }

        public void UpdSjfb(EDU_ZXBG_12_A01_SJFB sjfb)
        {
            //设置默认值
            if (sjfb.ID == 0) sjfb.ID = 0;//数据发布ID
            if (sjfb.SCHOOLID == 0) sjfb.SCHOOLID = 0;//学校名学校ID
            if (sjfb.WEBID == 0) sjfb.WEBID = 0;//网站ID
            if (string.IsNullOrEmpty(sjfb.FBRID)) sjfb.FBRID = "";//发布人ID
            if (string.IsNullOrEmpty(sjfb.FBBZRID)) sjfb.FBBZRID = "";//发布批准人ID
            if (string.IsNullOrEmpty(sjfb.FBH)) sjfb.FBH = "";//发布号解释/举例：学校自编，建议4位年号＋2位类别号＋4位流水号 
            if (string.IsNullOrEmpty(sjfb.XXBT)) sjfb.XXBT = "";//数据标题
            if (string.IsNullOrEmpty(sjfb.FBLMH)) sjfb.FBLMH = "";//发布栏目号
            if (string.IsNullOrEmpty(sjfb.SJNR)) sjfb.SJNR = "";//数据内容
            if (sjfb.FJS == 0) sjfb.FJS = 0;//附件数
            if (string.IsNullOrEmpty(sjfb.FBRQ)) sjfb.FBRQ = "";//发布日期格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
            if (string.IsNullOrEmpty(sjfb.FBDW)) sjfb.FBDW = "";//发布单位号自行编码
            if (string.IsNullOrEmpty(sjfb.FBRGH)) sjfb.FBRGH = "";//发布人工号
            if (string.IsNullOrEmpty(sjfb.FBFW)) sjfb.FBFW = "";//发布范围解释/举例：发布范围描述 
            if (string.IsNullOrEmpty(sjfb.FBBZRH)) sjfb.FBBZRH = "";//发布批准人号
            if (string.IsNullOrEmpty(sjfb.SJZT)) sjfb.SJZT = "";//数据状态解释/举例：待审批/已审批 
            EDU_ZXBG_12_A01_SJFB sjfb_model = db_zxbg.EDU_ZXBG_12_A01_SJFB.FirstOrDefault(e => e.ID == sjfb.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sjfb_model != null)
            {
                sjfb_model.ID = sjfb.ID;//数据发布ID
                sjfb_model.SCHOOLID = sjfb.SCHOOLID;//学校名学校ID
                sjfb_model.WEBID = sjfb.WEBID;//网站ID
                sjfb_model.FBRID = sjfb.FBRID;//发布人ID
                sjfb_model.FBBZRID = sjfb.FBBZRID;//发布批准人ID
                sjfb_model.FBH = sjfb.FBH;//发布号解释/举例：学校自编，建议4位年号＋2位类别号＋4位流水号 
                sjfb_model.XXBT = sjfb.XXBT;//数据标题
                sjfb_model.FBLMH = sjfb.FBLMH;//发布栏目号
                sjfb_model.SJNR = sjfb.SJNR;//数据内容
                sjfb_model.FJS = sjfb.FJS;//附件数
                sjfb_model.FBRQ = sjfb.FBRQ;//发布日期格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
                sjfb_model.FBDW = sjfb.FBDW;//发布单位号自行编码
                sjfb_model.FBRGH = sjfb.FBRGH;//发布人工号
                sjfb_model.FBFW = sjfb.FBFW;//发布范围解释/举例：发布范围描述 
                sjfb_model.FBBZRH = sjfb.FBBZRH;//发布批准人号
                sjfb_model.SJZT = sjfb.SJZT;//数据状态解释/举例：待审批/已审批 
                db_zxbg.Entry(sjfb_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_12_A01_SJFB.Add(sjfb);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_12_A01_SJFB());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_12_A01_SJFB());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_12_A01_SJFB sjfb)
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
            
            EDU_ZXBG_12_A01_SJFB sjfb= db_zxbg.EDU_ZXBG_12_A01_SJFB.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sjfb);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_12_A01_SJFB sjfb)
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

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_12_A01_SJFB sjfb = db_zxbg.EDU_ZXBG_12_A01_SJFB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_12_A01_SJFB.Remove(sjfb);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_12_A01_SJFB sjfb = db_zxbg.EDU_ZXBG_12_A01_SJFB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_12_A01_SJFB.Remove(sjfb);
                    db_zxbg.SaveChanges();
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
                    EDU_ZXBG_12_A01_SJFB sjfb = db_zxbg.EDU_ZXBG_12_A01_SJFB.FirstOrDefault();
                    if (sjfb == null)
                    {
                        Max_SJFB_ID = 1;
                    }
                    else
                    {
                        //Max_SJFB_ID = db_zxbg.EDU_ZXBG_12_A01_SJFB.Max(e => e.ID) + 1;
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
