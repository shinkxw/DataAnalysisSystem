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
    public class KCController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_01_01_KC_DISP> model = db_zxjx.VIEW_EDU_ZXJX_01_01_KC_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddKc(EDU_ZXJX_01_01_KC kc)
        {
            kc.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKc(kc);
        }

        public void UpdKc(EDU_ZXJX_01_01_KC kc)
        {
            //设置默认值
            if (kc.SCHOOLID == 0) kc.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(kc.KCH)) kc.KCH = "";//课程号
            if (string.IsNullOrEmpty(kc.KCMC)) kc.KCMC = "";//课程名称
            if (string.IsNullOrEmpty(kc.KCM)) kc.KCM = "";//课程码   中小学课程代码表
            if (string.IsNullOrEmpty(kc.KCDJM)) kc.KCDJM = "";//课程等级码   中小学课程等级代码表
            if (string.IsNullOrEmpty(kc.KCBM)) kc.KCBM = "";//课程别名
            if (string.IsNullOrEmpty(kc.KCJJ)) kc.KCJJ = "";//课程简介
            if (string.IsNullOrEmpty(kc.KCYQ)) kc.KCYQ = "";//课程要求
            if (kc.ZXS == 0) kc.ZXS = 0;//总学时
            if (kc.ZHXS == 0) kc.ZHXS = 0;//周学时
            if (kc.ZXXS == 0) kc.ZXXS = 0;//自学学时
            if (string.IsNullOrEmpty(kc.SKFSM)) kc.SKFSM = "";//授课方式码   授课方式代码表
            if (string.IsNullOrEmpty(kc.JCBM)) kc.JCBM = "";//教材编码
            if (string.IsNullOrEmpty(kc.CKSM)) kc.CKSM = "";//参考书目
            if (kc.CDXZ == 0) kc.CDXZ = 0;//场地限制
            if (string.IsNullOrEmpty(kc.SFZK)) kc.SFZK = "";//是否主课   是否标志代码表
            EDU_ZXJX_01_01_KC kc_model = db_zxjx.EDU_ZXJX_01_01_KC.FirstOrDefault(e => e.SCHOOLID == kc.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kc_model != null)
            {
                kc_model.SCHOOLID = kc.SCHOOLID;//学校名   学校配置表
                kc_model.KCH = kc.KCH;//课程号
                kc_model.KCMC = kc.KCMC;//课程名称
                kc_model.KCM = kc.KCM;//课程码   中小学课程代码表
                kc_model.KCDJM = kc.KCDJM;//课程等级码   中小学课程等级代码表
                kc_model.KCBM = kc.KCBM;//课程别名
                kc_model.KCJJ = kc.KCJJ;//课程简介
                kc_model.KCYQ = kc.KCYQ;//课程要求
                kc_model.ZXS = kc.ZXS;//总学时
                kc_model.ZHXS = kc.ZHXS;//周学时
                kc_model.ZXXS = kc.ZXXS;//自学学时
                kc_model.SKFSM = kc.SKFSM;//授课方式码   授课方式代码表
                kc_model.JCBM = kc.JCBM;//教材编码
                kc_model.CKSM = kc.CKSM;//参考书目
                kc_model.CDXZ = kc.CDXZ;//场地限制
                kc_model.SFZK = kc.SFZK;//是否主课   是否标志代码表
                db_zxjx.Entry(kc_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjx.EDU_ZXJX_01_01_KC.Add(kc);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_ZXXKCLst = JBLDAL.GetJY_ZXXKCSelLst();
            ViewBag.JY_ZXXKCDJLst = JBLDAL.GetJY_ZXXKCDJSelLst();
            ViewBag.JY_SKFSLst = JBLDAL.GetJY_SKFSSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_01_01_KC());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_01_01_KC());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_01_01_KC kc)
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
            
            EDU_ZXJX_01_01_KC kc= db_zxjx.EDU_ZXJX_01_01_KC.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kc);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_01_01_KC kc)
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

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_01_01_KC kc = db_zxjx.EDU_ZXJX_01_01_KC.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_01_01_KC.Remove(kc);
                db_zxjx.SaveChanges();
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
                    EDU_ZXJX_01_01_KC kc = db_zxjx.EDU_ZXJX_01_01_KC.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_01_01_KC.Remove(kc);
                    db_zxjx.SaveChanges();
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

        private static int Max_KC_ID = 0;
        private static object syncIDLock = new object();
        //获取课程数据类最大ID
        public int GetMax_KC_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KC_ID == 0)
                {
                    EDU_ZXJX_01_01_KC kc = db_zxjx.EDU_ZXJX_01_01_KC.FirstOrDefault();
                    if (kc == null)
                    {
                        Max_KC_ID = 1;
                    }
                    else
                    {
                        //Max_KC_ID = db_zxjx.EDU_ZXJX_01_01_KC.Max(e => e.ID) + 1;
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
