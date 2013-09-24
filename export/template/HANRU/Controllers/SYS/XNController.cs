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
    public class XNController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_SYS_01_XN_DISP> model = db_sys.VIEW_EDU_SYS_01_XN_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXn(EDU_SYS_01_XN xn)
        {
            xn.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXn(xn);
        }

        public void UpdXn(EDU_SYS_01_XN xn)
        {
            //����Ĭ��ֵ
            if (xn.ID == 0) xn.ID = 0;//���
            if (xn.SCHOOLID == 0) xn.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(xn.XN)) xn.XN = "";//ѧ��
            EDU_SYS_01_XN xn_model = db_sys.EDU_SYS_01_XN.FirstOrDefault(e => e.ID == xn.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xn_model != null)
            {
                xn_model.ID = xn.ID;//���
                xn_model.SCHOOLID = xn.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xn_model.XN = xn.XN;//ѧ��
                db_sys.Entry(xn_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_sys.EDU_SYS_01_XN.Add(xn);
            }
            db_sys.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_SYS_01_XN());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_SYS_01_XN());
        }

        [HttpPost]
        public ActionResult Create(EDU_SYS_01_XN xn)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXn(xn);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xn);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xn);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_SYS_01_XN xn= db_sys.EDU_SYS_01_XN.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xn);
        }

        [HttpPost]
        public ActionResult Edit(EDU_SYS_01_XN xn)
        {
            InitViewBag();
            try
            {
                
                
                UpdXn(xn);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xn);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xn);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_SYS_01_XN xn = db_sys.EDU_SYS_01_XN.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_sys.EDU_SYS_01_XN.Remove(xn);
                db_sys.SaveChanges();
                return "ɾ���ɹ���";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "ɾ������" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "ɾ������" + e.Message;
            }
        }*/

        public String Delete(String idLst)
        {
            try
            {
                int[] idlst = Utils.Utils.GetSafeIdsArr(idLst, LDALConstant.DefSpear);
                foreach (int id in idlst)
                {
                    EDU_SYS_01_XN xn = db_sys.EDU_SYS_01_XN.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_sys.EDU_SYS_01_XN.Remove(xn);
                    db_sys.SaveChanges();
                }
                return "ɾ���ɹ���";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "ɾ������" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "ɾ������" + e.Message;
            }
        }

        private static int Max_XN_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ������ID
        public int GetMax_XN_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XN_ID == 0)
                {
                    EDU_SYS_01_XN xn = db_sys.EDU_SYS_01_XN.FirstOrDefault();
                    if (xn == null)
                    {
                        Max_XN_ID = 1;
                    }
                    else
                    {
                        //Max_XN_ID = db_sys.EDU_SYS_01_XN.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XN_ID++;
                }
                maxId = Max_XN_ID;
            }
            return maxId;
        }

    }
}
