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
    public class SDController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_SD_DISP> model = db_ele.VIEW_EDU_ELE_05_SD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSd(EDU_ELE_05_SD sd)
        {
            sd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSd(sd);
        }

        public void UpdSd(EDU_ELE_05_SD sd)
        {
            //设置默认值
            if (sd.ID == 0) sd.ID = 0;//编号
            if (sd.SCHOOLID == 0) sd.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(sd.MC)) sd.MC = "";//名称
            EDU_ELE_05_SD sd_model = db_ele.EDU_ELE_05_SD.FirstOrDefault(e => e.ID == sd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sd_model != null)
            {
                sd_model.ID = sd.ID;//编号
                sd_model.SCHOOLID = sd.SCHOOLID;//学校名   学校配置表
                sd_model.MC = sd.MC;//名称
                db_ele.Entry(sd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_05_SD.Add(sd);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_SD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_SD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_SD sd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSd(sd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_SD sd= db_ele.EDU_ELE_05_SD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_SD sd)
        {
            InitViewBag();
            try
            {
                
                
                UpdSd(sd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sd);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_05_SD sd = db_ele.EDU_ELE_05_SD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_SD.Remove(sd);
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
                    EDU_ELE_05_SD sd = db_ele.EDU_ELE_05_SD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_SD.Remove(sd);
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

        private static int Max_SD_ID = 0;
        private static object syncIDLock = new object();
        //获取时段最大ID
        public int GetMax_SD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SD_ID == 0)
                {
                    EDU_ELE_05_SD sd = db_ele.EDU_ELE_05_SD.FirstOrDefault();
                    if (sd == null)
                    {
                        Max_SD_ID = 1;
                    }
                    else
                    {
                        //Max_SD_ID = db_ele.EDU_ELE_05_SD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SD_ID++;
                }
                maxId = Max_SD_ID;
            }
            return maxId;
        }

    }
}
