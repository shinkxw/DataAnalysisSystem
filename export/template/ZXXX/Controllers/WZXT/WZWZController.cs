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
    public class WZWZController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_WZWZ_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_WZWZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWzwz(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            wzwz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzwz(wzwz);
        }

        public void UpdWzwz(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            //设置默认值
            if (wzwz.ID == 0) wzwz.ID = 0;//网站文章ID
            if (wzwz.SCHOOLID == 0) wzwz.SCHOOLID = 0;//学校名
            if (wzwz.WEBID == 0) wzwz.WEBID = 0;//网站ID
            if (string.IsNullOrEmpty(wzwz.TYPENAME)) wzwz.TYPENAME = "";//类型名称
            if (wzwz.LMID == 0) wzwz.LMID = 0;//栏目
            if (string.IsNullOrEmpty(wzwz.TITLE)) wzwz.TITLE = "";//标题
            if (string.IsNullOrEmpty(wzwz.PUBLISHERNAME)) wzwz.PUBLISHERNAME = "";//发布人
            if (string.IsNullOrEmpty(wzwz.AUTHOR)) wzwz.AUTHOR = "";//作者
            if (string.IsNullOrEmpty(wzwz.AUTHORDEPART)) wzwz.AUTHORDEPART = "";//作者部门
            if (wzwz.PUBLISHDATE == 0) wzwz.PUBLISHDATE = 0;//发布时间
            if (string.IsNullOrEmpty(wzwz.CONTENT)) wzwz.CONTENT = "";//内容
            if (string.IsNullOrEmpty(wzwz.URL)) wzwz.URL = "";//链接
            if (string.IsNullOrEmpty(wzwz.IMAGEURL)) wzwz.IMAGEURL = "";//图片
            if (string.IsNullOrEmpty(wzwz.ATTACHMENTNAME)) wzwz.ATTACHMENTNAME = "";//附件名
            if (string.IsNullOrEmpty(wzwz.ATTACHMENT)) wzwz.ATTACHMENT = "";//附件
            if (wzwz.CHICKNUB == 0) wzwz.CHICKNUB = 0;//点击量
            if (wzwz.AUDITSTATU == 0) wzwz.AUDITSTATU = 0;//审核状态
            if (string.IsNullOrEmpty(wzwz.AUDITOR)) wzwz.AUDITOR = "";//审核人ID
            if (string.IsNullOrEmpty(wzwz.AUDITORNAME)) wzwz.AUDITORNAME = "";//审核人
            if (wzwz.AUDITTIME == 0) wzwz.AUDITTIME = 0;//审核时间
            if (string.IsNullOrEmpty(wzwz.REMARK)) wzwz.REMARK = "";//备注
            if (string.IsNullOrEmpty(wzwz.SUMMARY)) wzwz.SUMMARY = "";//摘要
            if (wzwz.DISPLAYTYPE == 0) wzwz.DISPLAYTYPE = 0;//是否显示
            if (wzwz.OPENFLAG == 0) wzwz.OPENFLAG = 0;//内外网
            if (string.IsNullOrEmpty(wzwz.LLQX)) wzwz.LLQX = "";//浏览权限
            EDU_WZXT_MHXT_WZWZ wzwz_model = db_wzxt.EDU_WZXT_MHXT_WZWZ.FirstOrDefault(e => e.ID == wzwz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzwz_model != null)
            {
                wzwz_model.ID = wzwz.ID;//网站文章ID
                wzwz_model.SCHOOLID = wzwz.SCHOOLID;//学校名
                wzwz_model.WEBID = wzwz.WEBID;//网站ID
                wzwz_model.TYPENAME = wzwz.TYPENAME;//类型名称
                wzwz_model.LMID = wzwz.LMID;//栏目
                wzwz_model.TITLE = wzwz.TITLE;//标题
                wzwz_model.PUBLISHERNAME = wzwz.PUBLISHERNAME;//发布人
                wzwz_model.AUTHOR = wzwz.AUTHOR;//作者
                wzwz_model.AUTHORDEPART = wzwz.AUTHORDEPART;//作者部门
                wzwz_model.PUBLISHDATE = wzwz.PUBLISHDATE;//发布时间
                wzwz_model.CONTENT = wzwz.CONTENT;//内容
                wzwz_model.URL = wzwz.URL;//链接
                wzwz_model.IMAGEURL = wzwz.IMAGEURL;//图片
                wzwz_model.ATTACHMENTNAME = wzwz.ATTACHMENTNAME;//附件名
                wzwz_model.ATTACHMENT = wzwz.ATTACHMENT;//附件
                wzwz_model.CHICKNUB = wzwz.CHICKNUB;//点击量
                wzwz_model.AUDITSTATU = wzwz.AUDITSTATU;//审核状态
                wzwz_model.AUDITOR = wzwz.AUDITOR;//审核人ID
                wzwz_model.AUDITORNAME = wzwz.AUDITORNAME;//审核人
                wzwz_model.AUDITTIME = wzwz.AUDITTIME;//审核时间
                wzwz_model.REMARK = wzwz.REMARK;//备注
                wzwz_model.SUMMARY = wzwz.SUMMARY;//摘要
                wzwz_model.DISPLAYTYPE = wzwz.DISPLAYTYPE;//是否显示
                wzwz_model.OPENFLAG = wzwz.OPENFLAG;//内外网
                wzwz_model.LLQX = wzwz.LLQX;//浏览权限
                db_wzxt.Entry(wzwz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_wzxt.EDU_WZXT_MHXT_WZWZ.Add(wzwz);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_WZWZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_WZWZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzwz(wzwz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzwz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzwz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_WZWZ wzwz= db_wzxt.EDU_WZXT_MHXT_WZWZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzwz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzwz(wzwz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzwz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzwz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_MHXT_WZWZ wzwz = db_wzxt.EDU_WZXT_MHXT_WZWZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_WZWZ.Remove(wzwz);
                db_wzxt.SaveChanges();
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
                    EDU_WZXT_MHXT_WZWZ wzwz = db_wzxt.EDU_WZXT_MHXT_WZWZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_WZWZ.Remove(wzwz);
                    db_wzxt.SaveChanges();
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

        private static int Max_WZWZ_ID = 0;
        private static object syncIDLock = new object();
        //获取网站文章最大ID
        public int GetMax_WZWZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZWZ_ID == 0)
                {
                    EDU_WZXT_MHXT_WZWZ wzwz = db_wzxt.EDU_WZXT_MHXT_WZWZ.FirstOrDefault();
                    if (wzwz == null)
                    {
                        Max_WZWZ_ID = 1;
                    }
                    else
                    {
                        //Max_WZWZ_ID = db_wzxt.EDU_WZXT_MHXT_WZWZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZWZ_ID++;
                }
                maxId = Max_WZWZ_ID;
            }
            return maxId;
        }

    }
}
