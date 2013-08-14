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
    public class KCController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_01_02_KC_DISP> model = db_zzjx.VIEW_EDU_ZZJX_01_02_KC_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.KCH.Contains(searchkey)).ToList();
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

        public void AddKc(EDU_ZZJX_01_02_KC kc)
        {
            kc.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKc(kc);
        }

        public void UpdKc(EDU_ZZJX_01_02_KC kc)
        {
            //设置默认值
            if (string.IsNullOrEmpty(kc.KCH)) kc.KCH = "";//课程号
            if (kc.SCHOOLID == 0) kc.SCHOOLID = 0;//学校ID
            if (string.IsNullOrEmpty(kc.KCMC)) kc.KCMC = "";//课程名称
            if (string.IsNullOrEmpty(kc.KCYWM)) kc.KCYWM = "";//课程英文名
            if (string.IsNullOrEmpty(kc.KCBM)) kc.KCBM = "";//课程别名
            if (string.IsNullOrEmpty(kc.KCJS)) kc.KCJS = "";//课程介绍
            if (kc.XF == 0) kc.XF = 0;//学分
            if (kc.ZXS == 0) kc.ZXS = 0;//总学时
            if (kc.LLXS == 0) kc.LLXS = 0;//理论学时
            if (kc.SJXS == 0) kc.SJXS = 0;//实践学时
            if (kc.QTXS == 0) kc.QTXS = 0;//其他学时
            if (string.IsNullOrEmpty(kc.CKSM)) kc.CKSM = "";//参考书目
            if (string.IsNullOrEmpty(kc.KKDW)) kc.KKDW = "";//开课单位
            if (string.IsNullOrEmpty(kc.KSXS)) kc.KSXS = "";//考试形式
            if (string.IsNullOrEmpty(kc.SKFSM)) kc.SKFSM = "";//授课方式码
            if (kc.KCFY == 0) kc.KCFY = 0;//课程费用
            EDU_ZZJX_01_02_KC kc_model = db_zzjx.EDU_ZZJX_01_02_KC.FirstOrDefault(e => e.KCH == kc.KCH
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kc_model != null)
            {
                kc_model.KCH = kc.KCH;//课程号
                kc_model.SCHOOLID = kc.SCHOOLID;//学校ID
                kc_model.KCMC = kc.KCMC;//课程名称
                kc_model.KCYWM = kc.KCYWM;//课程英文名
                kc_model.KCBM = kc.KCBM;//课程别名
                kc_model.KCJS = kc.KCJS;//课程介绍
                kc_model.XF = kc.XF;//学分
                kc_model.ZXS = kc.ZXS;//总学时
                kc_model.LLXS = kc.LLXS;//理论学时
                kc_model.SJXS = kc.SJXS;//实践学时
                kc_model.QTXS = kc.QTXS;//其他学时
                kc_model.CKSM = kc.CKSM;//参考书目
                kc_model.KKDW = kc.KKDW;//开课单位
                kc_model.KSXS = kc.KSXS;//考试形式
                kc_model.SKFSM = kc.SKFSM;//授课方式码
                kc_model.KCFY = kc.KCFY;//课程费用
                db_zzjx.Entry(kc_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_01_02_KC.Add(kc);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_01_02_KC());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_01_02_KC());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_01_02_KC kc)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKc(kc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kc);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_01_02_KC kc= db_zzjx.EDU_ZZJX_01_02_KC.Single(e => e.KCH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kc);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_01_02_KC kc)
        {
            InitViewBag();
            try
            {
                
                
                UpdKc(kc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kc);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_01_02_KC kc = db_zzjx.EDU_ZZJX_01_02_KC.SingleOrDefault(e => e.KCH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_01_02_KC.Remove(kc);
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
                    EDU_ZZJX_01_02_KC kc = db_zzjx.EDU_ZZJX_01_02_KC.SingleOrDefault(e => e.KCH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_01_02_KC.Remove(kc);
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

        private static int Max_KC_ID = 0;
        private static object syncIDLock = new object();
        //获取课程数据子类表最大ID
        public int GetMax_KC_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KC_ID == 0)
                {
                    EDU_ZZJX_01_02_KC kc = db_zzjx.EDU_ZZJX_01_02_KC.FirstOrDefault();
                    if (kc == null)
                    {
                        Max_KC_ID = 1;
                    }
                    else
                    {
                        //Max_KC_ID = db_zzjx.EDU_ZZJX_01_02_KC.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KC_ID++;
                }
                maxId = Max_KC_ID;
            }
            return maxId;
        }

    }
}
