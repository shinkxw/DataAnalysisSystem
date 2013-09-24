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
    public class XSXXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_01_01_XSXX_DISP> model = db_zzxs.VIEW_EDU_ZZXS_01_01_XSXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsxx(EDU_ZZXS_01_01_XSXX xsxx)
        {
            xsxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsxx(xsxx);
        }

        public void UpdXsxx(EDU_ZZXS_01_01_XSXX xsxx)
        {
            //设置默认值
            if (xsxx.ID == 0) xsxx.ID = 0;//编号
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//学号
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//姓名
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//英文姓名
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//姓名拼音
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//曾用名
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//身份证件类型码   身份证件类型代码表
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//身份证件号
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//性别码   人的性别代码
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//血型码   血型代码表
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//出生日期
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//出生地码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//籍贯
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//民族码   中国各民族名称的罗马字母拼写法和代码
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//婚姻状况码   婚姻状况代码
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//信仰宗教码   宗教信仰代码
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//港澳台侨外码   港澳台侨外代码表
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//健康状况码   健康状况1位数字代码
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//政治面貌码   政治面貌代码
            if (string.IsNullOrEmpty(xsxx.HKSZDXZQHM)) xsxx.HKSZDXZQHM = "";//户口所在地行政区划码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(xsxx.HKLBM)) xsxx.HKLBM = "";//户口类别码   户口类别代码
            if (string.IsNullOrEmpty(xsxx.SFSLDRK)) xsxx.SFSLDRK = "";//是否是流动人口   是否标志代码表
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//国籍/地区   世界各国和地区名称代码
            if (string.IsNullOrEmpty(xsxx.TC)) xsxx.TC = "";//特长
            if (string.IsNullOrEmpty(xsxx.XSLXDH)) xsxx.XSLXDH = "";//学生联系电话
            if (string.IsNullOrEmpty(xsxx.WLDZ)) xsxx.WLDZ = "";//网络地址
            if (string.IsNullOrEmpty(xsxx.JSTXH)) xsxx.JSTXH = "";//即时通讯号
            if (string.IsNullOrEmpty(xsxx.DZXX)) xsxx.DZXX = "";//电子信箱
            if (string.IsNullOrEmpty(xsxx.ZP)) xsxx.ZP = "";//照片(路径)
            EDU_ZZXS_01_01_XSXX xsxx_model = db_zzxs.EDU_ZZXS_01_01_XSXX.FirstOrDefault(e => e.ID == xsxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxx_model != null)
            {
                xsxx_model.ID = xsxx.ID;//编号
                xsxx_model.SCHOOLID = xsxx.SCHOOLID;//学校名   学校配置表
                xsxx_model.XH = xsxx.XH;//学号
                xsxx_model.XM = xsxx.XM;//姓名
                xsxx_model.YWXM = xsxx.YWXM;//英文姓名
                xsxx_model.XMPY = xsxx.XMPY;//姓名拼音
                xsxx_model.CYM = xsxx.CYM;//曾用名
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//身份证件类型码   身份证件类型代码表
                xsxx_model.SFZJH = xsxx.SFZJH;//身份证件号
                xsxx_model.XBM = xsxx.XBM;//性别码   人的性别代码
                xsxx_model.XXM = xsxx.XXM;//血型码   血型代码表
                xsxx_model.CSRQ = xsxx.CSRQ;//出生日期
                xsxx_model.CSDM = xsxx.CSDM;//出生地码   中华人民共和国行政区划代码
                xsxx_model.JG = xsxx.JG;//籍贯
                xsxx_model.MZM = xsxx.MZM;//民族码   中国各民族名称的罗马字母拼写法和代码
                xsxx_model.HYZKM = xsxx.HYZKM;//婚姻状况码   婚姻状况代码
                xsxx_model.XYZJM = xsxx.XYZJM;//信仰宗教码   宗教信仰代码
                xsxx_model.GATQWM = xsxx.GATQWM;//港澳台侨外码   港澳台侨外代码表
                xsxx_model.JKZKM = xsxx.JKZKM;//健康状况码   健康状况1位数字代码
                xsxx_model.ZZMMM = xsxx.ZZMMM;//政治面貌码   政治面貌代码
                xsxx_model.HKSZDXZQHM = xsxx.HKSZDXZQHM;//户口所在地行政区划码   中华人民共和国行政区划代码
                xsxx_model.HKLBM = xsxx.HKLBM;//户口类别码   户口类别代码
                xsxx_model.SFSLDRK = xsxx.SFSLDRK;//是否是流动人口   是否标志代码表
                xsxx_model.GJDQM = xsxx.GJDQM;//国籍/地区   世界各国和地区名称代码
                xsxx_model.TC = xsxx.TC;//特长
                xsxx_model.XSLXDH = xsxx.XSLXDH;//学生联系电话
                xsxx_model.WLDZ = xsxx.WLDZ;//网络地址
                xsxx_model.JSTXH = xsxx.JSTXH;//即时通讯号
                xsxx_model.DZXX = xsxx.DZXX;//电子信箱
                xsxx_model.ZP = xsxx.ZP;//照片(路径)
                db_zzxs.Entry(xsxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxs.EDU_ZZXS_01_01_XSXX.Add(xsxx);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFZJLXLst = JBLDAL.GetJY_SFZJLXSelLst();
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.JY_XXLst = JBLDAL.GetJY_XXSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.GB_HYZZLst = GBLDAL.GetGB_HYZZSelLst();
            ViewBag.GB_ZJXYLst = GBLDAL.GetGB_ZJXYSelLst();
            ViewBag.JY_GATQWLst = JBLDAL.GetJY_GATQWSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_ZZMMLst = GBLDAL.GetGB_ZZMMSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_HKLBLst = GBLDAL.GetGB_HKLBSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_01_01_XSXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_01_01_XSXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_01_01_XSXX xsxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsxx(xsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_01_01_XSXX xsxx= db_zzxs.EDU_ZZXS_01_01_XSXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_01_01_XSXX xsxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsxx(xsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_01_01_XSXX.Remove(xsxx);
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
                    EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_01_01_XSXX.Remove(xsxx);
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

        private static int Max_XSXX_ID = 0;
        private static object syncIDLock = new object();
        //获取学生信息数据表最大ID
        public int GetMax_XSXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSXX_ID == 0)
                {
                    EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.FirstOrDefault();
                    if (xsxx == null)
                    {
                        Max_XSXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSXX_ID = db_zzxs.EDU_ZZXS_01_01_XSXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSXX_ID++;
                }
                maxId = Max_XSXX_ID;
            }
            return maxId;
        }

    }
}
