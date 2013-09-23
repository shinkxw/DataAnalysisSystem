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
    public class XSJTCYController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXS_01_06_XSJTCY_DISP> model = db_zxxs.VIEW_EDU_ZXXS_01_06_XSJTCY_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsjtcy(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            xsjtcy.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjtcy(xsjtcy);
        }

        public void UpdXsjtcy(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            //设置默认值
            if (xsjtcy.ID == 0) xsjtcy.ID = 0;//编号
            if (xsjtcy.SCHOOLID == 0) xsjtcy.SCHOOLID = 0;//学校名   学校配置表
            if (xsjtcy.XSXXID == 0) xsjtcy.XSXXID = 0;//学生信息数据表   学生基本数据子类表
            if (string.IsNullOrEmpty(xsjtcy.GXM)) xsjtcy.GXM = "";//关系码   家庭关系代码
            if (string.IsNullOrEmpty(xsjtcy.CYXM)) xsjtcy.CYXM = "";//成员姓名
            if (string.IsNullOrEmpty(xsjtcy.CSNY)) xsjtcy.CSNY = "";//出生年月
            if (string.IsNullOrEmpty(xsjtcy.MZM)) xsjtcy.MZM = "";//民族码   中国各民族名称的罗马字母拼写法和代码
            if (string.IsNullOrEmpty(xsjtcy.GJDQM)) xsjtcy.GJDQM = "";//国籍/地区码   世界各国和地区名称代码
            if (string.IsNullOrEmpty(xsjtcy.JKZKM)) xsjtcy.JKZKM = "";//健康状况码   健康状况1位数字代码
            if (string.IsNullOrEmpty(xsjtcy.CYGZDW)) xsjtcy.CYGZDW = "";//成员工作单位
            if (string.IsNullOrEmpty(xsjtcy.CYM)) xsjtcy.CYM = "";//从业码   从业状况（个人身份）代码
            if (string.IsNullOrEmpty(xsjtcy.ZYJSZWM)) xsjtcy.ZYJSZWM = "";//专业技术职务码   专业技术职务代码
            if (string.IsNullOrEmpty(xsjtcy.ZWJBM)) xsjtcy.ZWJBM = "";//职务级别码   职务级别代码
            if (string.IsNullOrEmpty(xsjtcy.DH)) xsjtcy.DH = "";//电话
            if (string.IsNullOrEmpty(xsjtcy.DZXX)) xsjtcy.DZXX = "";//电子信箱
            if (string.IsNullOrEmpty(xsjtcy.SFJHR)) xsjtcy.SFJHR = "";//是否监护人   是否标志代码表
            if (string.IsNullOrEmpty(xsjtcy.XBM)) xsjtcy.XBM = "";//性别码   人的性别代码
            if (string.IsNullOrEmpty(xsjtcy.XLM)) xsjtcy.XLM = "";//学历码   学历代码
            if (string.IsNullOrEmpty(xsjtcy.LXDZ)) xsjtcy.LXDZ = "";//联系地址
            if (string.IsNullOrEmpty(xsjtcy.SJHM)) xsjtcy.SJHM = "";//手机号码
            EDU_ZXXS_01_06_XSJTCY xsjtcy_model = db_zxxs.EDU_ZXXS_01_06_XSJTCY.FirstOrDefault(e => e.ID == xsjtcy.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjtcy_model != null)
            {
                xsjtcy_model.ID = xsjtcy.ID;//编号
                xsjtcy_model.SCHOOLID = xsjtcy.SCHOOLID;//学校名   学校配置表
                xsjtcy_model.XSXXID = xsjtcy.XSXXID;//学生信息数据表   学生基本数据子类表
                xsjtcy_model.GXM = xsjtcy.GXM;//关系码   家庭关系代码
                xsjtcy_model.CYXM = xsjtcy.CYXM;//成员姓名
                xsjtcy_model.CSNY = xsjtcy.CSNY;//出生年月
                xsjtcy_model.MZM = xsjtcy.MZM;//民族码   中国各民族名称的罗马字母拼写法和代码
                xsjtcy_model.GJDQM = xsjtcy.GJDQM;//国籍/地区码   世界各国和地区名称代码
                xsjtcy_model.JKZKM = xsjtcy.JKZKM;//健康状况码   健康状况1位数字代码
                xsjtcy_model.CYGZDW = xsjtcy.CYGZDW;//成员工作单位
                xsjtcy_model.CYM = xsjtcy.CYM;//从业码   从业状况（个人身份）代码
                xsjtcy_model.ZYJSZWM = xsjtcy.ZYJSZWM;//专业技术职务码   专业技术职务代码
                xsjtcy_model.ZWJBM = xsjtcy.ZWJBM;//职务级别码   职务级别代码
                xsjtcy_model.DH = xsjtcy.DH;//电话
                xsjtcy_model.DZXX = xsjtcy.DZXX;//电子信箱
                xsjtcy_model.SFJHR = xsjtcy.SFJHR;//是否监护人   是否标志代码表
                xsjtcy_model.XBM = xsjtcy.XBM;//性别码   人的性别代码
                xsjtcy_model.XLM = xsjtcy.XLM;//学历码   学历代码
                xsjtcy_model.LXDZ = xsjtcy.LXDZ;//联系地址
                xsjtcy_model.SJHM = xsjtcy.SJHM;//手机号码
                db_zxxs.Entry(xsjtcy_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxxs.EDU_ZXXS_01_06_XSJTCY.Add(xsjtcy);
            }
            db_zxxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_JTGXLst = GBLDAL.GetGB_JTGXSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_CYZKLst = GBLDAL.GetGB_CYZKSelLst();
            ViewBag.GB_ZYJSZWLst = GBLDAL.GetGB_ZYJSZWSelLst();
            ViewBag.GB_ZWJBDMLst = GBLDAL.GetGB_ZWJBDMSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.GB_XLLst = GBLDAL.GetGB_XLSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXS_01_06_XSJTCY());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXS_01_06_XSJTCY());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsjtcy(xsjtcy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtcy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtcy);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXS_01_06_XSJTCY xsjtcy= db_zxxs.EDU_ZXXS_01_06_XSJTCY.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjtcy);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsjtcy(xsjtcy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtcy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtcy);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXS_01_06_XSJTCY xsjtcy = db_zxxs.EDU_ZXXS_01_06_XSJTCY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxs.EDU_ZXXS_01_06_XSJTCY.Remove(xsjtcy);
                db_zxxs.SaveChanges();
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
                    EDU_ZXXS_01_06_XSJTCY xsjtcy = db_zxxs.EDU_ZXXS_01_06_XSJTCY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxs.EDU_ZXXS_01_06_XSJTCY.Remove(xsjtcy);
                    db_zxxs.SaveChanges();
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

        private static int Max_XSJTCY_ID = 0;
        private static object syncIDLock = new object();
        //获取学生家庭成员数据表最大ID
        public int GetMax_XSJTCY_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSJTCY_ID == 0)
                {
                    EDU_ZXXS_01_06_XSJTCY xsjtcy = db_zxxs.EDU_ZXXS_01_06_XSJTCY.FirstOrDefault();
                    if (xsjtcy == null)
                    {
                        Max_XSJTCY_ID = 1;
                    }
                    else
                    {
                        //Max_XSJTCY_ID = db_zxxs.EDU_ZXXS_01_06_XSJTCY.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSJTCY_ID++;
                }
                maxId = Max_XSJTCY_ID;
            }
            return maxId;
        }

    }
}
