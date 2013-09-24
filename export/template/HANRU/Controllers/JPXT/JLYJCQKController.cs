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
    public class JLYJCQKController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_02_04_JLYJCQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_02_04_JLYJCQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlyjcqk(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            jlyjcqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlyjcqk(jlyjcqk);
        }

        public void UpdJlyjcqk(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            //设置默认值
            if (jlyjcqk.ID == 0) jlyjcqk.ID = 0;//编号
            if (jlyjcqk.SCHOOLID == 0) jlyjcqk.SCHOOLID = 0;//学校ID   学校配置表
            if (jlyjcqk.JLYID == 0) jlyjcqk.JLYID = 0;//教练员ID   教练员数据表
            if (string.IsNullOrEmpty(jlyjcqk.JCQK)) jlyjcqk.JCQK = "";//奖惩情况
            if (string.IsNullOrEmpty(jlyjcqk.BZ)) jlyjcqk.BZ = "";//备注
            EDU_JPXT_02_04_JLYJCQK jlyjcqk_model = db_jpxt.EDU_JPXT_02_04_JLYJCQK.FirstOrDefault(e => e.ID == jlyjcqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlyjcqk_model != null)
            {
                jlyjcqk_model.ID = jlyjcqk.ID;//编号
                jlyjcqk_model.SCHOOLID = jlyjcqk.SCHOOLID;//学校ID   学校配置表
                jlyjcqk_model.JLYID = jlyjcqk.JLYID;//教练员ID   教练员数据表
                jlyjcqk_model.LRSJ = jlyjcqk.LRSJ;//录入时间
                jlyjcqk_model.JCQK = jlyjcqk.JCQK;//奖惩情况
                jlyjcqk_model.BZ = jlyjcqk.BZ;//备注
                db_jpxt.Entry(jlyjcqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_02_04_JLYJCQK.Add(jlyjcqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_02_04_JLYJCQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_02_04_JLYJCQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlyjcqk(jlyjcqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlyjcqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlyjcqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_02_04_JLYJCQK jlyjcqk= db_jpxt.EDU_JPXT_02_04_JLYJCQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlyjcqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlyjcqk(jlyjcqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlyjcqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlyjcqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_02_04_JLYJCQK jlyjcqk = db_jpxt.EDU_JPXT_02_04_JLYJCQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_02_04_JLYJCQK.Remove(jlyjcqk);
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
                    EDU_JPXT_02_04_JLYJCQK jlyjcqk = db_jpxt.EDU_JPXT_02_04_JLYJCQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_02_04_JLYJCQK.Remove(jlyjcqk);
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

        private static int Max_JLYJCQK_ID = 0;
        private static object syncIDLock = new object();
        //获取教练员奖惩情况表最大ID
        public int GetMax_JLYJCQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLYJCQK_ID == 0)
                {
                    EDU_JPXT_02_04_JLYJCQK jlyjcqk = db_jpxt.EDU_JPXT_02_04_JLYJCQK.FirstOrDefault();
                    if (jlyjcqk == null)
                    {
                        Max_JLYJCQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLYJCQK_ID = db_jpxt.EDU_JPXT_02_04_JLYJCQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLYJCQK_ID++;
                }
                maxId = Max_JLYJCQK_ID;
            }
            return maxId;
        }

    }
}
