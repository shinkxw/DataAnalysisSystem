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
    public class JGController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_04_01_JG_DISP> model = db_zxxx.VIEW_EDU_ZXXX_04_01_JG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJg(EDU_ZXXX_04_01_JG jg)
        {
            jg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJg(jg);
        }

        public void UpdJg(EDU_ZXXX_04_01_JG jg)
        {
            //设置默认值
            if (jg.SCHOOLID == 0) jg.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(jg.JGH)) jg.JGH = "";//机构号
            if (string.IsNullOrEmpty(jg.LSJGH)) jg.LSJGH = "";//隶属机构号   机构数据类表
            if (string.IsNullOrEmpty(jg.JGMC)) jg.JGMC = "";//机构名称
            if (string.IsNullOrEmpty(jg.JGJC)) jg.JGJC = "";//机构简称
            if (string.IsNullOrEmpty(jg.FZRGH)) jg.FZRGH = "";//负责人工号
            EDU_ZXXX_04_01_JG jg_model = db_zxxx.EDU_ZXXX_04_01_JG.FirstOrDefault(e => e.SCHOOLID == jg.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jg_model != null)
            {
                jg_model.SCHOOLID = jg.SCHOOLID;//学校名   学校配置表
                jg_model.JGH = jg.JGH;//机构号
                jg_model.LSJGH = jg.LSJGH;//隶属机构号   机构数据类表
                jg_model.JGMC = jg.JGMC;//机构名称
                jg_model.JGJC = jg.JGJC;//机构简称
                jg_model.FZRGH = jg.FZRGH;//负责人工号
                db_zxxx.Entry(jg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxxx.EDU_ZXXX_04_01_JG.Add(jg);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_04_01_JG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_04_01_JG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_04_01_JG jg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJg(jg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_04_01_JG jg= db_zxxx.EDU_ZXXX_04_01_JG.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_04_01_JG jg)
        {
            InitViewBag();
            try
            {
                
                
                UpdJg(jg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXXX_04_01_JG jg = db_zxxx.EDU_ZXXX_04_01_JG.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_04_01_JG.Remove(jg);
                db_zxxx.SaveChanges();
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
                    EDU_ZXXX_04_01_JG jg = db_zxxx.EDU_ZXXX_04_01_JG.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_04_01_JG.Remove(jg);
                    db_zxxx.SaveChanges();
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

        private static int Max_JG_ID = 0;
        private static object syncIDLock = new object();
        //获取机构数据类表最大ID
        public int GetMax_JG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JG_ID == 0)
                {
                    EDU_ZXXX_04_01_JG jg = db_zxxx.EDU_ZXXX_04_01_JG.FirstOrDefault();
                    if (jg == null)
                    {
                        Max_JG_ID = 1;
                    }
                    else
                    {
                        //Max_JG_ID = db_zxxx.EDU_ZXXX_04_01_JG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JG_ID++;
                }
                maxId = Max_JG_ID;
            }
            return maxId;
        }

    }
}
