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
    public class JLCBGLLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_02_JLCBGLL_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_02_JLCBGLL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcbgll(EDU_JPXT_01_02_JLCBGLL jlcbgll)
        {
            jlcbgll.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcbgll(jlcbgll);
        }

        public void UpdJlcbgll(EDU_JPXT_01_02_JLCBGLL jlcbgll)
        {
            //设置默认值
            if (jlcbgll.ID == 0) jlcbgll.ID = 0;//编号
            if (jlcbgll.SCHOOLID == 0) jlcbgll.SCHOOLID = 0;//学校ID   学校配置表
            if (jlcbgll.JLCID == 0) jlcbgll.JLCID = 0;//教练车ID   教练车数据表
            if (jlcbgll.JLYID == 0) jlcbgll.JLYID = 0;//教练员ID   教练员数据表
            if (jlcbgll.BGKSSJ == 0) jlcbgll.BGKSSJ = 0;//保管开始时间
            if (jlcbgll.BGJSSJ == 0) jlcbgll.BGJSSJ = 0;//保管结束时间
            if (string.IsNullOrEmpty(jlcbgll.BGZT)) jlcbgll.BGZT = "";//保管状态
            EDU_JPXT_01_02_JLCBGLL jlcbgll_model = db_jpxt.EDU_JPXT_01_02_JLCBGLL.FirstOrDefault(e => e.ID == jlcbgll.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcbgll_model != null)
            {
                jlcbgll_model.ID = jlcbgll.ID;//编号
                jlcbgll_model.SCHOOLID = jlcbgll.SCHOOLID;//学校ID   学校配置表
                jlcbgll_model.JLCID = jlcbgll.JLCID;//教练车ID   教练车数据表
                jlcbgll_model.JLYID = jlcbgll.JLYID;//教练员ID   教练员数据表
                jlcbgll_model.BGKSSJ = jlcbgll.BGKSSJ;//保管开始时间
                jlcbgll_model.BGJSSJ = jlcbgll.BGJSSJ;//保管结束时间
                jlcbgll_model.BGZT = jlcbgll.BGZT;//保管状态
                db_jpxt.Entry(jlcbgll_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_01_02_JLCBGLL.Add(jlcbgll);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_02_JLCBGLL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_02_JLCBGLL());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_02_JLCBGLL jlcbgll)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcbgll(jlcbgll);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcbgll);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcbgll);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_02_JLCBGLL jlcbgll= db_jpxt.EDU_JPXT_01_02_JLCBGLL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcbgll);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_02_JLCBGLL jlcbgll)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcbgll(jlcbgll);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcbgll);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcbgll);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_02_JLCBGLL jlcbgll = db_jpxt.EDU_JPXT_01_02_JLCBGLL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_02_JLCBGLL.Remove(jlcbgll);
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
                    EDU_JPXT_01_02_JLCBGLL jlcbgll = db_jpxt.EDU_JPXT_01_02_JLCBGLL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_02_JLCBGLL.Remove(jlcbgll);
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

        private static int Max_JLCBGLL_ID = 0;
        private static object syncIDLock = new object();
        //获取教练车保管履历表最大ID
        public int GetMax_JLCBGLL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCBGLL_ID == 0)
                {
                    EDU_JPXT_01_02_JLCBGLL jlcbgll = db_jpxt.EDU_JPXT_01_02_JLCBGLL.FirstOrDefault();
                    if (jlcbgll == null)
                    {
                        Max_JLCBGLL_ID = 1;
                    }
                    else
                    {
                        //Max_JLCBGLL_ID = db_jpxt.EDU_JPXT_01_02_JLCBGLL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCBGLL_ID++;
                }
                maxId = Max_JLCBGLL_ID;
            }
            return maxId;
        }

    }
}
