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
    public class TKLXSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_04_TKLXSJ_DISP> model = db_ele.VIEW_EDU_ELE_04_TKLXSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTklxsj(EDU_ELE_04_TKLXSJ tklxsj)
        {
            tklxsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTklxsj(tklxsj);
        }

        public void UpdTklxsj(EDU_ELE_04_TKLXSJ tklxsj)
        {
            //设置默认值
            if (tklxsj.ID == 0) tklxsj.ID = 0;//编号
            if (tklxsj.SCHOOLID == 0) tklxsj.SCHOOLID = 0;//学校ID
            if (string.IsNullOrEmpty(tklxsj.LXMC)) tklxsj.LXMC = "";//类型名称
            EDU_ELE_04_TKLXSJ tklxsj_model = db_ele.EDU_ELE_04_TKLXSJ.FirstOrDefault(e => e.ID == tklxsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tklxsj_model != null)
            {
                tklxsj_model.ID = tklxsj.ID;//编号
                tklxsj_model.SCHOOLID = tklxsj.SCHOOLID;//学校ID
                tklxsj_model.LXMC = tklxsj.LXMC;//类型名称
                db_ele.Entry(tklxsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_04_TKLXSJ.Add(tklxsj);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_04_TKLXSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_04_TKLXSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_04_TKLXSJ tklxsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTklxsj(tklxsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tklxsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tklxsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_04_TKLXSJ tklxsj= db_ele.EDU_ELE_04_TKLXSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tklxsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_04_TKLXSJ tklxsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdTklxsj(tklxsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tklxsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tklxsj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_04_TKLXSJ tklxsj = db_ele.EDU_ELE_04_TKLXSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_04_TKLXSJ.Remove(tklxsj);
                db_ele.SaveChanges();
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
                    EDU_ELE_04_TKLXSJ tklxsj = db_ele.EDU_ELE_04_TKLXSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_04_TKLXSJ.Remove(tklxsj);
                    db_ele.SaveChanges();
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

        private static int Max_TKLXSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取调课类型数据表最大ID
        public int GetMax_TKLXSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TKLXSJ_ID == 0)
                {
                    EDU_ELE_04_TKLXSJ tklxsj = db_ele.EDU_ELE_04_TKLXSJ.FirstOrDefault();
                    if (tklxsj == null)
                    {
                        Max_TKLXSJ_ID = 1;
                    }
                    else
                    {
                        //Max_TKLXSJ_ID = db_ele.EDU_ELE_04_TKLXSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TKLXSJ_ID++;
                }
                maxId = Max_TKLXSJ_ID;
            }
            return maxId;
        }

    }
}
