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
    public class JZGZYNLController : OAXTController
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
            if (jzgzynl.SCHOOLID == 0) jzgzynl.SCHOOLID = 0;//学校名学校ID
            if (jzgzynl.JZGJBSJID == 0) jzgzynl.JZGJBSJID = 0;//教职工ID
            if (string.IsNullOrEmpty(jzgzynl.ZSMC)) jzgzynl.ZSMC = "";//证书名称证书名称 编号：ZZJG070001 引用自JCJG020301 GWZSMC 岗位证书名称 C 40 M NULL 由具有岗位评定资格单位考核并批准的岗位证书名称 NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBH)) jzgzynl.ZSBH = "";//证书编号证书编号 编号：ZZJG070002 引用自JCJG020302 GWZSBH 岗位证书编号 C 20 O NULL NULL NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBFDW)) jzgzynl.ZSBFDW = "";//证书颁发单位证书颁发单位 编号：ZZJG070003 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBFRQ)) jzgzynl.ZSBFRQ = "";//证书颁发日期证书颁发日期 编号：ZZJG070004 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBZ)) jzgzynl.ZSBZ = "";//证书备注证书备注 编号：ZZJG070005 
            if (string.IsNullOrEmpty(jzgzynl.SFSZYZGZS)) jzgzynl.SFSZYZGZS = "";//是否是职业资格证书是否是职业资格证书 编号：ZZJG070006 值空间：JY/T1001SFBZ是否标志代码 
            EDU_ZZJG_07_01_JZGZYNL jzgzynl_model = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.FirstOrDefault(e => e.SCHOOLID == jzgzynl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgzynl_model != null)
            {
                jzgzynl_model.SCHOOLID = jzgzynl.SCHOOLID;//学校名学校ID
                jzgzynl_model.JZGJBSJID = jzgzynl.JZGJBSJID;//教职工ID
                jzgzynl_model.ZSMC = jzgzynl.ZSMC;//证书名称证书名称 编号：ZZJG070001 引用自JCJG020301 GWZSMC 岗位证书名称 C 40 M NULL 由具有岗位评定资格单位考核并批准的岗位证书名称 NULL
                jzgzynl_model.ZSBH = jzgzynl.ZSBH;//证书编号证书编号 编号：ZZJG070002 引用自JCJG020302 GWZSBH 岗位证书编号 C 20 O NULL NULL NULL
                jzgzynl_model.ZSBFDW = jzgzynl.ZSBFDW;//证书颁发单位证书颁发单位 编号：ZZJG070003 引用自JCTB010302 DWMC 单位名称 C 60 NULL NULL NULL NULL
                jzgzynl_model.ZSBFRQ = jzgzynl.ZSBFRQ;//证书颁发日期证书颁发日期 编号：ZZJG070004 引用自JCTB010203 RQ 日期 C 8 NULL GB/T7408 格式：YYYYMMDD，如：20060412表示2006年4月12日 NULL
                jzgzynl_model.ZSBZ = jzgzynl.ZSBZ;//证书备注证书备注 编号：ZZJG070005 
                jzgzynl_model.SFSZYZGZS = jzgzynl.SFSZYZGZS;//是否是职业资格证书是否是职业资格证书 编号：ZZJG070006 值空间：JY/T1001SFBZ是否标志代码 
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
            //ViewBag.
            
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
