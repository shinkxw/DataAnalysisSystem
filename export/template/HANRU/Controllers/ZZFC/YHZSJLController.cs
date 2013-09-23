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
    public class YHZSJLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZFC_08_A02_YHZSJL_DISP> model = db_zzfc.VIEW_EDU_ZZFC_08_A02_YHZSJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddYhzsjl(EDU_ZZFC_08_A02_YHZSJL yhzsjl)
        {
            yhzsjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdYhzsjl(yhzsjl);
        }

        public void UpdYhzsjl(EDU_ZZFC_08_A02_YHZSJL yhzsjl)
        {
            //设置默认值
            if (yhzsjl.SCHOOLID == 0) yhzsjl.SCHOOLID = 0;//学校ID   学校配置表
            if (yhzsjl.ID == 0) yhzsjl.ID = 0;//住宿记录ID
            if (yhzsjl.YHID == 0) yhzsjl.YHID = 0;//用户ID
            if (yhzsjl.SSLID == 0) yhzsjl.SSLID = 0;//宿舍楼ID   建筑物基本数据类表
            if (yhzsjl.SSID == 0) yhzsjl.SSID = 0;//宿舍ID   学生宿舍数据类表
            if (yhzsjl.CWID == 0) yhzsjl.CWID = 0;//床位ID   宿舍床位表
            if (string.IsNullOrEmpty(yhzsjl.YHXM)) yhzsjl.YHXM = "";//用户姓名
            if (yhzsjl.RZRLX == 0) yhzsjl.RZRLX = 0;//入住人类型
            if (yhzsjl.RZSJ == 0) yhzsjl.RZSJ = 0;//入住时间
            if (yhzsjl.SHZT == 0) yhzsjl.SHZT = 0;//审核状态
            if (yhzsjl.SHSJ == 0) yhzsjl.SHSJ = 0;//审核时间
            if (string.IsNullOrEmpty(yhzsjl.SHR)) yhzsjl.SHR = "";//审核人
            EDU_ZZFC_08_A02_YHZSJL yhzsjl_model = db_zzfc.EDU_ZZFC_08_A02_YHZSJL.FirstOrDefault(e => e.SCHOOLID == yhzsjl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (yhzsjl_model != null)
            {
                yhzsjl_model.SCHOOLID = yhzsjl.SCHOOLID;//学校ID   学校配置表
                yhzsjl_model.ID = yhzsjl.ID;//住宿记录ID
                yhzsjl_model.YHID = yhzsjl.YHID;//用户ID
                yhzsjl_model.SSLID = yhzsjl.SSLID;//宿舍楼ID   建筑物基本数据类表
                yhzsjl_model.SSID = yhzsjl.SSID;//宿舍ID   学生宿舍数据类表
                yhzsjl_model.CWID = yhzsjl.CWID;//床位ID   宿舍床位表
                yhzsjl_model.YHXM = yhzsjl.YHXM;//用户姓名
                yhzsjl_model.RZRLX = yhzsjl.RZRLX;//入住人类型
                yhzsjl_model.RZSJ = yhzsjl.RZSJ;//入住时间
                yhzsjl_model.SHZT = yhzsjl.SHZT;//审核状态
                yhzsjl_model.SHSJ = yhzsjl.SHSJ;//审核时间
                yhzsjl_model.SHR = yhzsjl.SHR;//审核人
                db_zzfc.Entry(yhzsjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzfc.EDU_ZZFC_08_A02_YHZSJL.Add(yhzsjl);
            }
            db_zzfc.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZFC_08_A02_YHZSJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZFC_08_A02_YHZSJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZFC_08_A02_YHZSJL yhzsjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddYhzsjl(yhzsjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yhzsjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yhzsjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZFC_08_A02_YHZSJL yhzsjl= db_zzfc.EDU_ZZFC_08_A02_YHZSJL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(yhzsjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZFC_08_A02_YHZSJL yhzsjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdYhzsjl(yhzsjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yhzsjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yhzsjl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZFC_08_A02_YHZSJL yhzsjl = db_zzfc.EDU_ZZFC_08_A02_YHZSJL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzfc.EDU_ZZFC_08_A02_YHZSJL.Remove(yhzsjl);
                db_zzfc.SaveChanges();
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
                    EDU_ZZFC_08_A02_YHZSJL yhzsjl = db_zzfc.EDU_ZZFC_08_A02_YHZSJL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzfc.EDU_ZZFC_08_A02_YHZSJL.Remove(yhzsjl);
                    db_zzfc.SaveChanges();
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

        private static int Max_YHZSJL_ID = 0;
        private static object syncIDLock = new object();
        //获取用户住宿记录表最大ID
        public int GetMax_YHZSJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_YHZSJL_ID == 0)
                {
                    EDU_ZZFC_08_A02_YHZSJL yhzsjl = db_zzfc.EDU_ZZFC_08_A02_YHZSJL.FirstOrDefault();
                    if (yhzsjl == null)
                    {
                        Max_YHZSJL_ID = 1;
                    }
                    else
                    {
                        //Max_YHZSJL_ID = db_zzfc.EDU_ZZFC_08_A02_YHZSJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_YHZSJL_ID++;
                }
                maxId = Max_YHZSJL_ID;
            }
            return maxId;
        }

    }
}
