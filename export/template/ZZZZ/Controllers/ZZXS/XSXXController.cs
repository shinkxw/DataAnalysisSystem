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
    public class XSXXController : OAXTController
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
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//学校名EDU_ZZXX_01_01_ZZXX
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//学号
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//姓名
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//英文姓名
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//姓名拼音
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//曾用名
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//身份证件类型码EDU_JY_SFZJLX
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//身份证件号
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//性别码EDU_GB_RDXB
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//血型码EDU_JY_XX
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//出生日期
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//出生地码EDU_GB_ZHRMGHGXZQH
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//籍贯
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//民族码EDU_GB_ZGGMZMCDLMZMPXF
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//婚姻状况码EDU_GB_HYZZ
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//信仰宗教码EDU_GB_ZJXY
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//港澳台侨外码EDU_JY_GATQW
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//健康状况码EDU_GB_JKZKYWSZ
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//政治面貌码EDU_GB_ZZMM
            if (string.IsNullOrEmpty(xsxx.HKSZDXZQHM)) xsxx.HKSZDXZQHM = "";//户口所在地行政区划码EDU_GB_ZHRMGHGXZQH
            if (string.IsNullOrEmpty(xsxx.HKLBM)) xsxx.HKLBM = "";//户口类别码EDU_GB_HKLB
            if (string.IsNullOrEmpty(xsxx.SFSLDRK)) xsxx.SFSLDRK = "";//是否是流动人口EDU_JY_SFBZ
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//国籍/地区EDU_GB_SJGGHDQMC
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
                xsxx_model.SCHOOLID = xsxx.SCHOOLID;//学校名EDU_ZZXX_01_01_ZZXX
                xsxx_model.XH = xsxx.XH;//学号
                xsxx_model.XM = xsxx.XM;//姓名
                xsxx_model.YWXM = xsxx.YWXM;//英文姓名
                xsxx_model.XMPY = xsxx.XMPY;//姓名拼音
                xsxx_model.CYM = xsxx.CYM;//曾用名
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//身份证件类型码EDU_JY_SFZJLX
                xsxx_model.SFZJH = xsxx.SFZJH;//身份证件号
                xsxx_model.XBM = xsxx.XBM;//性别码EDU_GB_RDXB
                xsxx_model.XXM = xsxx.XXM;//血型码EDU_JY_XX
                xsxx_model.CSRQ = xsxx.CSRQ;//出生日期
                xsxx_model.CSDM = xsxx.CSDM;//出生地码EDU_GB_ZHRMGHGXZQH
                xsxx_model.JG = xsxx.JG;//籍贯
                xsxx_model.MZM = xsxx.MZM;//民族码EDU_GB_ZGGMZMCDLMZMPXF
                xsxx_model.HYZKM = xsxx.HYZKM;//婚姻状况码EDU_GB_HYZZ
                xsxx_model.XYZJM = xsxx.XYZJM;//信仰宗教码EDU_GB_ZJXY
                xsxx_model.GATQWM = xsxx.GATQWM;//港澳台侨外码EDU_JY_GATQW
                xsxx_model.JKZKM = xsxx.JKZKM;//健康状况码EDU_GB_JKZKYWSZ
                xsxx_model.ZZMMM = xsxx.ZZMMM;//政治面貌码EDU_GB_ZZMM
                xsxx_model.HKSZDXZQHM = xsxx.HKSZDXZQHM;//户口所在地行政区划码EDU_GB_ZHRMGHGXZQH
                xsxx_model.HKLBM = xsxx.HKLBM;//户口类别码EDU_GB_HKLB
                xsxx_model.SFSLDRK = xsxx.SFSLDRK;//是否是流动人口EDU_JY_SFBZ
                xsxx_model.GJDQM = xsxx.GJDQM;//国籍/地区EDU_GB_SJGGHDQMC
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
            //ViewBag.
            
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

        /*public String Delete(string id)
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
