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
    public class JLCSJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_01_JLCSJ_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_01_JLCSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcsj(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            jlcsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcsj(jlcsj);
        }

        public void UpdJlcsj(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            //设置默认值
            if (jlcsj.ID == 0) jlcsj.ID = 0;//编号
            if (jlcsj.SCHOOLID == 0) jlcsj.SCHOOLID = 0;//学校ID   学校配置表
            if (jlcsj.GMSJ == 0) jlcsj.GMSJ = 0;//购买时间
            if (jlcsj.CLXHID == 0) jlcsj.CLXHID = 0;//车辆型号ID   车辆型号数据表
            if (string.IsNullOrEmpty(jlcsj.PP)) jlcsj.PP = "";//品牌
            if (string.IsNullOrEmpty(jlcsj.CPH)) jlcsj.CPH = "";//车牌号
            if (string.IsNullOrEmpty(jlcsj.FDJH)) jlcsj.FDJH = "";//发动机号
            if (string.IsNullOrEmpty(jlcsj.CJH)) jlcsj.CJH = "";//车架号
            if (jlcsj.BFSJ == 0) jlcsj.BFSJ = 0;//报废时间
            if (jlcsj.EBRQ == 0) jlcsj.EBRQ = 0;//二保日期
            if (jlcsj.DQZT == 0) jlcsj.DQZT = 0;//当前状态
            if (jlcsj.DQJLYID == 0) jlcsj.DQJLYID = 0;//当前教练员ID   教练员数据表
            if (string.IsNullOrEmpty(jlcsj.BZ)) jlcsj.BZ = "";//备注
            EDU_JPXT_01_01_JLCSJ jlcsj_model = db_jpxt.EDU_JPXT_01_01_JLCSJ.FirstOrDefault(e => e.ID == jlcsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcsj_model != null)
            {
                jlcsj_model.ID = jlcsj.ID;//编号
                jlcsj_model.SCHOOLID = jlcsj.SCHOOLID;//学校ID   学校配置表
                jlcsj_model.GMSJ = jlcsj.GMSJ;//购买时间
                jlcsj_model.CLXHID = jlcsj.CLXHID;//车辆型号ID   车辆型号数据表
                jlcsj_model.PP = jlcsj.PP;//品牌
                jlcsj_model.CPH = jlcsj.CPH;//车牌号
                jlcsj_model.FDJH = jlcsj.FDJH;//发动机号
                jlcsj_model.CJH = jlcsj.CJH;//车架号
                jlcsj_model.BFSJ = jlcsj.BFSJ;//报废时间
                jlcsj_model.EBRQ = jlcsj.EBRQ;//二保日期
                jlcsj_model.DQZT = jlcsj.DQZT;//当前状态
                jlcsj_model.DQJLYID = jlcsj.DQJLYID;//当前教练员ID   教练员数据表
                jlcsj_model.BZ = jlcsj.BZ;//备注
                db_jpxt.Entry(jlcsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_01_01_JLCSJ.Add(jlcsj);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_01_JLCSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_01_JLCSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcsj(jlcsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_01_JLCSJ jlcsj= db_jpxt.EDU_JPXT_01_01_JLCSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcsj(jlcsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_JPXT_01_01_JLCSJ jlcsj = db_jpxt.EDU_JPXT_01_01_JLCSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_01_JLCSJ.Remove(jlcsj);
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
                    EDU_JPXT_01_01_JLCSJ jlcsj = db_jpxt.EDU_JPXT_01_01_JLCSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_01_JLCSJ.Remove(jlcsj);
                    db_jpxt.SaveChanges();
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

        private static int Max_JLCSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取教练车数据表最大ID
        public int GetMax_JLCSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCSJ_ID == 0)
                {
                    EDU_JPXT_01_01_JLCSJ jlcsj = db_jpxt.EDU_JPXT_01_01_JLCSJ.FirstOrDefault();
                    if (jlcsj == null)
                    {
                        Max_JLCSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JLCSJ_ID = db_jpxt.EDU_JPXT_01_01_JLCSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCSJ_ID++;
                }
                maxId = Max_JLCSJ_ID;
            }
            return maxId;
        }

    }
}
