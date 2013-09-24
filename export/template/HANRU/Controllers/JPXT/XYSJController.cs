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
    public class XYSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_03_01_XYSJ_DISP> model = db_jpxt.VIEW_EDU_JPXT_03_01_XYSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXysj(EDU_JPXT_03_01_XYSJ xysj)
        {
            xysj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXysj(xysj);
        }

        public void UpdXysj(EDU_JPXT_03_01_XYSJ xysj)
        {
            //设置默认值
            if (xysj.ID == 0) xysj.ID = 0;//编号
            if (xysj.SCHOOLID == 0) xysj.SCHOOLID = 0;//学校ID   学校配置表
            if (string.IsNullOrEmpty(xysj.XM)) xysj.XM = "";//姓名
            if (string.IsNullOrEmpty(xysj.SFZH)) xysj.SFZH = "";//身份证号
            if (string.IsNullOrEmpty(xysj.XBM)) xysj.XBM = "";//性别码   人的性别代码
            if (string.IsNullOrEmpty(xysj.LXDH)) xysj.LXDH = "";//联系电话
            if (string.IsNullOrEmpty(xysj.ZZ)) xysj.ZZ = "";//住址
            if (string.IsNullOrEmpty(xysj.SFQK)) xysj.SFQK = "";//缴费情况
            if (xysj.SXCXID == 0) xysj.SXCXID = 0;//所选车型ID   车辆型号数据表
            if (string.IsNullOrEmpty(xysj.ZJQK)) xysj.ZJQK = "";//增加情况
            if (xysj.SZJLCID == 0) xysj.SZJLCID = 0;//所属教练员ID   教练员数据表
            if (xysj.YJJLYID == 0) xysj.YJJLYID = 0;//引荐教练员ID   教练员数据表
            if (xysj.DQZT == 0) xysj.DQZT = 0;//当前状态
            EDU_JPXT_03_01_XYSJ xysj_model = db_jpxt.EDU_JPXT_03_01_XYSJ.FirstOrDefault(e => e.ID == xysj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xysj_model != null)
            {
                xysj_model.ID = xysj.ID;//编号
                xysj_model.SCHOOLID = xysj.SCHOOLID;//学校ID   学校配置表
                xysj_model.XM = xysj.XM;//姓名
                xysj_model.SFZH = xysj.SFZH;//身份证号
                xysj_model.XBM = xysj.XBM;//性别码   人的性别代码
                xysj_model.LXDH = xysj.LXDH;//联系电话
                xysj_model.ZZ = xysj.ZZ;//住址
                xysj_model.BMSJ = xysj.BMSJ;//报名时间
                xysj_model.SFQK = xysj.SFQK;//缴费情况
                xysj_model.SXCXID = xysj.SXCXID;//所选车型ID   车辆型号数据表
                xysj_model.ZJQK = xysj.ZJQK;//增加情况
                xysj_model.SZJLCID = xysj.SZJLCID;//所属教练员ID   教练员数据表
                xysj_model.YJJLYID = xysj.YJJLYID;//引荐教练员ID   教练员数据表
                xysj_model.DQZT = xysj.DQZT;//当前状态
                xysj_model.BYSJ = xysj.BYSJ;//毕业时间
                db_jpxt.Entry(xysj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_jpxt.EDU_JPXT_03_01_XYSJ.Add(xysj);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_03_01_XYSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_03_01_XYSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_03_01_XYSJ xysj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXysj(xysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xysj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_03_01_XYSJ xysj= db_jpxt.EDU_JPXT_03_01_XYSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xysj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_03_01_XYSJ xysj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXysj(xysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xysj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_03_01_XYSJ xysj = db_jpxt.EDU_JPXT_03_01_XYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_03_01_XYSJ.Remove(xysj);
                db_jpxt.SaveChanges();
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
                    EDU_JPXT_03_01_XYSJ xysj = db_jpxt.EDU_JPXT_03_01_XYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_03_01_XYSJ.Remove(xysj);
                    db_jpxt.SaveChanges();
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

        private static int Max_XYSJ_ID = 0;
        private static object syncIDLock = new object();
        //获取学员数据表最大ID
        public int GetMax_XYSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XYSJ_ID == 0)
                {
                    EDU_JPXT_03_01_XYSJ xysj = db_jpxt.EDU_JPXT_03_01_XYSJ.FirstOrDefault();
                    if (xysj == null)
                    {
                        Max_XYSJ_ID = 1;
                    }
                    else
                    {
                        //Max_XYSJ_ID = db_jpxt.EDU_JPXT_03_01_XYSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XYSJ_ID++;
                }
                maxId = Max_XYSJ_ID;
            }
            return maxId;
        }

    }
}
