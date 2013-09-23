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
    public class JZGKZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP> model = db_zzjg.VIEW_EDU_ZZJG_01_A01_JZGKZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.JZGJBSJID.Contains(searchkey)).ToList();
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

        public void AddJzgkz(EDU_ZZJG_01_A01_JZGKZ jzgkz)
        {
            jzgkz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgkz(jzgkz);
        }

        public void UpdJzgkz(EDU_ZZJG_01_A01_JZGKZ jzgkz)
        {
            //设置默认值
            if (jzgkz.JZGJBSJID == 0) jzgkz.JZGJBSJID = 0;//教工基本信息ID   教职工基本数据子类表
            if (jzgkz.SCHOOLID == 0) jzgkz.SCHOOLID = 0;//学校ID   学校配置表
            if (jzgkz.JL == 0) jzgkz.JL = 0;//教龄
            if (jzgkz.GL == 0) jzgkz.GL = 0;//工龄
            if (string.IsNullOrEmpty(jzgkz.GZJY)) jzgkz.GZJY = "";//工作经验
            if (string.IsNullOrEmpty(jzgkz.LDJN)) jzgkz.LDJN = "";//劳动技能
            if (string.IsNullOrEmpty(jzgkz.XXJL)) jzgkz.XXJL = "";//学习经历
            EDU_ZZJG_01_A01_JZGKZ jzgkz_model = db_zzjg.EDU_ZZJG_01_A01_JZGKZ.FirstOrDefault(e => e.JZGJBSJID == jzgkz.JZGJBSJID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgkz_model != null)
            {
                jzgkz_model.JZGJBSJID = jzgkz.JZGJBSJID;//教工基本信息ID   教职工基本数据子类表
                jzgkz_model.SCHOOLID = jzgkz.SCHOOLID;//学校ID   学校配置表
                jzgkz_model.JL = jzgkz.JL;//教龄
                jzgkz_model.GL = jzgkz.GL;//工龄
                jzgkz_model.GZJY = jzgkz.GZJY;//工作经验
                jzgkz_model.LDJN = jzgkz.LDJN;//劳动技能
                jzgkz_model.XXJL = jzgkz.XXJL;//学习经历
                db_zzjg.Entry(jzgkz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjg.EDU_ZZJG_01_A01_JZGKZ.Add(jzgkz);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_01_A01_JZGKZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_01_A01_JZGKZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_01_A01_JZGKZ jzgkz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzgkz(jzgkz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgkz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgkz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_01_A01_JZGKZ jzgkz= db_zzjg.EDU_ZZJG_01_A01_JZGKZ.Single(e => e.JZGJBSJID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgkz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_01_A01_JZGKZ jzgkz)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzgkz(jzgkz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgkz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgkz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_01_A01_JZGKZ jzgkz = db_zzjg.EDU_ZZJG_01_A01_JZGKZ.SingleOrDefault(e => e.JZGJBSJID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_01_A01_JZGKZ.Remove(jzgkz);
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
                    EDU_ZZJG_01_A01_JZGKZ jzgkz = db_zzjg.EDU_ZZJG_01_A01_JZGKZ.SingleOrDefault(e => e.JZGJBSJID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_01_A01_JZGKZ.Remove(jzgkz);
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

        private static int Max_JZGKZ_ID = 0;
        private static object syncIDLock = new object();
        //获取教职工扩展表最大ID
        public int GetMax_JZGKZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGKZ_ID == 0)
                {
                    EDU_ZZJG_01_A01_JZGKZ jzgkz = db_zzjg.EDU_ZZJG_01_A01_JZGKZ.FirstOrDefault();
                    if (jzgkz == null)
                    {
                        Max_JZGKZ_ID = 1;
                    }
                    else
                    {
                        //Max_JZGKZ_ID = db_zzjg.EDU_ZZJG_01_A01_JZGKZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGKZ_ID++;
                }
                maxId = Max_JZGKZ_ID;
            }
            return maxId;
        }

    }
}
