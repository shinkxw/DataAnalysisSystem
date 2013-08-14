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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class XNJGController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXX_03_01_XNJG_DISP> model = db_zzxx.VIEW_EDU_ZZXX_03_01_XNJG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.JGH.Contains(searchkey)).ToList();
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

        public void AddXnjg(EDU_ZZXX_03_01_XNJG xnjg)
        {
            xnjg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXnjg(xnjg);
        }

        public void UpdXnjg(EDU_ZZXX_03_01_XNJG xnjg)
        {
            //设置默认值
            if (string.IsNullOrEmpty(xnjg.JGH)) xnjg.JGH = "";//机构号
            if (xnjg.SCHOOLID == 0) xnjg.SCHOOLID = 0;//学校名EDU_ZZXX_01_01_ZZXX
            if (string.IsNullOrEmpty(xnjg.JGMC)) xnjg.JGMC = "";//机构名称
            if (string.IsNullOrEmpty(xnjg.JGYWMC)) xnjg.JGYWMC = "";//机构英文名称
            if (string.IsNullOrEmpty(xnjg.JGJC)) xnjg.JGJC = "";//机构简称
            if (string.IsNullOrEmpty(xnjg.JGJP)) xnjg.JGJP = "";//机构简拼
            if (string.IsNullOrEmpty(xnjg.JGDZ)) xnjg.JGDZ = "";//机构地址
            if (string.IsNullOrEmpty(xnjg.LSSJJGH)) xnjg.LSSJJGH = "";//隶属上级机构号EDU_ZZXX_03_01_XNJG
            if (string.IsNullOrEmpty(xnjg.LSXQH)) xnjg.LSXQH = "";//隶属校区号
            if (string.IsNullOrEmpty(xnjg.JGYXBS)) xnjg.JGYXBS = "";//机构有效标识EDU_JY_SFBZ
            if (string.IsNullOrEmpty(xnjg.SFST)) xnjg.SFST = "";//是否实体EDU_JY_SFBZ
            if (string.IsNullOrEmpty(xnjg.JLNY)) xnjg.JLNY = "";//建立年月
            if (string.IsNullOrEmpty(xnjg.JGYZBM)) xnjg.JGYZBM = "";//机构邮政编码
            if (string.IsNullOrEmpty(xnjg.FZRH)) xnjg.FZRH = "";//负责人号
            EDU_ZZXX_03_01_XNJG xnjg_model = db_zzxx.EDU_ZZXX_03_01_XNJG.FirstOrDefault(e => e.JGH == xnjg.JGH
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xnjg_model != null)
            {
                xnjg_model.JGH = xnjg.JGH;//机构号
                xnjg_model.SCHOOLID = xnjg.SCHOOLID;//学校名EDU_ZZXX_01_01_ZZXX
                xnjg_model.JGMC = xnjg.JGMC;//机构名称
                xnjg_model.JGYWMC = xnjg.JGYWMC;//机构英文名称
                xnjg_model.JGJC = xnjg.JGJC;//机构简称
                xnjg_model.JGJP = xnjg.JGJP;//机构简拼
                xnjg_model.JGDZ = xnjg.JGDZ;//机构地址
                xnjg_model.LSSJJGH = xnjg.LSSJJGH;//隶属上级机构号EDU_ZZXX_03_01_XNJG
                xnjg_model.LSXQH = xnjg.LSXQH;//隶属校区号
                xnjg_model.JGYXBS = xnjg.JGYXBS;//机构有效标识EDU_JY_SFBZ
                xnjg_model.SFST = xnjg.SFST;//是否实体EDU_JY_SFBZ
                xnjg_model.JLNY = xnjg.JLNY;//建立年月
                xnjg_model.JGYZBM = xnjg.JGYZBM;//机构邮政编码
                xnjg_model.FZRH = xnjg.FZRH;//负责人号
                db_zzxx.Entry(xnjg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxx.EDU_ZZXX_03_01_XNJG.Add(xnjg);
            }
            db_zzxx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXX_03_01_XNJG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXX_03_01_XNJG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXX_03_01_XNJG xnjg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXnjg(xnjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xnjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xnjg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXX_03_01_XNJG xnjg= db_zzxx.EDU_ZZXX_03_01_XNJG.Single(e => e.JGH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xnjg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXX_03_01_XNJG xnjg)
        {
            InitViewBag();
            try
            {
                
                
                UpdXnjg(xnjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xnjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xnjg);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXX_03_01_XNJG xnjg = db_zzxx.EDU_ZZXX_03_01_XNJG.SingleOrDefault(e => e.JGH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxx.EDU_ZZXX_03_01_XNJG.Remove(xnjg);
                db_zzxx.SaveChanges();
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
                    EDU_ZZXX_03_01_XNJG xnjg = db_zzxx.EDU_ZZXX_03_01_XNJG.SingleOrDefault(e => e.JGH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxx.EDU_ZZXX_03_01_XNJG.Remove(xnjg);
                    db_zzxx.SaveChanges();
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

        private static int Max_XNJG_ID = 0;
        private static object syncIDLock = new object();
        //获取校内机构数据类表最大ID
        public int GetMax_XNJG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XNJG_ID == 0)
                {
                    EDU_ZZXX_03_01_XNJG xnjg = db_zzxx.EDU_ZZXX_03_01_XNJG.FirstOrDefault();
                    if (xnjg == null)
                    {
                        Max_XNJG_ID = 1;
                    }
                    else
                    {
                        //Max_XNJG_ID = db_zzxx.EDU_ZZXX_03_01_XNJG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XNJG_ID++;
                }
                maxId = Max_XNJG_ID;
            }
            return maxId;
        }

    }
}
