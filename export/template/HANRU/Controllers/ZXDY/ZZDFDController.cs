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
    public class ZZDFDController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP> model = db_zxdy.VIEW_EDU_ZXDY_05_A03_ZZDFD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzdfd(EDU_ZXDY_05_A03_ZZDFD zzdfd)
        {
            zzdfd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzdfd(zzdfd);
        }

        public void UpdZzdfd(EDU_ZXDY_05_A03_ZZDFD zzdfd)
        {
            //设置默认值
            if (zzdfd.ID == 0) zzdfd.ID = 0;//值周打分单表ID
            if (zzdfd.SCHOOLID == 0) zzdfd.SCHOOLID = 0;//学校ID   学校配置表
            if (zzdfd.XQID == 0) zzdfd.XQID = 0;//学期ID   学期数据表
            if (zzdfd.ZCID == 0) zzdfd.ZCID = 0;//周次ID   值周周次表
            if (string.IsNullOrEmpty(zzdfd.BJ)) zzdfd.BJ = "";//班级   班级数据类表
            if (string.IsNullOrEmpty(zzdfd.XSIDLB)) zzdfd.XSIDLB = "";//学生ID列表
            if (string.IsNullOrEmpty(zzdfd.XSMCLB)) zzdfd.XSMCLB = "";//学生名称列表
            if (zzdfd.SSXZID == 0) zzdfd.SSXZID = 0;//所属细则   值周打分细则表
            if (zzdfd.DFFZ == 0) zzdfd.DFFZ = 0;//打分分值
            if (zzdfd.FSSJ == 0) zzdfd.FSSJ = 0;//发生时间
            if (zzdfd.DFSJ == 0) zzdfd.DFSJ = 0;//打分时间
            if (string.IsNullOrEmpty(zzdfd.DFJSID)) zzdfd.DFJSID = "";//打分教师ID   应用系统用户表
            if (string.IsNullOrEmpty(zzdfd.BZ)) zzdfd.BZ = "";//备注
            EDU_ZXDY_05_A03_ZZDFD zzdfd_model = db_zxdy.EDU_ZXDY_05_A03_ZZDFD.FirstOrDefault(e => e.ID == zzdfd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzdfd_model != null)
            {
                zzdfd_model.ID = zzdfd.ID;//值周打分单表ID
                zzdfd_model.SCHOOLID = zzdfd.SCHOOLID;//学校ID   学校配置表
                zzdfd_model.XQID = zzdfd.XQID;//学期ID   学期数据表
                zzdfd_model.ZCID = zzdfd.ZCID;//周次ID   值周周次表
                zzdfd_model.BJ = zzdfd.BJ;//班级   班级数据类表
                zzdfd_model.XSIDLB = zzdfd.XSIDLB;//学生ID列表
                zzdfd_model.XSMCLB = zzdfd.XSMCLB;//学生名称列表
                zzdfd_model.SSXZID = zzdfd.SSXZID;//所属细则   值周打分细则表
                zzdfd_model.DFFZ = zzdfd.DFFZ;//打分分值
                zzdfd_model.FSSJ = zzdfd.FSSJ;//发生时间
                zzdfd_model.DFSJ = zzdfd.DFSJ;//打分时间
                zzdfd_model.DFJSID = zzdfd.DFJSID;//打分教师ID   应用系统用户表
                zzdfd_model.BZ = zzdfd.BZ;//备注
                db_zxdy.Entry(zzdfd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxdy.EDU_ZXDY_05_A03_ZZDFD.Add(zzdfd);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_05_A03_ZZDFD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_05_A03_ZZDFD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_05_A03_ZZDFD zzdfd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzdfd(zzdfd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzdfd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzdfd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_05_A03_ZZDFD zzdfd= db_zxdy.EDU_ZXDY_05_A03_ZZDFD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzdfd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_05_A03_ZZDFD zzdfd)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzdfd(zzdfd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzdfd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzdfd);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_05_A03_ZZDFD zzdfd = db_zxdy.EDU_ZXDY_05_A03_ZZDFD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_05_A03_ZZDFD.Remove(zzdfd);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_05_A03_ZZDFD zzdfd = db_zxdy.EDU_ZXDY_05_A03_ZZDFD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_05_A03_ZZDFD.Remove(zzdfd);
                    db_zxdy.SaveChanges();
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

        private static int Max_ZZDFD_ID = 0;
        private static object syncIDLock = new object();
        //获取值周打分单表最大ID
        public int GetMax_ZZDFD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZDFD_ID == 0)
                {
                    EDU_ZXDY_05_A03_ZZDFD zzdfd = db_zxdy.EDU_ZXDY_05_A03_ZZDFD.FirstOrDefault();
                    if (zzdfd == null)
                    {
                        Max_ZZDFD_ID = 1;
                    }
                    else
                    {
                        //Max_ZZDFD_ID = db_zxdy.EDU_ZXDY_05_A03_ZZDFD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZDFD_ID++;
                }
                maxId = Max_ZZDFD_ID;
            }
            return maxId;
        }

    }
}
