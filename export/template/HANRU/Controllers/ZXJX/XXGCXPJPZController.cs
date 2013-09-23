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
    public class XXGCXPJPZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_08_A01_XXGCXPJPZ_DISP> model = db_zxjx.VIEW_EDU_ZXJX_08_A01_XXGCXPJPZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxgcxpjpz(EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz)
        {
            xxgcxpjpz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxgcxpjpz(xxgcxpjpz);
        }

        public void UpdXxgcxpjpz(EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz)
        {
            //设置默认值
            if (xxgcxpjpz.ID == 0) xxgcxpjpz.ID = 0;//编号
            if (xxgcxpjpz.SCHOOLID == 0) xxgcxpjpz.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(xxgcxpjpz.SSKCH)) xxgcxpjpz.SSKCH = "";//所属课程号
            if (string.IsNullOrEmpty(xxgcxpjpz.PZMC)) xxgcxpjpz.PZMC = "";//配置名称
            if (string.IsNullOrEmpty(xxgcxpjpz.PZLX)) xxgcxpjpz.PZLX = "";//配置类型
            if (string.IsNullOrEmpty(xxgcxpjpz.FLM)) xxgcxpjpz.FLM = "";//父类名
            EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz_model = db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.FirstOrDefault(e => e.ID == xxgcxpjpz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxgcxpjpz_model != null)
            {
                xxgcxpjpz_model.ID = xxgcxpjpz.ID;//编号
                xxgcxpjpz_model.SCHOOLID = xxgcxpjpz.SCHOOLID;//学校ID   学校配置表
                xxgcxpjpz_model.SSKCH = xxgcxpjpz.SSKCH;//所属课程号
                xxgcxpjpz_model.PZMC = xxgcxpjpz.PZMC;//配置名称
                xxgcxpjpz_model.PZLX = xxgcxpjpz.PZLX;//配置类型
                xxgcxpjpz_model.FLM = xxgcxpjpz.FLM;//父类名
                db_zxjx.Entry(xxgcxpjpz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.Add(xxgcxpjpz);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_08_A01_XXGCXPJPZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_08_A01_XXGCXPJPZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxgcxpjpz(xxgcxpjpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjpz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz= db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxgcxpjpz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxgcxpjpz(xxgcxpjpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjpz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz = db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.Remove(xxgcxpjpz);
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
                    EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz = db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.Remove(xxgcxpjpz);
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

        private static int Max_XXGCXPJPZ_ID = 0;
        private static object syncIDLock = new object();
        //获取学生学习过程性评价配置表最大ID
        public int GetMax_XXGCXPJPZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXGCXPJPZ_ID == 0)
                {
                    EDU_ZXJX_08_A01_XXGCXPJPZ xxgcxpjpz = db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.FirstOrDefault();
                    if (xxgcxpjpz == null)
                    {
                        Max_XXGCXPJPZ_ID = 1;
                    }
                    else
                    {
                        //Max_XXGCXPJPZ_ID = db_zxjx.EDU_ZXJX_08_A01_XXGCXPJPZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXGCXPJPZ_ID++;
                }
                maxId = Max_XXGCXPJPZ_ID;
            }
            return maxId;
        }

    }
}
