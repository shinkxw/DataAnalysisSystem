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
    public class XWSXJDXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXwsxjdxx(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            xwsxjdxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXwsxjdxx(xwsxjdxx);
        }

        public void UpdXwsxjdxx(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            //设置默认值
            if (xwsxjdxx.SCHOOLID == 0) xwsxjdxx.SCHOOLID = 0;//学校名   学校配置表
            if (xwsxjdxx.ID == 0) xwsxjdxx.ID = 0;//企业表ID
            if (string.IsNullOrEmpty(xwsxjdxx.QYBH)) xwsxjdxx.QYBH = "";//企业编号
            if (string.IsNullOrEmpty(xwsxjdxx.JDHZHTBH)) xwsxjdxx.JDHZHTBH = "";//基地合作合同编号
            if (string.IsNullOrEmpty(xwsxjdxx.JDHZHTMC)) xwsxjdxx.JDHZHTMC = "";//基地合作合同名称
            if (string.IsNullOrEmpty(xwsxjdxx.JDLBM)) xwsxjdxx.JDLBM = "";//基地类别码   实习基地类别代码
            if (string.IsNullOrEmpty(xwsxjdxx.DWMC)) xwsxjdxx.DWMC = "";//单位名称
            if (string.IsNullOrEmpty(xwsxjdxx.QYXZQ)) xwsxjdxx.QYXZQ = "";//企业行政区   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(xwsxjdxx.QYDZ)) xwsxjdxx.QYDZ = "";//企业地址
            if (string.IsNullOrEmpty(xwsxjdxx.QYXZ)) xwsxjdxx.QYXZ = "";//企业性质   经济类型分类与代码
            if (string.IsNullOrEmpty(xwsxjdxx.FRDB)) xwsxjdxx.FRDB = "";//法人代表
            if (string.IsNullOrEmpty(xwsxjdxx.QYLXR)) xwsxjdxx.QYLXR = "";//企业联系人
            if (string.IsNullOrEmpty(xwsxjdxx.QYYZBM)) xwsxjdxx.QYYZBM = "";//企业邮政编码
            if (string.IsNullOrEmpty(xwsxjdxx.QYLXDH)) xwsxjdxx.QYLXDH = "";//企业联系电话
            if (string.IsNullOrEmpty(xwsxjdxx.QYYYZZ)) xwsxjdxx.QYYYZZ = "";//企业营业执照
            if (string.IsNullOrEmpty(xwsxjdxx.QYLX)) xwsxjdxx.QYLX = "";//企业类型
            if (xwsxjdxx.QYRS == 0) xwsxjdxx.QYRS = 0;//企业人数
            if (string.IsNullOrEmpty(xwsxjdxx.QYZCZJ)) xwsxjdxx.QYZCZJ = "";//企业注册资金
            if (string.IsNullOrEmpty(xwsxjdxx.QYCZ)) xwsxjdxx.QYCZ = "";//企业传真
            if (string.IsNullOrEmpty(xwsxjdxx.QYFZR)) xwsxjdxx.QYFZR = "";//企业负责人
            if (string.IsNullOrEmpty(xwsxjdxx.FZRZW)) xwsxjdxx.FZRZW = "";//负责人职位
            if (string.IsNullOrEmpty(xwsxjdxx.FZRLXDH)) xwsxjdxx.FZRLXDH = "";//负责人联系电话
            if (string.IsNullOrEmpty(xwsxjdxx.QYYXDZ)) xwsxjdxx.QYYXDZ = "";//企业邮箱地址
            if (string.IsNullOrEmpty(xwsxjdxx.QYQQ)) xwsxjdxx.QYQQ = "";//企业QQ
            if (string.IsNullOrEmpty(xwsxjdxx.QYMSN)) xwsxjdxx.QYMSN = "";//企业MSN
            if (string.IsNullOrEmpty(xwsxjdxx.QYWZ)) xwsxjdxx.QYWZ = "";//企业网址
            if (string.IsNullOrEmpty(xwsxjdxx.QYJJ)) xwsxjdxx.QYJJ = "";//企业简介
            if (xwsxjdxx.SHZT == 0) xwsxjdxx.SHZT = 0;//审核状态
            EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx_model = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.FirstOrDefault(e => e.SCHOOLID == xwsxjdxx.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xwsxjdxx_model != null)
            {
                xwsxjdxx_model.SCHOOLID = xwsxjdxx.SCHOOLID;//学校名   学校配置表
                xwsxjdxx_model.ID = xwsxjdxx.ID;//企业表ID
                xwsxjdxx_model.QYBH = xwsxjdxx.QYBH;//企业编号
                xwsxjdxx_model.JDHZHTBH = xwsxjdxx.JDHZHTBH;//基地合作合同编号
                xwsxjdxx_model.JDHZHTMC = xwsxjdxx.JDHZHTMC;//基地合作合同名称
                xwsxjdxx_model.JDLBM = xwsxjdxx.JDLBM;//基地类别码   实习基地类别代码
                xwsxjdxx_model.DWMC = xwsxjdxx.DWMC;//单位名称
                xwsxjdxx_model.QYXZQ = xwsxjdxx.QYXZQ;//企业行政区   中华人民共和国行政区划代码
                xwsxjdxx_model.QYDZ = xwsxjdxx.QYDZ;//企业地址
                xwsxjdxx_model.QYXZ = xwsxjdxx.QYXZ;//企业性质   经济类型分类与代码
                xwsxjdxx_model.FRDB = xwsxjdxx.FRDB;//法人代表
                xwsxjdxx_model.QYLXR = xwsxjdxx.QYLXR;//企业联系人
                xwsxjdxx_model.QYYZBM = xwsxjdxx.QYYZBM;//企业邮政编码
                xwsxjdxx_model.QYLXDH = xwsxjdxx.QYLXDH;//企业联系电话
                xwsxjdxx_model.QYYYZZ = xwsxjdxx.QYYYZZ;//企业营业执照
                xwsxjdxx_model.QYLX = xwsxjdxx.QYLX;//企业类型
                xwsxjdxx_model.QYRS = xwsxjdxx.QYRS;//企业人数
                xwsxjdxx_model.QYZCZJ = xwsxjdxx.QYZCZJ;//企业注册资金
                xwsxjdxx_model.QYCZ = xwsxjdxx.QYCZ;//企业传真
                xwsxjdxx_model.QYFZR = xwsxjdxx.QYFZR;//企业负责人
                xwsxjdxx_model.FZRZW = xwsxjdxx.FZRZW;//负责人职位
                xwsxjdxx_model.FZRLXDH = xwsxjdxx.FZRLXDH;//负责人联系电话
                xwsxjdxx_model.QYYXDZ = xwsxjdxx.QYYXDZ;//企业邮箱地址
                xwsxjdxx_model.QYQQ = xwsxjdxx.QYQQ;//企业QQ
                xwsxjdxx_model.QYMSN = xwsxjdxx.QYMSN;//企业MSN
                xwsxjdxx_model.QYWZ = xwsxjdxx.QYWZ;//企业网址
                xwsxjdxx_model.QYJJ = xwsxjdxx.QYJJ;//企业简介
                xwsxjdxx_model.SHZT = xwsxjdxx.SHZT;//审核状态
                db_zzjx.Entry(xwsxjdxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Add(xwsxjdxx);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZZ_SXJDLBLst = ZZBLDAL.GetZZ_SXJDLBSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_JJLXFLLst = GBLDAL.GetGB_JJLXFLSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_01_XWSXJDXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_01_XWSXJDXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXwsxjdxx(xwsxjdxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xwsxjdxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xwsxjdxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx= db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xwsxjdxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXwsxjdxx(xwsxjdxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xwsxjdxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xwsxjdxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Remove(xwsxjdxx);
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
                    EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Remove(xwsxjdxx);
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

        private static int Max_XWSXJDXX_ID = 0;
        private static object syncIDLock = new object();
        //获取校外实习基地信息数据子类表最大ID
        public int GetMax_XWSXJDXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XWSXJDXX_ID == 0)
                {
                    EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.FirstOrDefault();
                    if (xwsxjdxx == null)
                    {
                        Max_XWSXJDXX_ID = 1;
                    }
                    else
                    {
                        //Max_XWSXJDXX_ID = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XWSXJDXX_ID++;
                }
                maxId = Max_XWSXJDXX_ID;
            }
            return maxId;
        }

    }
}
