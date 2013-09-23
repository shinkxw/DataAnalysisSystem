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
    public class KCPJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_01_A01_KCPJ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_01_A01_KCPJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.SCHOOLID.Contains(searchkey)).ToList();
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

        public void AddKcpj(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            kcpj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKcpj(kcpj);
        }

        public void UpdKcpj(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            //设置默认值
            if (kcpj.SCHOOLID == 0) kcpj.SCHOOLID = 0;//学校ID   学校配置表
            if (kcpj.PJID == 0) kcpj.PJID = 0;//评价ID
            if (kcpj.KXH == 0) kcpj.KXH = 0;//课序号   教师任课表
            if (string.IsNullOrEmpty(kcpj.PJR)) kcpj.PJR = "";//评价人   应用系统用户表
            if (kcpj.PJSJ == 0) kcpj.PJSJ = 0;//评价时间
            if (string.IsNullOrEmpty(kcpj.PJNR)) kcpj.PJNR = "";//评价内容
            if (string.IsNullOrEmpty(kcpj.HF)) kcpj.HF = "";//回复
            EDU_ZZJX_01_A01_KCPJ kcpj_model = db_zzjx.EDU_ZZJX_01_A01_KCPJ.FirstOrDefault(e => e.SCHOOLID == kcpj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kcpj_model != null)
            {
                kcpj_model.SCHOOLID = kcpj.SCHOOLID;//学校ID   学校配置表
                kcpj_model.PJID = kcpj.PJID;//评价ID
                kcpj_model.KXH = kcpj.KXH;//课序号   教师任课表
                kcpj_model.PJR = kcpj.PJR;//评价人   应用系统用户表
                kcpj_model.PJSJ = kcpj.PJSJ;//评价时间
                kcpj_model.PJNR = kcpj.PJNR;//评价内容
                kcpj_model.HF = kcpj.HF;//回复
                db_zzjx.Entry(kcpj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_01_A01_KCPJ.Add(kcpj);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_01_A01_KCPJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_01_A01_KCPJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKcpj(kcpj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kcpj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kcpj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_01_A01_KCPJ kcpj= db_zzjx.EDU_ZZJX_01_A01_KCPJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kcpj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            InitViewBag();
            try
            {
                
                
                UpdKcpj(kcpj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kcpj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kcpj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_01_A01_KCPJ kcpj = db_zzjx.EDU_ZZJX_01_A01_KCPJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_01_A01_KCPJ.Remove(kcpj);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_01_A01_KCPJ kcpj = db_zzjx.EDU_ZZJX_01_A01_KCPJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_01_A01_KCPJ.Remove(kcpj);
                    db_zzjx.SaveChanges();
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

        private static int Max_KCPJ_ID = 0;
        private static object syncIDLock = new object();
        //获取课程评价表最大ID
        public int GetMax_KCPJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KCPJ_ID == 0)
                {
                    EDU_ZZJX_01_A01_KCPJ kcpj = db_zzjx.EDU_ZZJX_01_A01_KCPJ.FirstOrDefault();
                    if (kcpj == null)
                    {
                        Max_KCPJ_ID = 1;
                    }
                    else
                    {
                        //Max_KCPJ_ID = db_zzjx.EDU_ZZJX_01_A01_KCPJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KCPJ_ID++;
                }
                maxId = Max_KCPJ_ID;
            }
            return maxId;
        }

    }
}
