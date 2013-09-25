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
    public class TKSQSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_08_A01_TKSQSJ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_08_A01_TKSQSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTksqsj(EDU_ZZJX_08_A01_TKSQSJ tksqsj)
        {
            tksqsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTksqsj(tksqsj);
        }

        public void UpdTksqsj(EDU_ZZJX_08_A01_TKSQSJ tksqsj)
        {
            //设置默认值
            if (tksqsj.ID == 0) tksqsj.ID = 0;//编号
            if (tksqsj.SCHOOLID == 0) tksqsj.SCHOOLID = 0;//学校ID   学校配置表
            if (tksqsj.JSID == 0) tksqsj.JSID = 0;//教师   教职工基本数据子类表
            if (string.IsNullOrEmpty(tksqsj.KCID)) tksqsj.KCID = "";//课程   课程数据子类表
            if (tksqsj.TKLXID == 0) tksqsj.TKLXID = 0;//调课类型ID   调课类型表
            if (tksqsj.TKQQSZ == 0) tksqsj.TKQQSZ = 0;//调课前起始周   校历周表
            if (tksqsj.TKQJSZ == 0) tksqsj.TKQJSZ = 0;//调课前结束周   校历周表
            if (string.IsNullOrEmpty(tksqsj.TKQXQ)) tksqsj.TKQXQ = "";//调课前星期   星期代码
            if (string.IsNullOrEmpty(tksqsj.TKQSD)) tksqsj.TKQSD = "";//调课前时段   时段代码
            if (string.IsNullOrEmpty(tksqsj.TKQJC)) tksqsj.TKQJC = "";//调课前节次   节次代码
            if (tksqsj.TKHQSZ == 0) tksqsj.TKHQSZ = 0;//调课后起始周   校历周表
            if (tksqsj.TKHJSZ == 0) tksqsj.TKHJSZ = 0;//调课后结束周   校历周表
            if (string.IsNullOrEmpty(tksqsj.TKHXQ)) tksqsj.TKHXQ = "";//调课后星期   星期代码
            if (string.IsNullOrEmpty(tksqsj.TKHSD)) tksqsj.TKHSD = "";//调课后时段   时段代码
            if (string.IsNullOrEmpty(tksqsj.TKHJC)) tksqsj.TKHJC = "";//调课后节次   节次代码
            if (tksqsj.ZT == 0) tksqsj.ZT = 0;//当前状态
            if (string.IsNullOrEmpty(tksqsj.BZ)) tksqsj.BZ = "";//备注
            EDU_ZZJX_08_A01_TKSQSJ tksqsj_model = db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.FirstOrDefault(e => e.ID == tksqsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tksqsj_model != null)
            {
                tksqsj_model.ID = tksqsj.ID;//编号
                tksqsj_model.SCHOOLID = tksqsj.SCHOOLID;//学校ID   学校配置表
                tksqsj_model.JSID = tksqsj.JSID;//教师   教职工基本数据子类表
                tksqsj_model.KCID = tksqsj.KCID;//课程   课程数据子类表
                tksqsj_model.TKLXID = tksqsj.TKLXID;//调课类型ID   调课类型表
                tksqsj_model.TKQQSZ = tksqsj.TKQQSZ;//调课前起始周   校历周表
                tksqsj_model.TKQJSZ = tksqsj.TKQJSZ;//调课前结束周   校历周表
                tksqsj_model.TKQXQ = tksqsj.TKQXQ;//调课前星期   星期代码
                tksqsj_model.TKQSD = tksqsj.TKQSD;//调课前时段   时段代码
                tksqsj_model.TKQJC = tksqsj.TKQJC;//调课前节次   节次代码
                tksqsj_model.TKHQSZ = tksqsj.TKHQSZ;//调课后起始周   校历周表
                tksqsj_model.TKHJSZ = tksqsj.TKHJSZ;//调课后结束周   校历周表
                tksqsj_model.TKHXQ = tksqsj.TKHXQ;//调课后星期   星期代码
                tksqsj_model.TKHSD = tksqsj.TKHSD;//调课后时段   时段代码
                tksqsj_model.TKHJC = tksqsj.TKHJC;//调课后节次   节次代码
                tksqsj_model.ZT = tksqsj.ZT;//当前状态
                tksqsj_model.BZ = tksqsj.BZ;//备注
                db_zzjx.Entry(tksqsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.Add(tksqsj);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZJ_XQLst = ZJLDAL.GetZJ_XQSelLst();
            ViewBag.ZJ_SDLst = ZJLDAL.GetZJ_SDSelLst();
            ViewBag.ZJ_JCLst = ZJLDAL.GetZJ_JCSelLst();
            ViewBag.ZJ_XQLst = ZJLDAL.GetZJ_XQSelLst();
            ViewBag.ZJ_SDLst = ZJLDAL.GetZJ_SDSelLst();
            ViewBag.ZJ_JCLst = ZJLDAL.GetZJ_JCSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_08_A01_TKSQSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_08_A01_TKSQSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_08_A01_TKSQSJ tksqsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTksqsj(tksqsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tksqsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tksqsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_08_A01_TKSQSJ tksqsj= db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tksqsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_08_A01_TKSQSJ tksqsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdTksqsj(tksqsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tksqsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tksqsj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_08_A01_TKSQSJ tksqsj = db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.Remove(tksqsj);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_08_A01_TKSQSJ tksqsj = db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.Remove(tksqsj);
                    db_zzjx.SaveChanges();
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

        private static int Max_TKSQSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取调课申请数据表最大ID
        public int GetMax_TKSQSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TKSQSJ_ID == 0)
                {
                    EDU_ZZJX_08_A01_TKSQSJ tksqsj = db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.FirstOrDefault();
                    if (tksqsj == null)
                    {
                        Max_TKSQSJ_ID = 1;
                    }
                    else
                    {
                        //Max_TKSQSJ_ID = db_zzjx.EDU_ZZJX_08_A01_TKSQSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TKSQSJ_ID++;
                }
                maxId = Max_TKSQSJ_ID;
            }
            return maxId;
        }

    }
}
