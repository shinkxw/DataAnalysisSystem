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
    public class XQController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_01_XQ_DISP> model = db_ele.VIEW_EDU_ELE_01_XQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXq(EDU_ELE_01_XQ xq)
        {
            xq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXq(xq);
        }

        public void UpdXq(EDU_ELE_01_XQ xq)
        {
            //����Ĭ��ֵ
            if (xq.ID == 0) xq.ID = 0;//���
            if (xq.SCHOOLID == 0) xq.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xq.XNID == 0) xq.XNID = 0;//ѧ��   ѧ���
            if (string.IsNullOrEmpty(xq.XQM)) xq.XQM = "";//ѧ����   ѧ�ڴ����
            if (string.IsNullOrEmpty(xq.XQMC)) xq.XQMC = "";//ѧ������
            if (string.IsNullOrEmpty(xq.XQKSRQ)) xq.XQKSRQ = "";//ѧ�ڿ�ʼ����
            if (string.IsNullOrEmpty(xq.XQJSRQ)) xq.XQJSRQ = "";//ѧ�ڽ�������
            EDU_ELE_01_XQ xq_model = db_ele.EDU_ELE_01_XQ.FirstOrDefault(e => e.ID == xq.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xq_model != null)
            {
                xq_model.ID = xq.ID;//���
                xq_model.SCHOOLID = xq.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xq_model.XNID = xq.XNID;//ѧ��   ѧ���
                xq_model.XQM = xq.XQM;//ѧ����   ѧ�ڴ����
                xq_model.XQMC = xq.XQMC;//ѧ������
                xq_model.XQKSRQ = xq.XQKSRQ;//ѧ�ڿ�ʼ����
                xq_model.XQJSRQ = xq.XQJSRQ;//ѧ�ڽ�������
                db_ele.Entry(xq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_01_XQ.Add(xq);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XQLst = JBLDAL.GetJY_XQSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_01_XQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_01_XQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_01_XQ xq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXq(xq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_01_XQ xq= db_ele.EDU_ELE_01_XQ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_01_XQ xq)
        {
            InitViewBag();
            try
            {
                
                
                UpdXq(xq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xq);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_01_XQ xq = db_ele.EDU_ELE_01_XQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_01_XQ.Remove(xq);
                db_ele.SaveChanges();
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
                    EDU_ELE_01_XQ xq = db_ele.EDU_ELE_01_XQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_01_XQ.Remove(xq);
                    db_ele.SaveChanges();
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

        private static int Max_XQ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ�����ݱ����ID
        public int GetMax_XQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XQ_ID == 0)
                {
                    EDU_ELE_01_XQ xq = db_ele.EDU_ELE_01_XQ.FirstOrDefault();
                    if (xq == null)
                    {
                        Max_XQ_ID = 1;
                    }
                    else
                    {
                        //Max_XQ_ID = db_ele.EDU_ELE_01_XQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XQ_ID++;
                }
                maxId = Max_XQ_ID;
            }
            return maxId;
        }

    }
}
