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
    public class YJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_11_A01_YJ_DISP> model = db_zxbg.VIEW_EDU_ZXBG_11_A01_YJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddYj(EDU_ZXBG_11_A01_YJ yj)
        {
            yj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdYj(yj);
        }

        public void UpdYj(EDU_ZXBG_11_A01_YJ yj)
        {
            //设置默认值
            if (yj.ID == 0) yj.ID = 0;//邮件ID
            if (yj.SCHOOLID == 0) yj.SCHOOLID = 0;//学校ID
            if (string.IsNullOrEmpty(yj.YYZID)) yj.YYZID = "";//拥有者ID
            if (string.IsNullOrEmpty(yj.FSRID)) yj.FSRID = "";//发送人ID
            if (string.IsNullOrEmpty(yj.JSRID)) yj.JSRID = "";//接收人ID
            if (string.IsNullOrEmpty(yj.FSRMC)) yj.FSRMC = "";//发送人名称
            if (string.IsNullOrEmpty(yj.JSRMC)) yj.JSRMC = "";//接收人名称
            if (string.IsNullOrEmpty(yj.JSRIDLB)) yj.JSRIDLB = "";//接收人ID列表
            if (string.IsNullOrEmpty(yj.JSRMCLB)) yj.JSRMCLB = "";//接收人名称列表
            if (string.IsNullOrEmpty(yj.BT)) yj.BT = "";//标题
            if (string.IsNullOrEmpty(yj.NR)) yj.NR = "";//内容
            if (string.IsNullOrEmpty(yj.FJ)) yj.FJ = "";//附件
            if (yj.FSSJ == 0) yj.FSSJ = 0;//发送时间
            if (string.IsNullOrEmpty(yj.SFYD)) yj.SFYD = "";//是否已阅读
            if (yj.YJLX == 0) yj.YJLX = 0;//邮件类型1收件箱2草稿箱3已发送4已删除
            EDU_ZXBG_11_A01_YJ yj_model = db_zxbg.EDU_ZXBG_11_A01_YJ.FirstOrDefault(e => e.ID == yj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (yj_model != null)
            {
                yj_model.ID = yj.ID;//邮件ID
                yj_model.SCHOOLID = yj.SCHOOLID;//学校ID
                yj_model.YYZID = yj.YYZID;//拥有者ID
                yj_model.FSRID = yj.FSRID;//发送人ID
                yj_model.JSRID = yj.JSRID;//接收人ID
                yj_model.FSRMC = yj.FSRMC;//发送人名称
                yj_model.JSRMC = yj.JSRMC;//接收人名称
                yj_model.JSRIDLB = yj.JSRIDLB;//接收人ID列表
                yj_model.JSRMCLB = yj.JSRMCLB;//接收人名称列表
                yj_model.BT = yj.BT;//标题
                yj_model.NR = yj.NR;//内容
                yj_model.FJ = yj.FJ;//附件
                yj_model.FSSJ = yj.FSSJ;//发送时间
                yj_model.SFYD = yj.SFYD;//是否已阅读
                yj_model.YJLX = yj.YJLX;//邮件类型1收件箱2草稿箱3已发送4已删除
                db_zxbg.Entry(yj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxbg.EDU_ZXBG_11_A01_YJ.Add(yj);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_11_A01_YJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_11_A01_YJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_11_A01_YJ yj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddYj(yj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_11_A01_YJ yj= db_zxbg.EDU_ZXBG_11_A01_YJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(yj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_11_A01_YJ yj)
        {
            InitViewBag();
            try
            {
                
                
                UpdYj(yj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_11_A01_YJ yj = db_zxbg.EDU_ZXBG_11_A01_YJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_11_A01_YJ.Remove(yj);
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
                    EDU_ZXBG_11_A01_YJ yj = db_zxbg.EDU_ZXBG_11_A01_YJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_11_A01_YJ.Remove(yj);
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

        private static int Max_YJ_ID = 0;
        private static object syncIDLock = new object();
        //获取邮件数据表最大ID
        public int GetMax_YJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_YJ_ID == 0)
                {
                    EDU_ZXBG_11_A01_YJ yj = db_zxbg.EDU_ZXBG_11_A01_YJ.FirstOrDefault();
                    if (yj == null)
                    {
                        Max_YJ_ID = 1;
                    }
                    else
                    {
                        //Max_YJ_ID = db_zxbg.EDU_ZXBG_11_A01_YJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_YJ_ID++;
                }
                maxId = Max_YJ_ID;
            }
            return maxId;
        }

    }
}
