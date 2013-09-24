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
    public class XSXWSXQKController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsxwsxqk(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            xsxwsxqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsxwsxqk(xsxwsxqk);
        }

        public void UpdXsxwsxqk(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            //设置默认值
            if (xsxwsxqk.SCHOOLID == 0) xsxwsxqk.SCHOOLID = 0;//学校名   学校配置表
            if (xsxwsxqk.ID == 0) xsxwsxqk.ID = 0;//实习情况表ID
            if (xsxwsxqk.XSXXID == 0) xsxwsxqk.XSXXID = 0;//学生信息ID   学生信息数据表
            if (xsxwsxqk.QYID == 0) xsxwsxqk.QYID = 0;//企业表ID   校外实习基地信息数据子类表
            if (xsxwsxqk.GWID == 0) xsxwsxqk.GWID = 0;//岗位表ID   实习岗位表
            if (string.IsNullOrEmpty(xsxwsxqk.SXQSRQ)) xsxwsxqk.SXQSRQ = "";//受训起始日期
            if (string.IsNullOrEmpty(xsxwsxqk.SXJSRQ)) xsxwsxqk.SXJSRQ = "";//受训结束日期
            if (string.IsNullOrEmpty(xsxwsxqk.QYBH)) xsxwsxqk.QYBH = "";//企业编号
            if (string.IsNullOrEmpty(xsxwsxqk.SXGWMC)) xsxwsxqk.SXGWMC = "";//受训岗位名称
            if (string.IsNullOrEmpty(xsxwsxqk.SXDS)) xsxwsxqk.SXDS = "";//实训导师
            if (string.IsNullOrEmpty(xsxwsxqk.SFGMSXZRBX)) xsxwsxqk.SFGMSXZRBX = "";//是否购买实习责任保险   是否标志代码表
            if (string.IsNullOrEmpty(xsxwsxqk.BXFZFZ)) xsxwsxqk.BXFZFZ = "";//保险费支付者
            if (xsxwsxqk.SXXC == 0) xsxwsxqk.SXXC = 0;//实习薪酬
            if (string.IsNullOrEmpty(xsxwsxqk.SFSDGSX)) xsxwsxqk.SFSDGSX = "";//是否是顶岗实习   是否标志代码表
            if (string.IsNullOrEmpty(xsxwsxqk.XSHJXZM)) xsxwsxqk.XSHJXZM = "";//学生户籍性质码   户籍性质代码
            EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk_model = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.FirstOrDefault(e => e.SCHOOLID == xsxwsxqk.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxwsxqk_model != null)
            {
                xsxwsxqk_model.SCHOOLID = xsxwsxqk.SCHOOLID;//学校名   学校配置表
                xsxwsxqk_model.ID = xsxwsxqk.ID;//实习情况表ID
                xsxwsxqk_model.XSXXID = xsxwsxqk.XSXXID;//学生信息ID   学生信息数据表
                xsxwsxqk_model.QYID = xsxwsxqk.QYID;//企业表ID   校外实习基地信息数据子类表
                xsxwsxqk_model.GWID = xsxwsxqk.GWID;//岗位表ID   实习岗位表
                xsxwsxqk_model.SXQSRQ = xsxwsxqk.SXQSRQ;//受训起始日期
                xsxwsxqk_model.SXJSRQ = xsxwsxqk.SXJSRQ;//受训结束日期
                xsxwsxqk_model.QYBH = xsxwsxqk.QYBH;//企业编号
                xsxwsxqk_model.SXGWMC = xsxwsxqk.SXGWMC;//受训岗位名称
                xsxwsxqk_model.SXDS = xsxwsxqk.SXDS;//实训导师
                xsxwsxqk_model.SFGMSXZRBX = xsxwsxqk.SFGMSXZRBX;//是否购买实习责任保险   是否标志代码表
                xsxwsxqk_model.BXFZFZ = xsxwsxqk.BXFZFZ;//保险费支付者
                xsxwsxqk_model.SXXC = xsxwsxqk.SXXC;//实习薪酬
                xsxwsxqk_model.SFSDGSX = xsxwsxqk.SFSDGSX;//是否是顶岗实习   是否标志代码表
                xsxwsxqk_model.XSHJXZM = xsxwsxqk.XSHJXZM;//学生户籍性质码   户籍性质代码
                db_zzjx.Entry(xsxwsxqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Add(xsxwsxqk);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.ZZ_HJXZLst = ZZBLDAL.GetZZ_HJXZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_03_XSXWSXQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_03_XSXWSXQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsxwsxqk(xsxwsxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxwsxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxwsxqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk= db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsxwsxqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsxwsxqk(xsxwsxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxwsxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxwsxqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Remove(xsxwsxqk);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Remove(xsxwsxqk);
                    db_zzjx.SaveChanges();
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

        private static int Max_XSXWSXQK_ID = 0;
        private static object syncIDLock = new object();
        //获取学生校外实习情况数据子类表最大ID
        public int GetMax_XSXWSXQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSXWSXQK_ID == 0)
                {
                    EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.FirstOrDefault();
                    if (xsxwsxqk == null)
                    {
                        Max_XSXWSXQK_ID = 1;
                    }
                    else
                    {
                        //Max_XSXWSXQK_ID = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSXWSXQK_ID++;
                }
                maxId = Max_XSXWSXQK_ID;
            }
            return maxId;
        }

    }
}
