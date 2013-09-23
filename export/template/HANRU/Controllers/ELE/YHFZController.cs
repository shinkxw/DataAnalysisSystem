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
    public class YHFZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_02_YHFZ_DISP> model = db_ele.VIEW_EDU_ELE_02_YHFZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddYhfz(EDU_ELE_02_YHFZ yhfz)
        {
            yhfz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdYhfz(yhfz);
        }

        public void UpdYhfz(EDU_ELE_02_YHFZ yhfz)
        {
            //设置默认值
            if (yhfz.ID == 0) yhfz.ID = 0;//分组ID
            if (yhfz.SCHOOLID == 0) yhfz.SCHOOLID = 0;//学校ID   学校配置表
            if (yhfz.APPID == 0) yhfz.APPID = 0;//应用ID   应用表
            if (string.IsNullOrEmpty(yhfz.YHID)) yhfz.YHID = "";//用户ID   应用系统用户表
            if (yhfz.SJFZID == 0) yhfz.SJFZID = 0;//上级分组ID   用户分组表
            if (string.IsNullOrEmpty(yhfz.FZMC)) yhfz.FZMC = "";//分组名称
            if (string.IsNullOrEmpty(yhfz.FZYHID)) yhfz.FZYHID = "";//分组用户ID列表
            EDU_ELE_02_YHFZ yhfz_model = db_ele.EDU_ELE_02_YHFZ.FirstOrDefault(e => e.ID == yhfz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (yhfz_model != null)
            {
                yhfz_model.ID = yhfz.ID;//分组ID
                yhfz_model.SCHOOLID = yhfz.SCHOOLID;//学校ID   学校配置表
                yhfz_model.APPID = yhfz.APPID;//应用ID   应用表
                yhfz_model.YHID = yhfz.YHID;//用户ID   应用系统用户表
                yhfz_model.SJFZID = yhfz.SJFZID;//上级分组ID   用户分组表
                yhfz_model.FZMC = yhfz.FZMC;//分组名称
                yhfz_model.FZYHID = yhfz.FZYHID;//分组用户ID列表
                db_ele.Entry(yhfz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_02_YHFZ.Add(yhfz);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_02_YHFZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_02_YHFZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_02_YHFZ yhfz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddYhfz(yhfz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yhfz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yhfz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_02_YHFZ yhfz= db_ele.EDU_ELE_02_YHFZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(yhfz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_02_YHFZ yhfz)
        {
            InitViewBag();
            try
            {
                
                
                UpdYhfz(yhfz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yhfz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yhfz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_02_YHFZ yhfz = db_ele.EDU_ELE_02_YHFZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_02_YHFZ.Remove(yhfz);
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
                    EDU_ELE_02_YHFZ yhfz = db_ele.EDU_ELE_02_YHFZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_02_YHFZ.Remove(yhfz);
                    db_ele.SaveChanges();
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

        private static int Max_YHFZ_ID = 0;
        private static object syncIDLock = new object();
        //获取用户分组表最大ID
        public int GetMax_YHFZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_YHFZ_ID == 0)
                {
                    EDU_ELE_02_YHFZ yhfz = db_ele.EDU_ELE_02_YHFZ.FirstOrDefault();
                    if (yhfz == null)
                    {
                        Max_YHFZ_ID = 1;
                    }
                    else
                    {
                        //Max_YHFZ_ID = db_ele.EDU_ELE_02_YHFZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_YHFZ_ID++;
                }
                maxId = Max_YHFZ_ID;
            }
            return maxId;
        }

    }
}
