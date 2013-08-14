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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class WJJBSJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_01_01_WJJBSJ_DISP> model = db_zxbg.VIEW_EDU_ZXBG_01_01_WJJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjjbsj(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
        {
            wjjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjjbsj(wjjbsj);
        }

        public void UpdWjjbsj(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
        {
            //设置默认值
            if (wjjbsj.SCHOOLID == 0) wjjbsj.SCHOOLID = 0;//学校名学校ID
            if (wjjbsj.ID == 0) wjjbsj.ID = 0;//文件ID
            if (string.IsNullOrEmpty(wjjbsj.WJBH)) wjjbsj.WJBH = "";//文件编号解释/举例：学校自编的文件序号 
            if (string.IsNullOrEmpty(wjjbsj.WJWH)) wjjbsj.WJWH = "";//文件文号解释/举例：收、发文的文号 
            if (string.IsNullOrEmpty(wjjbsj.BT)) wjjbsj.BT = "";//标题解释/举例：文件的标题名称 
            if (string.IsNullOrEmpty(wjjbsj.ZTC)) wjjbsj.ZTC = "";//主题词解释/举例：文件的主题词，多个主题词用逗号隔开 
            if (string.IsNullOrEmpty(wjjbsj.MJM)) wjjbsj.MJM = "";//密级码值空间：GB/T7156 
            if (string.IsNullOrEmpty(wjjbsj.JJCDM)) wjjbsj.JJCDM = "";//紧急程度码值空间：JY/T1001JJCD紧急程度代码 
            if (wjjbsj.YS == 0) wjjbsj.YS = 0;//页数解释/举例：文件的总页数，单位：页 
            if (string.IsNullOrEmpty(wjjbsj.WJFLM)) wjjbsj.WJFLM = "";//文件分类码值空间：JY/T1001WJFL文件分类代码 
            if (string.IsNullOrEmpty(wjjbsj.ZW)) wjjbsj.ZW = "";//正文解释/举例：文件的具体内容 
            if (string.IsNullOrEmpty(wjjbsj.FJ)) wjjbsj.FJ = "";//附件解释/举例：文件所带附件的具体内容 
            if (string.IsNullOrEmpty(wjjbsj.FWRQ)) wjjbsj.FWRQ = "";//发文日期格式：YYYYMMDD，如：20060412表示2006年4月12日
            if (string.IsNullOrEmpty(wjjbsj.CSDW)) wjjbsj.CSDW = "";//抄送单位解释/举例：多个单位用逗号隔开 
            EDU_ZXBG_01_01_WJJBSJ wjjbsj_model = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.FirstOrDefault(e => e.SCHOOLID == wjjbsj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjjbsj_model != null)
            {
                wjjbsj_model.SCHOOLID = wjjbsj.SCHOOLID;//学校名学校ID
                wjjbsj_model.ID = wjjbsj.ID;//文件ID
                wjjbsj_model.WJBH = wjjbsj.WJBH;//文件编号解释/举例：学校自编的文件序号 
                wjjbsj_model.WJWH = wjjbsj.WJWH;//文件文号解释/举例：收、发文的文号 
                wjjbsj_model.BT = wjjbsj.BT;//标题解释/举例：文件的标题名称 
                wjjbsj_model.ZTC = wjjbsj.ZTC;//主题词解释/举例：文件的主题词，多个主题词用逗号隔开 
                wjjbsj_model.MJM = wjjbsj.MJM;//密级码值空间：GB/T7156 
                wjjbsj_model.JJCDM = wjjbsj.JJCDM;//紧急程度码值空间：JY/T1001JJCD紧急程度代码 
                wjjbsj_model.YS = wjjbsj.YS;//页数解释/举例：文件的总页数，单位：页 
                wjjbsj_model.WJFLM = wjjbsj.WJFLM;//文件分类码值空间：JY/T1001WJFL文件分类代码 
                wjjbsj_model.ZW = wjjbsj.ZW;//正文解释/举例：文件的具体内容 
                wjjbsj_model.FJ = wjjbsj.FJ;//附件解释/举例：文件所带附件的具体内容 
                wjjbsj_model.FWRQ = wjjbsj.FWRQ;//发文日期格式：YYYYMMDD，如：20060412表示2006年4月12日
                wjjbsj_model.CSDW = wjjbsj.CSDW;//抄送单位解释/举例：多个单位用逗号隔开 
                db_zxbg.Entry(wjjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Add(wjjbsj);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_01_01_WJJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_01_01_WJJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjjbsj(wjjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_01_01_WJJBSJ wjjbsj= db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjjbsj(wjjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjjbsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_01_01_WJJBSJ wjjbsj = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Remove(wjjbsj);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_01_01_WJJBSJ wjjbsj = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Remove(wjjbsj);
                    db_zxbg.SaveChanges();
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

        private static int Max_WJJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取文件基本数据类表最大ID
        public int GetMax_WJJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJJBSJ_ID == 0)
                {
                    EDU_ZXBG_01_01_WJJBSJ wjjbsj = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.FirstOrDefault();
                    if (wjjbsj == null)
                    {
                        Max_WJJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_WJJBSJ_ID = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJJBSJ_ID++;
                }
                maxId = Max_WJJBSJ_ID;
            }
            return maxId;
        }

    }
}
