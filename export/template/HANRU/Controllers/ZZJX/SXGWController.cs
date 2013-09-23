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
    public class SXGWController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A04_SXGW_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A04_SXGW_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxgw(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            sxgw.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxgw(sxgw);
        }

        public void UpdSxgw(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            //设置默认值
            if (sxgw.ID == 0) sxgw.ID = 0;//实习岗位ID
            if (sxgw.SCHOOLID == 0) sxgw.SCHOOLID = 0;//学校ID   学校配置表
            if (sxgw.QYID == 0) sxgw.QYID = 0;//企业ID   校外实习基地信息数据子类表
            if (string.IsNullOrEmpty(sxgw.GWMC)) sxgw.GWMC = "";//岗位名称
            if (sxgw.QYMC == 0) sxgw.QYMC = 0;//企业名称
            if (sxgw.ZPKSSJ == 0) sxgw.ZPKSSJ = 0;//招聘开始时间
            if (sxgw.ZPJSSJ == 0) sxgw.ZPJSSJ = 0;//招聘结束时间
            if (sxgw.GZXS == 0) sxgw.GZXS = 0;//工作形式
            if (string.IsNullOrEmpty(sxgw.XBYQ)) sxgw.XBYQ = "";//性别要求
            if (string.IsNullOrEmpty(sxgw.GWXC)) sxgw.GWXC = "";//岗位薪酬
            if (string.IsNullOrEmpty(sxgw.WYYQ)) sxgw.WYYQ = "";//外语要求
            if (string.IsNullOrEmpty(sxgw.GZDD)) sxgw.GZDD = "";//工作地点
            if (string.IsNullOrEmpty(sxgw.JSJSP)) sxgw.JSJSP = "";//计算机水平
            if (sxgw.ZPRS == 0) sxgw.ZPRS = 0;//招聘人数
            if (string.IsNullOrEmpty(sxgw.XLYQ)) sxgw.XLYQ = "";//学历要求
            if (string.IsNullOrEmpty(sxgw.ZYYQ)) sxgw.ZYYQ = "";//专业要求
            if (sxgw.NLYQ == 0) sxgw.NLYQ = 0;//年龄要求
            if (string.IsNullOrEmpty(sxgw.GWJJ)) sxgw.GWJJ = "";//岗位简介
            if (string.IsNullOrEmpty(sxgw.JBQK)) sxgw.JBQK = "";//基本情况
            if (string.IsNullOrEmpty(sxgw.GZJY)) sxgw.GZJY = "";//工作经验
            if (sxgw.SHZT == 0) sxgw.SHZT = 0;//审核状态
            if (sxgw.GWZT == 0) sxgw.GWZT = 0;//岗位状态
            EDU_ZZJX_07_A04_SXGW sxgw_model = db_zzjx.EDU_ZZJX_07_A04_SXGW.FirstOrDefault(e => e.ID == sxgw.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxgw_model != null)
            {
                sxgw_model.ID = sxgw.ID;//实习岗位ID
                sxgw_model.SCHOOLID = sxgw.SCHOOLID;//学校ID   学校配置表
                sxgw_model.QYID = sxgw.QYID;//企业ID   校外实习基地信息数据子类表
                sxgw_model.GWMC = sxgw.GWMC;//岗位名称
                sxgw_model.QYMC = sxgw.QYMC;//企业名称
                sxgw_model.ZPKSSJ = sxgw.ZPKSSJ;//招聘开始时间
                sxgw_model.ZPJSSJ = sxgw.ZPJSSJ;//招聘结束时间
                sxgw_model.GZXS = sxgw.GZXS;//工作形式
                sxgw_model.XBYQ = sxgw.XBYQ;//性别要求
                sxgw_model.GWXC = sxgw.GWXC;//岗位薪酬
                sxgw_model.WYYQ = sxgw.WYYQ;//外语要求
                sxgw_model.GZDD = sxgw.GZDD;//工作地点
                sxgw_model.JSJSP = sxgw.JSJSP;//计算机水平
                sxgw_model.ZPRS = sxgw.ZPRS;//招聘人数
                sxgw_model.XLYQ = sxgw.XLYQ;//学历要求
                sxgw_model.ZYYQ = sxgw.ZYYQ;//专业要求
                sxgw_model.NLYQ = sxgw.NLYQ;//年龄要求
                sxgw_model.GWJJ = sxgw.GWJJ;//岗位简介
                sxgw_model.JBQK = sxgw.JBQK;//基本情况
                sxgw_model.GZJY = sxgw.GZJY;//工作经验
                sxgw_model.SHZT = sxgw.SHZT;//审核状态
                sxgw_model.GWZT = sxgw.GWZT;//岗位状态
                db_zzjx.Entry(sxgw_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_A04_SXGW.Add(sxgw);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A04_SXGW());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A04_SXGW());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxgw(sxgw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxgw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxgw);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A04_SXGW sxgw= db_zzjx.EDU_ZZJX_07_A04_SXGW.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxgw);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxgw(sxgw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxgw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxgw);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_07_A04_SXGW sxgw = db_zzjx.EDU_ZZJX_07_A04_SXGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A04_SXGW.Remove(sxgw);
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
                    EDU_ZZJX_07_A04_SXGW sxgw = db_zzjx.EDU_ZZJX_07_A04_SXGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A04_SXGW.Remove(sxgw);
                    db_zzjx.SaveChanges();
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

        private static int Max_SXGW_ID = 0;
        private static object syncIDLock = new object();
        //获取实习岗位表最大ID
        public int GetMax_SXGW_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXGW_ID == 0)
                {
                    EDU_ZZJX_07_A04_SXGW sxgw = db_zzjx.EDU_ZZJX_07_A04_SXGW.FirstOrDefault();
                    if (sxgw == null)
                    {
                        Max_SXGW_ID = 1;
                    }
                    else
                    {
                        //Max_SXGW_ID = db_zzjx.EDU_ZZJX_07_A04_SXGW.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXGW_ID++;
                }
                maxId = Max_SXGW_ID;
            }
            return maxId;
        }

    }
}
