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
    public class JZGJBSJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP> model = db_zxjz.VIEW_EDU_ZXJZ_01_01_JZGJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJzgjbsj(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            jzgjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgjbsj(jzgjbsj);
        }

        public void UpdJzgjbsj(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            //设置默认值
            if (jzgjbsj.ID == 0) jzgjbsj.ID = 0;//编号
            if (jzgjbsj.SCHOOLID == 0) jzgjbsj.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(jzgjbsj.GH)) jzgjbsj.GH = "";//工号
            if (string.IsNullOrEmpty(jzgjbsj.XM)) jzgjbsj.XM = "";//姓名
            if (string.IsNullOrEmpty(jzgjbsj.YWXM)) jzgjbsj.YWXM = "";//英文姓名
            if (string.IsNullOrEmpty(jzgjbsj.XMPY)) jzgjbsj.XMPY = "";//姓名拼音
            if (string.IsNullOrEmpty(jzgjbsj.CYM)) jzgjbsj.CYM = "";//曾用名
            if (string.IsNullOrEmpty(jzgjbsj.XBM)) jzgjbsj.XBM = "";//性别码   人的性别代码
            if (string.IsNullOrEmpty(jzgjbsj.CSRQ)) jzgjbsj.CSRQ = "";//出生日期
            if (string.IsNullOrEmpty(jzgjbsj.CSDM)) jzgjbsj.CSDM = "";//出生地码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(jzgjbsj.JG)) jzgjbsj.JG = "";//籍贯
            if (string.IsNullOrEmpty(jzgjbsj.MZM)) jzgjbsj.MZM = "";//民族码   中国各民族名称的罗马字母拼写法和代码
            if (string.IsNullOrEmpty(jzgjbsj.GJDQM)) jzgjbsj.GJDQM = "";//国籍/地区码   世界各国和地区名称代码
            if (string.IsNullOrEmpty(jzgjbsj.SFZJLXM)) jzgjbsj.SFZJLXM = "";//身份证件类型码   身份证件类型代码表
            if (string.IsNullOrEmpty(jzgjbsj.SFZJH)) jzgjbsj.SFZJH = "";//身份证件号
            if (string.IsNullOrEmpty(jzgjbsj.HYZKM)) jzgjbsj.HYZKM = "";//婚姻状况码   婚姻状况代码
            if (string.IsNullOrEmpty(jzgjbsj.GATQWM)) jzgjbsj.GATQWM = "";//港澳台侨外码   港澳台侨外代码表
            if (string.IsNullOrEmpty(jzgjbsj.ZZMMM)) jzgjbsj.ZZMMM = "";//政治面貌码   政治面貌代码
            if (string.IsNullOrEmpty(jzgjbsj.JKZKM)) jzgjbsj.JKZKM = "";//健康状况码   健康状况1位数字代码
            if (string.IsNullOrEmpty(jzgjbsj.XYZJM)) jzgjbsj.XYZJM = "";//信仰宗教码   宗教信仰代码
            if (string.IsNullOrEmpty(jzgjbsj.XXM)) jzgjbsj.XXM = "";//血型码   血型代码表
            if (string.IsNullOrEmpty(jzgjbsj.ZP)) jzgjbsj.ZP = "";//照片
            if (string.IsNullOrEmpty(jzgjbsj.SFZJYXQ)) jzgjbsj.SFZJYXQ = "";//身份证件有效期
            if (string.IsNullOrEmpty(jzgjbsj.JGH)) jzgjbsj.JGH = "";//机构号
            if (string.IsNullOrEmpty(jzgjbsj.JTZZ)) jzgjbsj.JTZZ = "";//家庭住址
            if (string.IsNullOrEmpty(jzgjbsj.XZZ)) jzgjbsj.XZZ = "";//现住址
            if (string.IsNullOrEmpty(jzgjbsj.HKSZD)) jzgjbsj.HKSZD = "";//户口所在地
            if (string.IsNullOrEmpty(jzgjbsj.HKXZM)) jzgjbsj.HKXZM = "";//户口性质码   户口类别代码
            if (string.IsNullOrEmpty(jzgjbsj.XLM)) jzgjbsj.XLM = "";//学历码   学历代码
            if (string.IsNullOrEmpty(jzgjbsj.GZNY)) jzgjbsj.GZNY = "";//参加工作年月
            if (string.IsNullOrEmpty(jzgjbsj.LXNY)) jzgjbsj.LXNY = "";//来校年月
            if (string.IsNullOrEmpty(jzgjbsj.CJNY)) jzgjbsj.CJNY = "";//从教年月
            if (string.IsNullOrEmpty(jzgjbsj.BZLBM)) jzgjbsj.BZLBM = "";//编制类别码   中小学编制类别代码表
            if (string.IsNullOrEmpty(jzgjbsj.DABH)) jzgjbsj.DABH = "";//档案编号
            if (string.IsNullOrEmpty(jzgjbsj.DAWB)) jzgjbsj.DAWB = "";//档案文本
            if (string.IsNullOrEmpty(jzgjbsj.TXDZ)) jzgjbsj.TXDZ = "";//通信地址
            if (string.IsNullOrEmpty(jzgjbsj.LXDH)) jzgjbsj.LXDH = "";//联系电话
            if (string.IsNullOrEmpty(jzgjbsj.YZBM)) jzgjbsj.YZBM = "";//邮政编码
            if (string.IsNullOrEmpty(jzgjbsj.DZXX)) jzgjbsj.DZXX = "";//电子信箱
            if (string.IsNullOrEmpty(jzgjbsj.ZYDZ)) jzgjbsj.ZYDZ = "";//主页地址
            if (string.IsNullOrEmpty(jzgjbsj.TC)) jzgjbsj.TC = "";//特长
            if (string.IsNullOrEmpty(jzgjbsj.GWZYM)) jzgjbsj.GWZYM = "";//岗位职业码   岗位职业代码表
            if (string.IsNullOrEmpty(jzgjbsj.ZYRKXD)) jzgjbsj.ZYRKXD = "";//主要任课学段   任课学段代码表
            EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj_model = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.FirstOrDefault(e => e.ID == jzgjbsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgjbsj_model != null)
            {
                jzgjbsj_model.ID = jzgjbsj.ID;//编号
                jzgjbsj_model.SCHOOLID = jzgjbsj.SCHOOLID;//学校名   学校配置表
                jzgjbsj_model.GH = jzgjbsj.GH;//工号
                jzgjbsj_model.XM = jzgjbsj.XM;//姓名
                jzgjbsj_model.YWXM = jzgjbsj.YWXM;//英文姓名
                jzgjbsj_model.XMPY = jzgjbsj.XMPY;//姓名拼音
                jzgjbsj_model.CYM = jzgjbsj.CYM;//曾用名
                jzgjbsj_model.XBM = jzgjbsj.XBM;//性别码   人的性别代码
                jzgjbsj_model.CSRQ = jzgjbsj.CSRQ;//出生日期
                jzgjbsj_model.CSDM = jzgjbsj.CSDM;//出生地码   中华人民共和国行政区划代码
                jzgjbsj_model.JG = jzgjbsj.JG;//籍贯
                jzgjbsj_model.MZM = jzgjbsj.MZM;//民族码   中国各民族名称的罗马字母拼写法和代码
                jzgjbsj_model.GJDQM = jzgjbsj.GJDQM;//国籍/地区码   世界各国和地区名称代码
                jzgjbsj_model.SFZJLXM = jzgjbsj.SFZJLXM;//身份证件类型码   身份证件类型代码表
                jzgjbsj_model.SFZJH = jzgjbsj.SFZJH;//身份证件号
                jzgjbsj_model.HYZKM = jzgjbsj.HYZKM;//婚姻状况码   婚姻状况代码
                jzgjbsj_model.GATQWM = jzgjbsj.GATQWM;//港澳台侨外码   港澳台侨外代码表
                jzgjbsj_model.ZZMMM = jzgjbsj.ZZMMM;//政治面貌码   政治面貌代码
                jzgjbsj_model.JKZKM = jzgjbsj.JKZKM;//健康状况码   健康状况1位数字代码
                jzgjbsj_model.XYZJM = jzgjbsj.XYZJM;//信仰宗教码   宗教信仰代码
                jzgjbsj_model.XXM = jzgjbsj.XXM;//血型码   血型代码表
                jzgjbsj_model.ZP = jzgjbsj.ZP;//照片
                jzgjbsj_model.SFZJYXQ = jzgjbsj.SFZJYXQ;//身份证件有效期
                jzgjbsj_model.JGH = jzgjbsj.JGH;//机构号
                jzgjbsj_model.JTZZ = jzgjbsj.JTZZ;//家庭住址
                jzgjbsj_model.XZZ = jzgjbsj.XZZ;//现住址
                jzgjbsj_model.HKSZD = jzgjbsj.HKSZD;//户口所在地
                jzgjbsj_model.HKXZM = jzgjbsj.HKXZM;//户口性质码   户口类别代码
                jzgjbsj_model.XLM = jzgjbsj.XLM;//学历码   学历代码
                jzgjbsj_model.GZNY = jzgjbsj.GZNY;//参加工作年月
                jzgjbsj_model.LXNY = jzgjbsj.LXNY;//来校年月
                jzgjbsj_model.CJNY = jzgjbsj.CJNY;//从教年月
                jzgjbsj_model.BZLBM = jzgjbsj.BZLBM;//编制类别码   中小学编制类别代码表
                jzgjbsj_model.DABH = jzgjbsj.DABH;//档案编号
                jzgjbsj_model.DAWB = jzgjbsj.DAWB;//档案文本
                jzgjbsj_model.TXDZ = jzgjbsj.TXDZ;//通信地址
                jzgjbsj_model.LXDH = jzgjbsj.LXDH;//联系电话
                jzgjbsj_model.YZBM = jzgjbsj.YZBM;//邮政编码
                jzgjbsj_model.DZXX = jzgjbsj.DZXX;//电子信箱
                jzgjbsj_model.ZYDZ = jzgjbsj.ZYDZ;//主页地址
                jzgjbsj_model.TC = jzgjbsj.TC;//特长
                jzgjbsj_model.GWZYM = jzgjbsj.GWZYM;//岗位职业码   岗位职业代码表
                jzgjbsj_model.ZYRKXD = jzgjbsj.ZYRKXD;//主要任课学段   任课学段代码表
                db_zxjz.Entry(jzgjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Add(jzgjbsj);
            }
            db_zxjz.SaveChanges();
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
            ViewBag.GB_HKLBLst = GBLDAL.GetGB_HKLBSelLst();
            ViewBag.GB_XLLst = GBLDAL.GetGB_XLSelLst();
            ViewBag.JY_ZXXBZLBLst = JBLDAL.GetJY_ZXXBZLBSelLst();
            ViewBag.JY_GWZYLst = JBLDAL.GetJY_GWZYSelLst();
            ViewBag.JY_RKXDLst = JBLDAL.GetJY_RKXDSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJZ_01_01_JZGJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJZ_01_01_JZGJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj= db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Remove(jzgjbsj);
                db_zxjz.SaveChanges();
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
                    EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Remove(jzgjbsj);
                    db_zxjz.SaveChanges();
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

        private static int Max_JZGJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取教职工基本数据子类表最大ID
        public int GetMax_JZGJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGJBSJ_ID == 0)
                {
                    EDU_ZXJZ_01_01_JZGJBSJ jzgjbsj = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.FirstOrDefault();
                    if (jzgjbsj == null)
                    {
                        Max_JZGJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JZGJBSJ_ID = db_zxjz.EDU_ZXJZ_01_01_JZGJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGJBSJ_ID++;
                }
                maxId = Max_JZGJBSJ_ID;
            }
            return maxId;
        }

    }
}
