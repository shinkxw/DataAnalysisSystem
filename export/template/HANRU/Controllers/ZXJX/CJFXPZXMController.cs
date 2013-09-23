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
    public class CJFXPZXMController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_07_A02_CJFXPZXM_DISP> model = db_zxjx.VIEW_EDU_ZXJX_07_A02_CJFXPZXM_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddCjfxpzxm(EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm)
        {
            cjfxpzxm.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdCjfxpzxm(cjfxpzxm);
        }

        public void UpdCjfxpzxm(EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm)
        {
            //设置默认值
            if (cjfxpzxm.ID == 0) cjfxpzxm.ID = 0;//编号
            if (cjfxpzxm.SSPZID == 0) cjfxpzxm.SSPZID = 0;//所属配置ID
            if (string.IsNullOrEmpty(cjfxpzxm.DCMC)) cjfxpzxm.DCMC = "";//名称
            if (cjfxpzxm.SX == 0) cjfxpzxm.SX = 0;//上限
            if (cjfxpzxm.XX == 0) cjfxpzxm.XX = 0;//下限
            if (cjfxpzxm.PZQZ == 0) cjfxpzxm.PZQZ = 0;//P值权重
            EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm_model = db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.FirstOrDefault(e => e.ID == cjfxpzxm.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (cjfxpzxm_model != null)
            {
                cjfxpzxm_model.ID = cjfxpzxm.ID;//编号
                cjfxpzxm_model.SSPZID = cjfxpzxm.SSPZID;//所属配置ID
                cjfxpzxm_model.DCMC = cjfxpzxm.DCMC;//名称
                cjfxpzxm_model.SX = cjfxpzxm.SX;//上限
                cjfxpzxm_model.XX = cjfxpzxm.XX;//下限
                cjfxpzxm_model.PZQZ = cjfxpzxm.PZQZ;//P值权重
                db_zxjx.Entry(cjfxpzxm_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.Add(cjfxpzxm);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_07_A02_CJFXPZXM());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_07_A02_CJFXPZXM());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm)
        {
            InitViewBag();
            try
            {
                //
                //
                AddCjfxpzxm(cjfxpzxm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cjfxpzxm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cjfxpzxm);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm= db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(cjfxpzxm);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm)
        {
            InitViewBag();
            try
            {
                
                
                UpdCjfxpzxm(cjfxpzxm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cjfxpzxm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cjfxpzxm);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm = db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.Remove(cjfxpzxm);
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
                    EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm = db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.Remove(cjfxpzxm);
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

        private static int Max_CJFXPZXM_ID = 0;
        private static object syncIDLock = new object();
        //获取成绩分析配置项目表最大ID
        public int GetMax_CJFXPZXM_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_CJFXPZXM_ID == 0)
                {
                    EDU_ZXJX_07_A02_CJFXPZXM cjfxpzxm = db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.FirstOrDefault();
                    if (cjfxpzxm == null)
                    {
                        Max_CJFXPZXM_ID = 1;
                    }
                    else
                    {
                        //Max_CJFXPZXM_ID = db_zxjx.EDU_ZXJX_07_A02_CJFXPZXM.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_CJFXPZXM_ID++;
                }
                maxId = Max_CJFXPZXM_ID;
            }
            return maxId;
        }

    }
}
