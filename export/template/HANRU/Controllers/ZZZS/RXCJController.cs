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
    public class RXCJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZZS_02_01_RXCJ_DISP> model = db_zzzs.VIEW_EDU_ZZZS_02_01_RXCJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddRxcj(EDU_ZZZS_02_01_RXCJ rxcj)
        {
            rxcj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdRxcj(rxcj);
        }

        public void UpdRxcj(EDU_ZZZS_02_01_RXCJ rxcj)
        {
            //设置默认值
            if (rxcj.XSXXID == 0) rxcj.XSXXID = 0;//学生信息数据表   学生信息数据表
            if (rxcj.SCHOOLID == 0) rxcj.SCHOOLID = 0;//学校名   学校配置表
            if (rxcj.RXZF == 0) rxcj.RXZF = 0;//入学总分
            if (rxcj.GKZF == 0) rxcj.GKZF = 0;//中考总分
            if (rxcj.FJF == 0) rxcj.FJF = 0;//附加分
            if (string.IsNullOrEmpty(rxcj.FJFLBM)) rxcj.FJFLBM = "";//附加分类别码   附加分类别代码表
            EDU_ZZZS_02_01_RXCJ rxcj_model = db_zzzs.EDU_ZZZS_02_01_RXCJ.FirstOrDefault(e => e.XSXXID == rxcj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (rxcj_model != null)
            {
                rxcj_model.XSXXID = rxcj.XSXXID;//学生信息数据表   学生信息数据表
                rxcj_model.SCHOOLID = rxcj.SCHOOLID;//学校名   学校配置表
                rxcj_model.RXZF = rxcj.RXZF;//入学总分
                rxcj_model.GKZF = rxcj.GKZF;//中考总分
                rxcj_model.FJF = rxcj.FJF;//附加分
                rxcj_model.FJFLBM = rxcj.FJFLBM;//附加分类别码   附加分类别代码表
                db_zzzs.Entry(rxcj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzzs.EDU_ZZZS_02_01_RXCJ.Add(rxcj);
            }
            db_zzzs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_FJFLBLst = JBLDAL.GetJY_FJFLBSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZZS_02_01_RXCJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZZS_02_01_RXCJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZZS_02_01_RXCJ rxcj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddRxcj(rxcj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(rxcj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(rxcj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZZS_02_01_RXCJ rxcj= db_zzzs.EDU_ZZZS_02_01_RXCJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(rxcj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZZS_02_01_RXCJ rxcj)
        {
            InitViewBag();
            try
            {
                
                
                UpdRxcj(rxcj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(rxcj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(rxcj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZZS_02_01_RXCJ rxcj = db_zzzs.EDU_ZZZS_02_01_RXCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzzs.EDU_ZZZS_02_01_RXCJ.Remove(rxcj);
                db_zzzs.SaveChanges();
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
                    EDU_ZZZS_02_01_RXCJ rxcj = db_zzzs.EDU_ZZZS_02_01_RXCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzzs.EDU_ZZZS_02_01_RXCJ.Remove(rxcj);
                    db_zzzs.SaveChanges();
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

        private static int Max_RXCJ_ID = 0;
        private static object syncIDLock = new object();
        //获取入学成绩数据表最大ID
        public int GetMax_RXCJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_RXCJ_ID == 0)
                {
                    EDU_ZZZS_02_01_RXCJ rxcj = db_zzzs.EDU_ZZZS_02_01_RXCJ.FirstOrDefault();
                    if (rxcj == null)
                    {
                        Max_RXCJ_ID = 1;
                    }
                    else
                    {
                        //Max_RXCJ_ID = db_zzzs.EDU_ZZZS_02_01_RXCJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_RXCJ_ID++;
                }
                maxId = Max_RXCJ_ID;
            }
            return maxId;
        }

    }
}
