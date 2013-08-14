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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class XSXXController : XGXTController
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
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//学校名学校ID
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//学号
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//姓名
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//英文姓名
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//姓名拼音
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//曾用名
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//性别码GB/T2261.1
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//出生日期如：20060412表示2006年4月12日
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//出生地码GB/T2260
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//籍贯
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//民族码GB/T3304 取用2位数字代码，如：01汉族，02蒙古族
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//国籍/地区码GB/T2659 采用三字母代码，如：CHN中国，USA美国
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//身份证件类型码JY/T1001SFZJLX身份证件类型代码
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//身份证件号
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//婚姻状况码中小学不用填写
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//港澳台侨外码
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//政治面貌码可采用简称，如：01中共党员，04民革会员 NULL
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//健康状况码采用1位数字代码 NULL
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//信仰宗教码
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//血型码
            if (string.IsNullOrEmpty(xsxx.ZP)) xsxx.ZP = "";//照片
            if (string.IsNullOrEmpty(xsxx.SFZJYXQ)) xsxx.SFZJYXQ = "";//身份证件有效期格式：YYYYMMDD-YYYYMMDD
            if (string.IsNullOrEmpty(xsxx.DSZYBZ)) xsxx.DSZYBZ = "";//独生子女标志解释/举例：1是独生子女0不是独生子女
            if (string.IsNullOrEmpty(xsxx.RXNY)) xsxx.RXNY = "";//入学年月
            if (string.IsNullOrEmpty(xsxx.NJ)) xsxx.NJ = "";//年级
            if (string.IsNullOrEmpty(xsxx.BH)) xsxx.BH = "";//班号
            if (string.IsNullOrEmpty(xsxx.XSLBM)) xsxx.XSLBM = "";//学生类别码值空间：JY/T1001XSLB学生类别代码 
            if (string.IsNullOrEmpty(xsxx.XZZ)) xsxx.XZZ = "";//现住址解释/举例：指本人的常住地址
            if (string.IsNullOrEmpty(xsxx.HKSZD)) xsxx.HKSZD = "";//户口所在地解释/举例：指户口所在地址
            if (string.IsNullOrEmpty(xsxx.HKXZM)) xsxx.HKXZM = "";//户口性质码值空间：GA324.1 解释/举例：指公安户籍部门确认的农业户口或非农业户口 
            if (string.IsNullOrEmpty(xsxx.SFLDRK)) xsxx.SFLDRK = "";//是否流动人口值空间：JY/T1001SFBZ是否标志代码 
            if (string.IsNullOrEmpty(xsxx.TC)) xsxx.TC = "";//特长特长 编号：ZXXS010108 解释/举例：指某一方面特殊的能力或技能 
            if (string.IsNullOrEmpty(xsxx.LXDH)) xsxx.LXDH = "";//联系电话本人的联系电话号码
            if (string.IsNullOrEmpty(xsxx.TXDZ)) xsxx.TXDZ = "";//通信地址
            if (string.IsNullOrEmpty(xsxx.YZBM)) xsxx.YZBM = "";//邮政编码
            if (string.IsNullOrEmpty(xsxx.DZXX)) xsxx.DZXX = "";//电子信箱学生在互联网上的电子邮件信箱地址
            if (string.IsNullOrEmpty(xsxx.ZYDZ)) xsxx.ZYDZ = "";//主页地址学生在互联网上的个人主页地址
            if (string.IsNullOrEmpty(xsxx.XJH)) xsxx.XJH = "";//学籍号全国唯一的学籍号
            EDU_ZXXS_01_01_XSXX xsxx_model = db_zxxs.EDU_ZXXS_01_01_XSXX.FirstOrDefault(e => e.ID == xsxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxx_model != null)
            {
                xsxx_model.ID = xsxx.ID;//编号
                xsxx_model.SCHOOLID = xsxx.SCHOOLID;//学校名学校ID
                xsxx_model.XH = xsxx.XH;//学号
                xsxx_model.XM = xsxx.XM;//姓名
                xsxx_model.YWXM = xsxx.YWXM;//英文姓名
                xsxx_model.XMPY = xsxx.XMPY;//姓名拼音
                xsxx_model.CYM = xsxx.CYM;//曾用名
                xsxx_model.XBM = xsxx.XBM;//性别码GB/T2261.1
                xsxx_model.CSRQ = xsxx.CSRQ;//出生日期如：20060412表示2006年4月12日
                xsxx_model.CSDM = xsxx.CSDM;//出生地码GB/T2260
                xsxx_model.JG = xsxx.JG;//籍贯
                xsxx_model.MZM = xsxx.MZM;//民族码GB/T3304 取用2位数字代码，如：01汉族，02蒙古族
                xsxx_model.GJDQM = xsxx.GJDQM;//国籍/地区码GB/T2659 采用三字母代码，如：CHN中国，USA美国
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//身份证件类型码JY/T1001SFZJLX身份证件类型代码
                xsxx_model.SFZJH = xsxx.SFZJH;//身份证件号
                xsxx_model.HYZKM = xsxx.HYZKM;//婚姻状况码中小学不用填写
                xsxx_model.GATQWM = xsxx.GATQWM;//港澳台侨外码
                xsxx_model.ZZMMM = xsxx.ZZMMM;//政治面貌码可采用简称，如：01中共党员，04民革会员 NULL
                xsxx_model.JKZKM = xsxx.JKZKM;//健康状况码采用1位数字代码 NULL
                xsxx_model.XYZJM = xsxx.XYZJM;//信仰宗教码
                xsxx_model.XXM = xsxx.XXM;//血型码
                xsxx_model.ZP = xsxx.ZP;//照片
                xsxx_model.SFZJYXQ = xsxx.SFZJYXQ;//身份证件有效期格式：YYYYMMDD-YYYYMMDD
                xsxx_model.DSZYBZ = xsxx.DSZYBZ;//独生子女标志解释/举例：1是独生子女0不是独生子女
                xsxx_model.RXNY = xsxx.RXNY;//入学年月
                xsxx_model.NJ = xsxx.NJ;//年级
                xsxx_model.BH = xsxx.BH;//班号
                xsxx_model.XSLBM = xsxx.XSLBM;//学生类别码值空间：JY/T1001XSLB学生类别代码 
                xsxx_model.XZZ = xsxx.XZZ;//现住址解释/举例：指本人的常住地址
                xsxx_model.HKSZD = xsxx.HKSZD;//户口所在地解释/举例：指户口所在地址
                xsxx_model.HKXZM = xsxx.HKXZM;//户口性质码值空间：GA324.1 解释/举例：指公安户籍部门确认的农业户口或非农业户口 
                xsxx_model.SFLDRK = xsxx.SFLDRK;//是否流动人口值空间：JY/T1001SFBZ是否标志代码 
                xsxx_model.TC = xsxx.TC;//特长特长 编号：ZXXS010108 解释/举例：指某一方面特殊的能力或技能 
                xsxx_model.LXDH = xsxx.LXDH;//联系电话本人的联系电话号码
                xsxx_model.TXDZ = xsxx.TXDZ;//通信地址
                xsxx_model.YZBM = xsxx.YZBM;//邮政编码
                xsxx_model.DZXX = xsxx.DZXX;//电子信箱学生在互联网上的电子邮件信箱地址
                xsxx_model.ZYDZ = xsxx.ZYDZ;//主页地址学生在互联网上的个人主页地址
                xsxx_model.XJH = xsxx.XJH;//学籍号全国唯一的学籍号
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
            //ViewBag.
            
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
