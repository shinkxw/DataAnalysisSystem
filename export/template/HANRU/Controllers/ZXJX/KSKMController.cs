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
    public class KSKMController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_05_A02_KSKM_DISP> model = db_zxjx.VIEW_EDU_ZXJX_05_A02_KSKM_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddKskm(EDU_ZXJX_05_A02_KSKM kskm)
        {
            kskm.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKskm(kskm);
        }

        public void UpdKskm(EDU_ZXJX_05_A02_KSKM kskm)
        {
            //设置默认值
            if (kskm.ID == 0) kskm.ID = 0;//编号
            if (kskm.SCHOOLID == 0) kskm.SCHOOLID = 0;//学校名   学校配置表
            if (kskm.SSKSID == 0) kskm.SSKSID = 0;//所属考试ID   考试数据表
            if (kskm.JSRKID == 0) kskm.JSRKID = 0;//教师任课编号   任课数据子类表
            if (string.IsNullOrEmpty(kskm.KCMC)) kskm.KCMC = "";//课程名称
            if (string.IsNullOrEmpty(kskm.NJMC)) kskm.NJMC = "";//年级名称
            if (string.IsNullOrEmpty(kskm.BJMC)) kskm.BJMC = "";//班级名称
            if (kskm.CJZF == 0) kskm.CJZF = 0;//成绩总分
            EDU_ZXJX_05_A02_KSKM kskm_model = db_zxjx.EDU_ZXJX_05_A02_KSKM.FirstOrDefault(e => e.ID == kskm.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kskm_model != null)
            {
                kskm_model.ID = kskm.ID;//编号
                kskm_model.SCHOOLID = kskm.SCHOOLID;//学校名   学校配置表
                kskm_model.SSKSID = kskm.SSKSID;//所属考试ID   考试数据表
                kskm_model.JSRKID = kskm.JSRKID;//教师任课编号   任课数据子类表
                kskm_model.KCMC = kskm.KCMC;//课程名称
                kskm_model.NJMC = kskm.NJMC;//年级名称
                kskm_model.BJMC = kskm.BJMC;//班级名称
                kskm_model.CJZF = kskm.CJZF;//成绩总分
                db_zxjx.Entry(kskm_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjx.EDU_ZXJX_05_A02_KSKM.Add(kskm);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_05_A02_KSKM());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_05_A02_KSKM());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_05_A02_KSKM kskm)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKskm(kskm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kskm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kskm);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_05_A02_KSKM kskm= db_zxjx.EDU_ZXJX_05_A02_KSKM.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kskm);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_05_A02_KSKM kskm)
        {
            InitViewBag();
            try
            {
                
                
                UpdKskm(kskm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kskm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kskm);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXJX_05_A02_KSKM kskm = db_zxjx.EDU_ZXJX_05_A02_KSKM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_05_A02_KSKM.Remove(kskm);
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
                    EDU_ZXJX_05_A02_KSKM kskm = db_zxjx.EDU_ZXJX_05_A02_KSKM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_05_A02_KSKM.Remove(kskm);
                    db_zxjx.SaveChanges();
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

        private static int Max_KSKM_ID = 0;
        private static object syncIDLock = new object();
        //获取考试科目数据表最大ID
        public int GetMax_KSKM_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KSKM_ID == 0)
                {
                    EDU_ZXJX_05_A02_KSKM kskm = db_zxjx.EDU_ZXJX_05_A02_KSKM.FirstOrDefault();
                    if (kskm == null)
                    {
                        Max_KSKM_ID = 1;
                    }
                    else
                    {
                        //Max_KSKM_ID = db_zxjx.EDU_ZXJX_05_A02_KSKM.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KSKM_ID++;
                }
                maxId = Max_KSKM_ID;
            }
            return maxId;
        }

    }
}
