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
    public class XSJTXXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_02_01_XSJTXX_DISP> model = db_zzxs.VIEW_EDU_ZZXS_02_01_XSJTXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddXsjtxx(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            xsjtxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjtxx(xsjtxx);
        }

        public void UpdXsjtxx(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            //设置默认值
            if (xsjtxx.XSXXID == 0) xsjtxx.XSXXID = 0;//学生信息数据表   学生信息数据表
            if (xsjtxx.SCHOOLID == 0) xsjtxx.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(xsjtxx.JTZZ)) xsjtxx.JTZZ = "";//家庭住址
            if (string.IsNullOrEmpty(xsjtxx.JTYZBM)) xsjtxx.JTYZBM = "";//家庭邮政编码
            if (string.IsNullOrEmpty(xsjtxx.JTDH)) xsjtxx.JTDH = "";//家庭电话
            if (string.IsNullOrEmpty(xsjtxx.JTLXR)) xsjtxx.JTLXR = "";//家庭联系人
            if (string.IsNullOrEmpty(xsjtxx.JTDZXX)) xsjtxx.JTDZXX = "";//家庭电子信箱
            if (xsjtxx.JTRK == 0) xsjtxx.JTRK = 0;//家庭人口
            if (string.IsNullOrEmpty(xsjtxx.JTZYSRLY)) xsjtxx.JTZYSRLY = "";//家庭主要收入来源
            if (xsjtxx.JTYSRJE == 0) xsjtxx.JTYSRJE = 0;//家庭月收入金额
            if (xsjtxx.JTNSRJE == 0) xsjtxx.JTNSRJE = 0;//家庭年收入金额
            if (string.IsNullOrEmpty(xsjtxx.LJZJHCZ)) xsjtxx.LJZJHCZ = "";//离家最近火车站
            EDU_ZZXS_02_01_XSJTXX xsjtxx_model = db_zzxs.EDU_ZZXS_02_01_XSJTXX.FirstOrDefault(e => e.XSXXID == xsjtxx.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjtxx_model != null)
            {
                xsjtxx_model.XSXXID = xsjtxx.XSXXID;//学生信息数据表   学生信息数据表
                xsjtxx_model.SCHOOLID = xsjtxx.SCHOOLID;//学校名   学校配置表
                xsjtxx_model.JTZZ = xsjtxx.JTZZ;//家庭住址
                xsjtxx_model.JTYZBM = xsjtxx.JTYZBM;//家庭邮政编码
                xsjtxx_model.JTDH = xsjtxx.JTDH;//家庭电话
                xsjtxx_model.JTLXR = xsjtxx.JTLXR;//家庭联系人
                xsjtxx_model.JTDZXX = xsjtxx.JTDZXX;//家庭电子信箱
                xsjtxx_model.JTRK = xsjtxx.JTRK;//家庭人口
                xsjtxx_model.JTZYSRLY = xsjtxx.JTZYSRLY;//家庭主要收入来源
                xsjtxx_model.JTYSRJE = xsjtxx.JTYSRJE;//家庭月收入金额
                xsjtxx_model.JTNSRJE = xsjtxx.JTNSRJE;//家庭年收入金额
                xsjtxx_model.LJZJHCZ = xsjtxx.LJZJHCZ;//离家最近火车站
                db_zzxs.Entry(xsjtxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_02_01_XSJTXX.Add(xsjtxx);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_02_01_XSJTXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_02_01_XSJTXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsjtxx(xsjtxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_02_01_XSJTXX xsjtxx= db_zzxs.EDU_ZZXS_02_01_XSJTXX.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjtxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsjtxx(xsjtxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_02_01_XSJTXX xsjtxx = db_zzxs.EDU_ZZXS_02_01_XSJTXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_02_01_XSJTXX.Remove(xsjtxx);
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
                    EDU_ZZXS_02_01_XSJTXX xsjtxx = db_zzxs.EDU_ZZXS_02_01_XSJTXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_02_01_XSJTXX.Remove(xsjtxx);
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

        private static int Max_XSJTXX_ID = 0;
        private static object syncIDLock = new object();
        //获取学生家庭信息数据表最大ID
        public int GetMax_XSJTXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSJTXX_ID == 0)
                {
                    EDU_ZZXS_02_01_XSJTXX xsjtxx = db_zzxs.EDU_ZZXS_02_01_XSJTXX.FirstOrDefault();
                    if (xsjtxx == null)
                    {
                        Max_XSJTXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSJTXX_ID = db_zzxs.EDU_ZZXS_02_01_XSJTXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSJTXX_ID++;
                }
                maxId = Max_XSJTXX_ID;
            }
            return maxId;
        }

    }
}
