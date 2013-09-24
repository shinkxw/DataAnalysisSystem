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
    public class XLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_XL_DISP> model = db_ele.VIEW_EDU_ELE_05_XL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXl(EDU_ELE_05_XL xl)
        {
            xl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXl(xl);
        }

        public void UpdXl(EDU_ELE_05_XL xl)
        {
            //����Ĭ��ֵ
            if (xl.ID == 0) xl.ID = 0;//���
            if (xl.SCHOOLID == 0) xl.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(xl.NAME)) xl.NAME = "";//У������
            if (xl.XNID == 0) xl.XNID = 0;//ѧ��ID   ѧ���
            if (xl.XQID == 0) xl.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            EDU_ELE_05_XL xl_model = db_ele.EDU_ELE_05_XL.FirstOrDefault(e => e.ID == xl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xl_model != null)
            {
                xl_model.ID = xl.ID;//���
                xl_model.SCHOOLID = xl.SCHOOLID;//ѧУID   ѧУ���ñ�
                xl_model.NAME = xl.NAME;//У������
                xl_model.STARTDAY = xl.STARTDAY;//��ʼ����
                xl_model.ENDDAY = xl.ENDDAY;//��������
                xl_model.XNID = xl.XNID;//ѧ��ID   ѧ���
                xl_model.XQID = xl.XQID;//ѧ��ID   ѧ�����ݱ�
                db_ele.Entry(xl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_05_XL.Add(xl);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_XL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_XL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_XL xl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXl(xl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_XL xl= db_ele.EDU_ELE_05_XL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_XL xl)
        {
            InitViewBag();
            try
            {
                
                
                UpdXl(xl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_05_XL xl = db_ele.EDU_ELE_05_XL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_XL.Remove(xl);
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
                    EDU_ELE_05_XL xl = db_ele.EDU_ELE_05_XL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_XL.Remove(xl);
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

        private static int Max_XL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡУ�������ID
        public int GetMax_XL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XL_ID == 0)
                {
                    EDU_ELE_05_XL xl = db_ele.EDU_ELE_05_XL.FirstOrDefault();
                    if (xl == null)
                    {
                        Max_XL_ID = 1;
                    }
                    else
                    {
                        //Max_XL_ID = db_ele.EDU_ELE_05_XL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XL_ID++;
                }
                maxId = Max_XL_ID;
            }
            return maxId;
        }

    }
}
