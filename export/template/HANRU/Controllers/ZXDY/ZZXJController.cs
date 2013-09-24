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
    public class ZZXJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP> model = db_zxdy.VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzxj(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            zzxj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzxj(zzxj);
        }

        public void UpdZzxj(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            //设置默认值
            if (zzxj.ID == 0) zzxj.ID = 0;//值周小结表ID
            if (zzxj.SCHOOLID == 0) zzxj.SCHOOLID = 0;//学校ID   学校配置表
            if (zzxj.XQID == 0) zzxj.XQID = 0;//学期ID   学期数据表
            if (zzxj.ZCID == 0) zzxj.ZCID = 0;//周次ID   值周周次表
            if (string.IsNullOrEmpty(zzxj.SZDS)) zzxj.SZDS = "";//上周大事
            if (string.IsNullOrEmpty(zzxj.ZZJCQKFK)) zzxj.ZZJCQKFK = "";//值周检查情况反馈
            EDU_ZXDY_06_A01_ZZXJ zzxj_model = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.FirstOrDefault(e => e.ID == zzxj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzxj_model != null)
            {
                zzxj_model.ID = zzxj.ID;//值周小结表ID
                zzxj_model.SCHOOLID = zzxj.SCHOOLID;//学校ID   学校配置表
                zzxj_model.XQID = zzxj.XQID;//学期ID   学期数据表
                zzxj_model.ZCID = zzxj.ZCID;//周次ID   值周周次表
                zzxj_model.SZDS = zzxj.SZDS;//上周大事
                zzxj_model.ZZJCQKFK = zzxj.ZZJCQKFK;//值周检查情况反馈
                db_zxdy.Entry(zzxj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Add(zzxj);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_06_A01_ZZXJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_06_A01_ZZXJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzxj(zzxj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_06_A01_ZZXJ zzxj= db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzxj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzxj(zzxj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_06_A01_ZZXJ zzxj = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Remove(zzxj);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_06_A01_ZZXJ zzxj = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Remove(zzxj);
                    db_zxdy.SaveChanges();
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

        private static int Max_ZZXJ_ID = 0;
        private static object syncIDLock = new object();
        //获取值周小结表最大ID
        public int GetMax_ZZXJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZXJ_ID == 0)
                {
                    EDU_ZXDY_06_A01_ZZXJ zzxj = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.FirstOrDefault();
                    if (zzxj == null)
                    {
                        Max_ZZXJ_ID = 1;
                    }
                    else
                    {
                        //Max_ZZXJ_ID = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZXJ_ID++;
                }
                maxId = Max_ZZXJ_ID;
            }
            return maxId;
        }

    }
}
