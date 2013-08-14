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
    public class XSJTJJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_02_A02_XSJTJJ_DISP> model = db_zzxs.VIEW_EDU_ZZXS_02_A02_XSJTJJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsjtjj(EDU_ZZXS_02_A02_XSJTJJ xsjtjj)
        {
            xsjtjj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjtjj(xsjtjj);
        }

        public void UpdXsjtjj(EDU_ZZXS_02_A02_XSJTJJ xsjtjj)
        {
            //设置默认值
            if (xsjtjj.XSXXID == 0) xsjtjj.XSXXID = 0;//学生信息数据表EDU_ZZXS_01_01_XSXX
            if (xsjtjj.SCHOOLID == 0) xsjtjj.SCHOOLID = 0;//学校名EDU_ZZXX_01_01_ZZXX
            if (xsjtjj.SYRK == 0) xsjtjj.SYRK = 0;//赡养人口
            if (xsjtjj.LDLRK == 0) xsjtjj.LDLRK = 0;//劳动力人口
            if (xsjtjj.JTRJYSR == 0) xsjtjj.JTRJYSR = 0;//家庭人均月收入
            if (string.IsNullOrEmpty(xsjtjj.JTLBM)) xsjtjj.JTLBM = "";//家庭类别码EDU_JY_JTLB
            if (string.IsNullOrEmpty(xsjtjj.KNYYM)) xsjtjj.KNYYM = "";//困难原因码EDU_JY_KNYY
            if (string.IsNullOrEmpty(xsjtjj.KNCDM)) xsjtjj.KNCDM = "";//困难程度码EDU_JY_KNCD
            if (string.IsNullOrEmpty(xsjtjj.SFDB)) xsjtjj.SFDB = "";//是否低保EDU_JY_SFBZ
            if (string.IsNullOrEmpty(xsjtjj.RXQHKLBM)) xsjtjj.RXQHKLBM = "";//入学前户口类别码EDU_GB_HKLB
            if (xsjtjj.JXDDBX == 0) xsjtjj.JXDDBX = 0;//就学地低保线
            EDU_ZZXS_02_A02_XSJTJJ xsjtjj_model = db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.FirstOrDefault(e => e.XSXXID == xsjtjj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjtjj_model != null)
            {
                xsjtjj_model.XSXXID = xsjtjj.XSXXID;//学生信息数据表EDU_ZZXS_01_01_XSXX
                xsjtjj_model.SCHOOLID = xsjtjj.SCHOOLID;//学校名EDU_ZZXX_01_01_ZZXX
                xsjtjj_model.SYRK = xsjtjj.SYRK;//赡养人口
                xsjtjj_model.LDLRK = xsjtjj.LDLRK;//劳动力人口
                xsjtjj_model.JTRJYSR = xsjtjj.JTRJYSR;//家庭人均月收入
                xsjtjj_model.JTLBM = xsjtjj.JTLBM;//家庭类别码EDU_JY_JTLB
                xsjtjj_model.KNYYM = xsjtjj.KNYYM;//困难原因码EDU_JY_KNYY
                xsjtjj_model.KNCDM = xsjtjj.KNCDM;//困难程度码EDU_JY_KNCD
                xsjtjj_model.SFDB = xsjtjj.SFDB;//是否低保EDU_JY_SFBZ
                xsjtjj_model.RXQHKLBM = xsjtjj.RXQHKLBM;//入学前户口类别码EDU_GB_HKLB
                xsjtjj_model.JXDDBX = xsjtjj.JXDDBX;//就学地低保线
                db_zzxs.Entry(xsjtjj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.Add(xsjtjj);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_02_A02_XSJTJJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_02_A02_XSJTJJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_02_A02_XSJTJJ xsjtjj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsjtjj(xsjtjj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtjj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtjj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_02_A02_XSJTJJ xsjtjj= db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjtjj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_02_A02_XSJTJJ xsjtjj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsjtjj(xsjtjj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtjj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtjj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_02_A02_XSJTJJ xsjtjj = db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.Remove(xsjtjj);
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
                    EDU_ZZXS_02_A02_XSJTJJ xsjtjj = db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.Remove(xsjtjj);
                    db_zzxs.SaveChanges();
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

        private static int Max_XSJTJJ_ID = 0;
        private static object syncIDLock = new object();
        //获取学生家庭经济情况数据表最大ID
        public int GetMax_XSJTJJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSJTJJ_ID == 0)
                {
                    EDU_ZZXS_02_A02_XSJTJJ xsjtjj = db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.FirstOrDefault();
                    if (xsjtjj == null)
                    {
                        Max_XSJTJJ_ID = 1;
                    }
                    else
                    {
                        //Max_XSJTJJ_ID = db_zzxs.EDU_ZZXS_02_A02_XSJTJJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSJTJJ_ID++;
                }
                maxId = Max_XSJTJJ_ID;
            }
            return maxId;
        }

    }
}
