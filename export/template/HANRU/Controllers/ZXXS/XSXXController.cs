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
    public class XSXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXS_01_01_XSXX_DISP> model = db_zxxs.VIEW_EDU_ZXXS_01_01_XSXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsxx(EDU_ZXXS_01_01_XSXX xsxx)
        {
            xsxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsxx(xsxx);
        }

        public void UpdXsxx(EDU_ZXXS_01_01_XSXX xsxx)
        {
            //设置默认值
            if (xsxx.ID == 0) xsxx.ID = 0;//编号
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//学号
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//姓名
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//英文姓名
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//姓名拼音
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//曾用名
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//性别码   人的性别代码
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//出生日期
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//出生地码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//籍贯
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//民族码   中国各民族名称的罗马字母拼写法和代码
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//国籍/地区码   世界各国和地区名称代码
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//身份证件类型码   身份证件类型代码表
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//身份证件号
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//婚姻状况码   婚姻状况代码
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//港澳台侨外码   港澳台侨外代码表
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//政治面貌码   政治面貌代码
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//健康状况码   健康状况1位数字代码
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//信仰宗教码   宗教信仰代码
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//血型码   血型代码表
            if (string.IsNullOrEmpty(xsxx.ZP)) xsxx.ZP = "";//照片
            if (string.IsNullOrEmpty(xsxx.SFZJYXQ)) xsxx.SFZJYXQ = "";//身份证件有效期
            if (string.IsNullOrEmpty(xsxx.DSZYBZ)) xsxx.DSZYBZ = "";//独生子女标志   是否标志代码表
            if (string.IsNullOrEmpty(xsxx.RXNY)) xsxx.RXNY = "";//入学年月
            if (string.IsNullOrEmpty(xsxx.NJ)) xsxx.NJ = "";//年级   年级数据类表
            if (string.IsNullOrEmpty(xsxx.BH)) xsxx.BH = "";//班号   班级数据类表
            if (string.IsNullOrEmpty(xsxx.XSLBM)) xsxx.XSLBM = "";//学生类别码   学生类别代码表
            if (string.IsNullOrEmpty(xsxx.XZZ)) xsxx.XZZ = "";//现住址
            if (string.IsNullOrEmpty(xsxx.HKSZD)) xsxx.HKSZD = "";//户口所在地
            if (string.IsNullOrEmpty(xsxx.HKXZM)) xsxx.HKXZM = "";//户口性质码   户口类别代码
            if (string.IsNullOrEmpty(xsxx.SFLDRK)) xsxx.SFLDRK = "";//是否流动人口   是否标志代码表
            if (string.IsNullOrEmpty(xsxx.TC)) xsxx.TC = "";//特长
            if (string.IsNullOrEmpty(xsxx.LXDH)) xsxx.LXDH = "";//联系电话
            if (string.IsNullOrEmpty(xsxx.TXDZ)) xsxx.TXDZ = "";//通信地址
            if (string.IsNullOrEmpty(xsxx.YZBM)) xsxx.YZBM = "";//邮政编码
            if (string.IsNullOrEmpty(xsxx.DZXX)) xsxx.DZXX = "";//电子信箱
            if (string.IsNullOrEmpty(xsxx.ZYDZ)) xsxx.ZYDZ = "";//主页地址
            if (string.IsNullOrEmpty(xsxx.XJH)) xsxx.XJH = "";//学籍号
            EDU_ZXXS_01_01_XSXX xsxx_model = db_zxxs.EDU_ZXXS_01_01_XSXX.FirstOrDefault(e => e.ID == xsxx.ID
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
                xsxx_model.XBM = xsxx.XBM;//性别码   人的性别代码
                xsxx_model.CSRQ = xsxx.CSRQ;//出生日期
                xsxx_model.CSDM = xsxx.CSDM;//出生地码   中华人民共和国行政区划代码
                xsxx_model.JG = xsxx.JG;//籍贯
                xsxx_model.MZM = xsxx.MZM;//民族码   中国各民族名称的罗马字母拼写法和代码
                xsxx_model.GJDQM = xsxx.GJDQM;//国籍/地区码   世界各国和地区名称代码
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//身份证件类型码   身份证件类型代码表
                xsxx_model.SFZJH = xsxx.SFZJH;//身份证件号
                xsxx_model.HYZKM = xsxx.HYZKM;//婚姻状况码   婚姻状况代码
                xsxx_model.GATQWM = xsxx.GATQWM;//港澳台侨外码   港澳台侨外代码表
                xsxx_model.ZZMMM = xsxx.ZZMMM;//政治面貌码   政治面貌代码
                xsxx_model.JKZKM = xsxx.JKZKM;//健康状况码   健康状况1位数字代码
                xsxx_model.XYZJM = xsxx.XYZJM;//信仰宗教码   宗教信仰代码
                xsxx_model.XXM = xsxx.XXM;//血型码   血型代码表
                xsxx_model.ZP = xsxx.ZP;//照片
                xsxx_model.SFZJYXQ = xsxx.SFZJYXQ;//身份证件有效期
                xsxx_model.DSZYBZ = xsxx.DSZYBZ;//独生子女标志   是否标志代码表
                xsxx_model.RXNY = xsxx.RXNY;//入学年月
                xsxx_model.NJ = xsxx.NJ;//年级   年级数据类表
                xsxx_model.BH = xsxx.BH;//班号   班级数据类表
                xsxx_model.XSLBM = xsxx.XSLBM;//学生类别码   学生类别代码表
                xsxx_model.XZZ = xsxx.XZZ;//现住址
                xsxx_model.HKSZD = xsxx.HKSZD;//户口所在地
                xsxx_model.HKXZM = xsxx.HKXZM;//户口性质码   户口类别代码
                xsxx_model.SFLDRK = xsxx.SFLDRK;//是否流动人口   是否标志代码表
                xsxx_model.TC = xsxx.TC;//特长
                xsxx_model.LXDH = xsxx.LXDH;//联系电话
                xsxx_model.TXDZ = xsxx.TXDZ;//通信地址
                xsxx_model.YZBM = xsxx.YZBM;//邮政编码
                xsxx_model.DZXX = xsxx.DZXX;//电子信箱
                xsxx_model.ZYDZ = xsxx.ZYDZ;//主页地址
                xsxx_model.XJH = xsxx.XJH;//学籍号
                db_zxxs.Entry(xsxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxxs.EDU_ZXXS_01_01_XSXX.Add(xsxx);
            }
            db_zxxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            ViewBag.JY_SFZJLXLst = JBLDAL.GetJY_SFZJLXSelLst();
            ViewBag.GB_HYZZLst = GBLDAL.GetGB_HYZZSelLst();
            ViewBag.JY_GATQWLst = JBLDAL.GetJY_GATQWSelLst();
            ViewBag.GB_ZZMMLst = GBLDAL.GetGB_ZZMMSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_ZJXYLst = GBLDAL.GetGB_ZJXYSelLst();
            ViewBag.JY_XXLst = JBLDAL.GetJY_XXSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_XSLBLst = JBLDAL.GetJY_XSLBSelLst();
            ViewBag.GB_HKLBLst = GBLDAL.GetGB_HKLBSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXS_01_01_XSXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXS_01_01_XSXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXS_01_01_XSXX xsxx)
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
            
            EDU_ZXXS_01_01_XSXX xsxx= db_zxxs.EDU_ZXXS_01_01_XSXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXS_01_01_XSXX xsxx)
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

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXS_01_01_XSXX xsxx = db_zxxs.EDU_ZXXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxs.EDU_ZXXS_01_01_XSXX.Remove(xsxx);
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
                    EDU_ZXXS_01_01_XSXX xsxx = db_zxxs.EDU_ZXXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxs.EDU_ZXXS_01_01_XSXX.Remove(xsxx);
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

        private static int Max_XSXX_ID = 0;
        private static object syncIDLock = new object();
        //获取学生基本数据子类表最大ID
        public int GetMax_XSXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSXX_ID == 0)
                {
                    EDU_ZXXS_01_01_XSXX xsxx = db_zxxs.EDU_ZXXS_01_01_XSXX.FirstOrDefault();
                    if (xsxx == null)
                    {
                        Max_XSXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSXX_ID = db_zxxs.EDU_ZXXS_01_01_XSXX.Max(e => e.ID) + 1;
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
