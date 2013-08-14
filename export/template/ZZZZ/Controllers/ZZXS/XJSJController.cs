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
    public class XJSJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_07_01_XJSJ_DISP> model = db_zzxs.VIEW_EDU_ZZXS_07_01_XJSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXjsj(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            xjsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXjsj(xjsj);
        }

        public void UpdXjsj(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            //设置默认值
            if (xjsj.XSXXID == 0) xjsj.XSXXID = 0;//学生信息数据表EDU_ZZXS_01_01_XSXX
            if (xjsj.SCHOOLID == 0) xjsj.SCHOOLID = 0;//学校名EDU_ZZXX_01_01_ZZXX
            if (xjsj.ZYXXID == 0) xjsj.ZYXXID = 0;//专业基本信息EDU_ZZJX_01_01_ZYXX
            if (string.IsNullOrEmpty(xjsj.ZZBJID)) xjsj.ZZBJID = "";//学校班级数据表EDU_ZZJX_02_02_ZZBJ
            if (string.IsNullOrEmpty(xjsj.ZZNJID)) xjsj.ZZNJID = "";//学校年级数据表EDU_ZZJX_02_01_ZZNJ
            if (string.IsNullOrEmpty(xjsj.RXNY)) xjsj.RXNY = "";//入学年月
            if (string.IsNullOrEmpty(xjsj.XSLBM)) xjsj.XSLBM = "";//学生类别码EDU_JY_XSLB
            if (string.IsNullOrEmpty(xjsj.XZ)) xjsj.XZ = "";//学制
            if (string.IsNullOrEmpty(xjsj.ZYM)) xjsj.ZYM = "";//专业码
            if (string.IsNullOrEmpty(xjsj.XSDQZTM)) xjsj.XSDQZTM = "";//学生当前状态码EDU_JY_XSDQZT
            EDU_ZZXS_07_01_XJSJ xjsj_model = db_zzxs.EDU_ZZXS_07_01_XJSJ.FirstOrDefault(e => e.XSXXID == xjsj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xjsj_model != null)
            {
                xjsj_model.XSXXID = xjsj.XSXXID;//学生信息数据表EDU_ZZXS_01_01_XSXX
                xjsj_model.SCHOOLID = xjsj.SCHOOLID;//学校名EDU_ZZXX_01_01_ZZXX
                xjsj_model.ZYXXID = xjsj.ZYXXID;//专业基本信息EDU_ZZJX_01_01_ZYXX
                xjsj_model.ZZBJID = xjsj.ZZBJID;//学校班级数据表EDU_ZZJX_02_02_ZZBJ
                xjsj_model.ZZNJID = xjsj.ZZNJID;//学校年级数据表EDU_ZZJX_02_01_ZZNJ
                xjsj_model.RXNY = xjsj.RXNY;//入学年月
                xjsj_model.XSLBM = xjsj.XSLBM;//学生类别码EDU_JY_XSLB
                xjsj_model.XZ = xjsj.XZ;//学制
                xjsj_model.ZYM = xjsj.ZYM;//专业码
                xjsj_model.XSDQZTM = xjsj.XSDQZTM;//学生当前状态码EDU_JY_XSDQZT
                db_zzxs.Entry(xjsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_07_01_XJSJ.Add(xjsj);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_07_01_XJSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_07_01_XJSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXjsj(xjsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_07_01_XJSJ xjsj= db_zzxs.EDU_ZZXS_07_01_XJSJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xjsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXjsj(xjsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_07_01_XJSJ xjsj = db_zzxs.EDU_ZZXS_07_01_XJSJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_07_01_XJSJ.Remove(xjsj);
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
                    EDU_ZZXS_07_01_XJSJ xjsj = db_zzxs.EDU_ZZXS_07_01_XJSJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_07_01_XJSJ.Remove(xjsj);
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

        private static int Max_XJSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取学籍基本数据表最大ID
        public int GetMax_XJSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XJSJ_ID == 0)
                {
                    EDU_ZZXS_07_01_XJSJ xjsj = db_zzxs.EDU_ZZXS_07_01_XJSJ.FirstOrDefault();
                    if (xjsj == null)
                    {
                        Max_XJSJ_ID = 1;
                    }
                    else
                    {
                        //Max_XJSJ_ID = db_zzxs.EDU_ZZXS_07_01_XJSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XJSJ_ID++;
                }
                maxId = Max_XJSJ_ID;
            }
            return maxId;
        }

    }
}
