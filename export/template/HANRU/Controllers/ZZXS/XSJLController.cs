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
    public class XSJLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_13_A01_XSJL_DISP> model = db_zzxs.VIEW_EDU_ZZXS_13_A01_XSJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsjl(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            xsjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjl(xsjl);
        }

        public void UpdXsjl(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            //设置默认值
            if (xsjl.SCHOOLID == 0) xsjl.SCHOOLID = 0;//学校ID   学校配置表
            if (xsjl.XSXXID == 0) xsjl.XSXXID = 0;//学生信息ID   学生信息数据表
            if (string.IsNullOrEmpty(xsjl.YYNL)) xsjl.YYNL = "";//英语能力
            if (xsjl.GZNX == 0) xsjl.GZNX = 0;//工作年限
            if (string.IsNullOrEmpty(xsjl.ZWPJ)) xsjl.ZWPJ = "";//自我评价
            if (string.IsNullOrEmpty(xsjl.JYJL)) xsjl.JYJL = "";//教育经历
            if (string.IsNullOrEmpty(xsjl.SHZS)) xsjl.SHZS = "";//所获证书
            if (string.IsNullOrEmpty(xsjl.GZJY)) xsjl.GZJY = "";//工作经验
            if (string.IsNullOrEmpty(xsjl.QZYX)) xsjl.QZYX = "";//求职意向
            if (string.IsNullOrEmpty(xsjl.JNZC)) xsjl.JNZC = "";//技能专长
            if (string.IsNullOrEmpty(xsjl.XMJY)) xsjl.XMJY = "";//项目经验
            EDU_ZZXS_13_A01_XSJL xsjl_model = db_zzxs.EDU_ZZXS_13_A01_XSJL.FirstOrDefault(e => e.SCHOOLID == xsjl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjl_model != null)
            {
                xsjl_model.SCHOOLID = xsjl.SCHOOLID;//学校ID   学校配置表
                xsjl_model.XSXXID = xsjl.XSXXID;//学生信息ID   学生信息数据表
                xsjl_model.YYNL = xsjl.YYNL;//英语能力
                xsjl_model.GZNX = xsjl.GZNX;//工作年限
                xsjl_model.ZWPJ = xsjl.ZWPJ;//自我评价
                xsjl_model.JYJL = xsjl.JYJL;//教育经历
                xsjl_model.SHZS = xsjl.SHZS;//所获证书
                xsjl_model.GZJY = xsjl.GZJY;//工作经验
                xsjl_model.QZYX = xsjl.QZYX;//求职意向
                xsjl_model.JNZC = xsjl.JNZC;//技能专长
                xsjl_model.XMJY = xsjl.XMJY;//项目经验
                db_zzxs.Entry(xsjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_13_A01_XSJL.Add(xsjl);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_13_A01_XSJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_13_A01_XSJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsjl(xsjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_13_A01_XSJL xsjl= db_zzxs.EDU_ZZXS_13_A01_XSJL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsjl(xsjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_13_A01_XSJL xsjl = db_zzxs.EDU_ZZXS_13_A01_XSJL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_13_A01_XSJL.Remove(xsjl);
                db_zzxs.SaveChanges();
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
                    EDU_ZZXS_13_A01_XSJL xsjl = db_zzxs.EDU_ZZXS_13_A01_XSJL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_13_A01_XSJL.Remove(xsjl);
                    db_zzxs.SaveChanges();
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

        private static int Max_XSJL_ID = 0;
        private static object syncIDLock = new object();
        //获取学生简历表最大ID
        public int GetMax_XSJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSJL_ID == 0)
                {
                    EDU_ZZXS_13_A01_XSJL xsjl = db_zzxs.EDU_ZZXS_13_A01_XSJL.FirstOrDefault();
                    if (xsjl == null)
                    {
                        Max_XSJL_ID = 1;
                    }
                    else
                    {
                        //Max_XSJL_ID = db_zzxs.EDU_ZZXS_13_A01_XSJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSJL_ID++;
                }
                maxId = Max_XSJL_ID;
            }
            return maxId;
        }

    }
}
