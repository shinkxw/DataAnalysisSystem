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
    public class XXGCXPJJGController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_08_A02_XXGCXPJJG_DISP> model = db_zxjx.VIEW_EDU_ZXJX_08_A02_XXGCXPJJG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxgcxpjjg(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            xxgcxpjjg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxgcxpjjg(xxgcxpjjg);
        }

        public void UpdXxgcxpjjg(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            //设置默认值
            if (xxgcxpjjg.ID == 0) xxgcxpjjg.ID = 0;//编号
            if (xxgcxpjjg.SCHOOLID == 0) xxgcxpjjg.SCHOOLID = 0;//学校ID   学校配置表
            if (xxgcxpjjg.PZID == 0) xxgcxpjjg.PZID = 0;//评价配置ID   学生学习过程性评价配置表
            if (xxgcxpjjg.FS == 0) xxgcxpjjg.FS = 0;//分数
            if (xxgcxpjjg.XLZID == 0) xxgcxpjjg.XLZID = 0;//校历周ID   校历周表
            if (xxgcxpjjg.XSXXID == 0) xxgcxpjjg.XSXXID = 0;//学生ID   学生基本数据子类表
            if (string.IsNullOrEmpty(xxgcxpjjg.SSKCH)) xxgcxpjjg.SSKCH = "";//所属课程号   课程数据类
            EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg_model = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.FirstOrDefault(e => e.ID == xxgcxpjjg.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxgcxpjjg_model != null)
            {
                xxgcxpjjg_model.ID = xxgcxpjjg.ID;//编号
                xxgcxpjjg_model.SCHOOLID = xxgcxpjjg.SCHOOLID;//学校ID   学校配置表
                xxgcxpjjg_model.PZID = xxgcxpjjg.PZID;//评价配置ID   学生学习过程性评价配置表
                xxgcxpjjg_model.FS = xxgcxpjjg.FS;//分数
                xxgcxpjjg_model.XLZID = xxgcxpjjg.XLZID;//校历周ID   校历周表
                xxgcxpjjg_model.XSXXID = xxgcxpjjg.XSXXID;//学生ID   学生基本数据子类表
                xxgcxpjjg_model.SSKCH = xxgcxpjjg.SSKCH;//所属课程号   课程数据类
                db_zxjx.Entry(xxgcxpjjg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Add(xxgcxpjjg);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_08_A02_XXGCXPJJG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_08_A02_XXGCXPJJG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxgcxpjjg(xxgcxpjjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjjg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg= db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxgcxpjjg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxgcxpjjg(xxgcxpjjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjjg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Remove(xxgcxpjjg);
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
                    EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Remove(xxgcxpjjg);
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

        private static int Max_XXGCXPJJG_ID = 0;
        private static object syncIDLock = new object();
        //获取学生学习过程性评价结果表最大ID
        public int GetMax_XXGCXPJJG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXGCXPJJG_ID == 0)
                {
                    EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.FirstOrDefault();
                    if (xxgcxpjjg == null)
                    {
                        Max_XXGCXPJJG_ID = 1;
                    }
                    else
                    {
                        //Max_XXGCXPJJG_ID = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXGCXPJJG_ID++;
                }
                maxId = Max_XXGCXPJJG_ID;
            }
            return maxId;
        }

    }
}
