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
    public class ZZXXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXX_01_01_ZZXX_DISP> model = db_zzxx.VIEW_EDU_ZZXX_01_01_ZZXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzxx(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            zzxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzxx(zzxx);
        }

        public void UpdZzxx(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            //设置默认值
            if (zzxx.ID == 0) zzxx.ID = 0;//编号
            if (string.IsNullOrEmpty(zzxx.XXDM)) zzxx.XXDM = "";//学校代码
            if (string.IsNullOrEmpty(zzxx.XXMC)) zzxx.XXMC = "";//学校名称
            if (string.IsNullOrEmpty(zzxx.XXYWMC)) zzxx.XXYWMC = "";//学校英文名称
            if (string.IsNullOrEmpty(zzxx.XXJBZM)) zzxx.XXJBZM = "";//学校举办者码   学校（教育机构）举办者代码表
            if (string.IsNullOrEmpty(zzxx.XXZGBMM)) zzxx.XXZGBMM = "";//学校主管部门码   学校（教育机构）举办者代码表
            if (string.IsNullOrEmpty(zzxx.XXDZ)) zzxx.XXDZ = "";//学校地址
            if (string.IsNullOrEmpty(zzxx.XXYZBM)) zzxx.XXYZBM = "";//学校邮政编码
            if (string.IsNullOrEmpty(zzxx.XZQHM)) zzxx.XZQHM = "";//行政区划码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(zzxx.JXNY)) zzxx.JXNY = "";//建校年月
            if (string.IsNullOrEmpty(zzxx.XQR)) zzxx.XQR = "";//校庆日
            if (string.IsNullOrEmpty(zzxx.CLBJ)) zzxx.CLBJ = "";//成立背景
            if (string.IsNullOrEmpty(zzxx.LSYG)) zzxx.LSYG = "";//历史沿革
            if (zzxx.XXXQS == 0) zzxx.XXXQS = 0;//学校校区数
            if (string.IsNullOrEmpty(zzxx.XXPGLX)) zzxx.XXPGLX = "";//学校评估类型   评估情况代码
            if (string.IsNullOrEmpty(zzxx.XXPGQKSM)) zzxx.XXPGQKSM = "";//学校评估情况说明
            if (string.IsNullOrEmpty(zzxx.ZYDZ)) zzxx.ZYDZ = "";//主页地址
            if (string.IsNullOrEmpty(zzxx.FDDBRH)) zzxx.FDDBRH = "";//法定代表人号
            if (string.IsNullOrEmpty(zzxx.FRZSH)) zzxx.FRZSH = "";//法人证书号
            if (string.IsNullOrEmpty(zzxx.LXDH)) zzxx.LXDH = "";//联系电话
            if (string.IsNullOrEmpty(zzxx.CZDH)) zzxx.CZDH = "";//传真电话
            if (string.IsNullOrEmpty(zzxx.DZXX)) zzxx.DZXX = "";//电子信箱
            EDU_ZZXX_01_01_ZZXX zzxx_model = db_zzxx.EDU_ZZXX_01_01_ZZXX.FirstOrDefault(e => e.ID == zzxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzxx_model != null)
            {
                zzxx_model.ID = zzxx.ID;//编号
                zzxx_model.XXDM = zzxx.XXDM;//学校代码
                zzxx_model.XXMC = zzxx.XXMC;//学校名称
                zzxx_model.XXYWMC = zzxx.XXYWMC;//学校英文名称
                zzxx_model.XXJBZM = zzxx.XXJBZM;//学校举办者码   学校（教育机构）举办者代码表
                zzxx_model.XXZGBMM = zzxx.XXZGBMM;//学校主管部门码   学校（教育机构）举办者代码表
                zzxx_model.XXDZ = zzxx.XXDZ;//学校地址
                zzxx_model.XXYZBM = zzxx.XXYZBM;//学校邮政编码
                zzxx_model.XZQHM = zzxx.XZQHM;//行政区划码   中华人民共和国行政区划代码
                zzxx_model.JXNY = zzxx.JXNY;//建校年月
                zzxx_model.XQR = zzxx.XQR;//校庆日
                zzxx_model.CLBJ = zzxx.CLBJ;//成立背景
                zzxx_model.LSYG = zzxx.LSYG;//历史沿革
                zzxx_model.XXXQS = zzxx.XXXQS;//学校校区数
                zzxx_model.XXPGLX = zzxx.XXPGLX;//学校评估类型   评估情况代码
                zzxx_model.XXPGQKSM = zzxx.XXPGQKSM;//学校评估情况说明
                zzxx_model.ZYDZ = zzxx.ZYDZ;//主页地址
                zzxx_model.FDDBRH = zzxx.FDDBRH;//法定代表人号
                zzxx_model.FRZSH = zzxx.FRZSH;//法人证书号
                zzxx_model.LXDH = zzxx.LXDH;//联系电话
                zzxx_model.CZDH = zzxx.CZDH;//传真电话
                zzxx_model.DZXX = zzxx.DZXX;//电子信箱
                db_zzxx.Entry(zzxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzxx.EDU_ZZXX_01_01_ZZXX.Add(zzxx);
            }
            db_zzxx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.ZZ_PGQKLst = ZZBLDAL.GetZZ_PGQKSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXX_01_01_ZZXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXX_01_01_ZZXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzxx(zzxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXX_01_01_ZZXX zzxx= db_zzxx.EDU_ZZXX_01_01_ZZXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzxx(zzxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXX_01_01_ZZXX zzxx = db_zzxx.EDU_ZZXX_01_01_ZZXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxx.EDU_ZZXX_01_01_ZZXX.Remove(zzxx);
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
                    EDU_ZZXX_01_01_ZZXX zzxx = db_zzxx.EDU_ZZXX_01_01_ZZXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxx.EDU_ZZXX_01_01_ZZXX.Remove(zzxx);
                    db_zzxx.SaveChanges();
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

        private static int Max_ZZXX_ID = 0;
        private static object syncIDLock = new object();
        //获取学校基本数据表最大ID
        public int GetMax_ZZXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZXX_ID == 0)
                {
                    EDU_ZZXX_01_01_ZZXX zzxx = db_zzxx.EDU_ZZXX_01_01_ZZXX.FirstOrDefault();
                    if (zzxx == null)
                    {
                        Max_ZZXX_ID = 1;
                    }
                    else
                    {
                        //Max_ZZXX_ID = db_zzxx.EDU_ZZXX_01_01_ZZXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZXX_ID++;
                }
                maxId = Max_ZZXX_ID;
            }
            return maxId;
        }

    }
}
