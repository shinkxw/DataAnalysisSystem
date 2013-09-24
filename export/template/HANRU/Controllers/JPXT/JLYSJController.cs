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
    public class JLYSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_02_01_JLYSJ_DISP> model = db_jpxt.VIEW_EDU_JPXT_02_01_JLYSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlysj(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            jlysj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlysj(jlysj);
        }

        public void UpdJlysj(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            //设置默认值
            if (jlysj.ID == 0) jlysj.ID = 0;//编号
            if (jlysj.SCHOOLID == 0) jlysj.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(jlysj.XM)) jlysj.XM = "";//姓名
            if (string.IsNullOrEmpty(jlysj.XBM)) jlysj.XBM = "";//性别码   人的性别代码
            if (string.IsNullOrEmpty(jlysj.SFZH)) jlysj.SFZH = "";//身份证号
            if (string.IsNullOrEmpty(jlysj.JSZH)) jlysj.JSZH = "";//驾驶证号
            if (string.IsNullOrEmpty(jlysj.JLZH)) jlysj.JLZH = "";//教练证号
            if (string.IsNullOrEmpty(jlysj.XL)) jlysj.XL = "";//学历
            if (string.IsNullOrEmpty(jlysj.ZC)) jlysj.ZC = "";//职称
            if (string.IsNullOrEmpty(jlysj.LXDH)) jlysj.LXDH = "";//联系电话
            if (string.IsNullOrEmpty(jlysj.ZZ)) jlysj.ZZ = "";//住址
            if (string.IsNullOrEmpty(jlysj.JSDJ)) jlysj.JSDJ = "";//技术等级
            if (string.IsNullOrEmpty(jlysj.JTCHYXM)) jlysj.JTCHYXM = "";//家庭成员一姓名
            if (string.IsNullOrEmpty(jlysj.JTCYYGX)) jlysj.JTCYYGX = "";//家庭成员一关系
            if (string.IsNullOrEmpty(jlysj.JTCYYXBM)) jlysj.JTCYYXBM = "";//家庭成员一性别码
            if (string.IsNullOrEmpty(jlysj.JTCYYZZ)) jlysj.JTCYYZZ = "";//家庭成员一住址
            if (string.IsNullOrEmpty(jlysj.JTCYYLXDH)) jlysj.JTCYYLXDH = "";//家庭成员一联系电话
            if (string.IsNullOrEmpty(jlysj.JTCYYCSGZ)) jlysj.JTCYYCSGZ = "";//家庭成员一从事工作
            if (string.IsNullOrEmpty(jlysj.JTCYEXM)) jlysj.JTCYEXM = "";//家庭成员二姓名
            if (string.IsNullOrEmpty(jlysj.JTCYEGX)) jlysj.JTCYEGX = "";//家庭成员二关系
            if (string.IsNullOrEmpty(jlysj.JTCYEXBM)) jlysj.JTCYEXBM = "";//家庭成员二性别码
            if (string.IsNullOrEmpty(jlysj.JTCYEZZ)) jlysj.JTCYEZZ = "";//家庭成员二住址
            if (string.IsNullOrEmpty(jlysj.JTCYELXDH)) jlysj.JTCYELXDH = "";//家庭成员二联系电话
            if (string.IsNullOrEmpty(jlysj.JTCYECSGZ)) jlysj.JTCYECSGZ = "";//家庭成员二从事工作
            EDU_JPXT_02_01_JLYSJ jlysj_model = db_jpxt.EDU_JPXT_02_01_JLYSJ.FirstOrDefault(e => e.ID == jlysj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlysj_model != null)
            {
                jlysj_model.ID = jlysj.ID;//编号
                jlysj_model.SCHOOLID = jlysj.SCHOOLID;//学校ID   学校配置表
                jlysj_model.XM = jlysj.XM;//姓名
                jlysj_model.XBM = jlysj.XBM;//性别码   人的性别代码
                jlysj_model.SFZH = jlysj.SFZH;//身份证号
                jlysj_model.JSZH = jlysj.JSZH;//驾驶证号
                jlysj_model.JSZYXQ = jlysj.JSZYXQ;//驾驶证有效期
                jlysj_model.JLZH = jlysj.JLZH;//教练证号
                jlysj_model.JLZYXQ = jlysj.JLZYXQ;//教练证有效期
                jlysj_model.XL = jlysj.XL;//学历
                jlysj_model.ZC = jlysj.ZC;//职称
                jlysj_model.JXSJ = jlysj.JXSJ;//进校时间
                jlysj_model.LXDH = jlysj.LXDH;//联系电话
                jlysj_model.ZZ = jlysj.ZZ;//住址
                jlysj_model.JSDJ = jlysj.JSDJ;//技术等级
                jlysj_model.JTCHYXM = jlysj.JTCHYXM;//家庭成员一姓名
                jlysj_model.JTCYYGX = jlysj.JTCYYGX;//家庭成员一关系
                jlysj_model.JTCYYXBM = jlysj.JTCYYXBM;//家庭成员一性别码
                jlysj_model.JTCYYCSRQ = jlysj.JTCYYCSRQ;//家庭成员一出生日期
                jlysj_model.JTCYYZZ = jlysj.JTCYYZZ;//家庭成员一住址
                jlysj_model.JTCYYLXDH = jlysj.JTCYYLXDH;//家庭成员一联系电话
                jlysj_model.JTCYYCSGZ = jlysj.JTCYYCSGZ;//家庭成员一从事工作
                jlysj_model.JTCYEXM = jlysj.JTCYEXM;//家庭成员二姓名
                jlysj_model.JTCYEGX = jlysj.JTCYEGX;//家庭成员二关系
                jlysj_model.JTCYEXBM = jlysj.JTCYEXBM;//家庭成员二性别码
                jlysj_model.JTCYECSRQ = jlysj.JTCYECSRQ;//家庭成员二出生日期
                jlysj_model.JTCYEZZ = jlysj.JTCYEZZ;//家庭成员二住址
                jlysj_model.JTCYELXDH = jlysj.JTCYELXDH;//家庭成员二联系电话
                jlysj_model.JTCYECSGZ = jlysj.JTCYECSGZ;//家庭成员二从事工作
                db_jpxt.Entry(jlysj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_02_01_JLYSJ.Add(jlysj);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_02_01_JLYSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_02_01_JLYSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlysj(jlysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlysj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_02_01_JLYSJ jlysj= db_jpxt.EDU_JPXT_02_01_JLYSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlysj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlysj(jlysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlysj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_02_01_JLYSJ jlysj = db_jpxt.EDU_JPXT_02_01_JLYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_02_01_JLYSJ.Remove(jlysj);
                db_jpxt.SaveChanges();
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
                    EDU_JPXT_02_01_JLYSJ jlysj = db_jpxt.EDU_JPXT_02_01_JLYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_02_01_JLYSJ.Remove(jlysj);
                    db_jpxt.SaveChanges();
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

        private static int Max_JLYSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取教练员数据表最大ID
        public int GetMax_JLYSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLYSJ_ID == 0)
                {
                    EDU_JPXT_02_01_JLYSJ jlysj = db_jpxt.EDU_JPXT_02_01_JLYSJ.FirstOrDefault();
                    if (jlysj == null)
                    {
                        Max_JLYSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JLYSJ_ID = db_jpxt.EDU_JPXT_02_01_JLYSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLYSJ_ID++;
                }
                maxId = Max_JLYSJ_ID;
            }
            return maxId;
        }

    }
}
