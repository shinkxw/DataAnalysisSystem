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
    public class JZGZYNLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP> model = db_zzjg.VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJzgzynl(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            jzgzynl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgzynl(jzgzynl);
        }

        public void UpdJzgzynl(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            //设置默认值
            if (jzgzynl.SCHOOLID == 0) jzgzynl.SCHOOLID = 0;//学校名   学校配置表
            if (jzgzynl.JZGJBSJID == 0) jzgzynl.JZGJBSJID = 0;//教职工ID   教职工基本数据子类表
            if (string.IsNullOrEmpty(jzgzynl.ZSMC)) jzgzynl.ZSMC = "";//证书名称
            if (string.IsNullOrEmpty(jzgzynl.ZSBH)) jzgzynl.ZSBH = "";//证书编号
            if (string.IsNullOrEmpty(jzgzynl.ZSBFDW)) jzgzynl.ZSBFDW = "";//证书颁发单位
            if (string.IsNullOrEmpty(jzgzynl.ZSBFRQ)) jzgzynl.ZSBFRQ = "";//证书颁发日期
            if (string.IsNullOrEmpty(jzgzynl.ZSBZ)) jzgzynl.ZSBZ = "";//证书备注
            if (string.IsNullOrEmpty(jzgzynl.SFSZYZGZS)) jzgzynl.SFSZYZGZS = "";//是否是职业资格证书   是否标志代码表
            EDU_ZZJG_07_01_JZGZYNL jzgzynl_model = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.FirstOrDefault(e => e.SCHOOLID == jzgzynl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgzynl_model != null)
            {
                jzgzynl_model.SCHOOLID = jzgzynl.SCHOOLID;//学校名   学校配置表
                jzgzynl_model.JZGJBSJID = jzgzynl.JZGJBSJID;//教职工ID   教职工基本数据子类表
                jzgzynl_model.ZSMC = jzgzynl.ZSMC;//证书名称
                jzgzynl_model.ZSBH = jzgzynl.ZSBH;//证书编号
                jzgzynl_model.ZSBFDW = jzgzynl.ZSBFDW;//证书颁发单位
                jzgzynl_model.ZSBFRQ = jzgzynl.ZSBFRQ;//证书颁发日期
                jzgzynl_model.ZSBZ = jzgzynl.ZSBZ;//证书备注
                jzgzynl_model.SFSZYZGZS = jzgzynl.SFSZYZGZS;//是否是职业资格证书   是否标志代码表
                db_zzjg.Entry(jzgzynl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Add(jzgzynl);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_07_01_JZGZYNL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_07_01_JZGZYNL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzgzynl(jzgzynl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgzynl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgzynl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_07_01_JZGZYNL jzgzynl= db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgzynl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzgzynl(jzgzynl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgzynl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgzynl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_07_01_JZGZYNL jzgzynl = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Remove(jzgzynl);
                db_zzjg.SaveChanges();
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
                    EDU_ZZJG_07_01_JZGZYNL jzgzynl = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Remove(jzgzynl);
                    db_zzjg.SaveChanges();
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

        private static int Max_JZGZYNL_ID = 0;
        private static object syncIDLock = new object();
        //获取教职工专业能力与资格证书数据类表最大ID
        public int GetMax_JZGZYNL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGZYNL_ID == 0)
                {
                    EDU_ZZJG_07_01_JZGZYNL jzgzynl = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.FirstOrDefault();
                    if (jzgzynl == null)
                    {
                        Max_JZGZYNL_ID = 1;
                    }
                    else
                    {
                        //Max_JZGZYNL_ID = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGZYNL_ID++;
                }
                maxId = Max_JZGZYNL_ID;
            }
            return maxId;
        }

    }
}
