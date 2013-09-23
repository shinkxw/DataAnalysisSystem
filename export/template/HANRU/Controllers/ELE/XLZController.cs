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
    public class XLZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_05_XLZ_DISP> model = db_ele.VIEW_EDU_ELE_05_XLZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXlz(EDU_ELE_05_XLZ xlz)
        {
            xlz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXlz(xlz);
        }

        public void UpdXlz(EDU_ELE_05_XLZ xlz)
        {
            //����Ĭ��ֵ
            if (xlz.ID == 0) xlz.ID = 0;//���
            if (xlz.SCHOOLID == 0) xlz.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xlz.XLID == 0) xlz.XLID = 0;//У��ID   У����
            if (string.IsNullOrEmpty(xlz.NAME)) xlz.NAME = "";//У��������
            if (xlz.STARTDAY == 0) xlz.STARTDAY = 0;//��ʼ����
            if (xlz.ENDDAY == 0) xlz.ENDDAY = 0;//��������
            if (string.IsNullOrEmpty(xlz.ZJH)) xlz.ZJH = "";//�ܼƻ�
            EDU_ELE_05_XLZ xlz_model = db_ele.EDU_ELE_05_XLZ.FirstOrDefault(e => e.ID == xlz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xlz_model != null)
            {
                xlz_model.ID = xlz.ID;//���
                xlz_model.SCHOOLID = xlz.SCHOOLID;//ѧУID   ѧУ���ñ�
                xlz_model.XLID = xlz.XLID;//У��ID   У����
                xlz_model.NAME = xlz.NAME;//У��������
                xlz_model.STARTDAY = xlz.STARTDAY;//��ʼ����
                xlz_model.ENDDAY = xlz.ENDDAY;//��������
                xlz_model.ZJH = xlz.ZJH;//�ܼƻ�
                db_ele.Entry(xlz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_05_XLZ.Add(xlz);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_05_XLZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_05_XLZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_05_XLZ xlz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXlz(xlz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xlz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xlz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_05_XLZ xlz= db_ele.EDU_ELE_05_XLZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xlz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_05_XLZ xlz)
        {
            InitViewBag();
            try
            {
                
                
                UpdXlz(xlz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xlz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xlz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_05_XLZ xlz = db_ele.EDU_ELE_05_XLZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_05_XLZ.Remove(xlz);
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
                    EDU_ELE_05_XLZ xlz = db_ele.EDU_ELE_05_XLZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_05_XLZ.Remove(xlz);
                    db_ele.SaveChanges();
                }
                return "ɾ���ɹ���"
;            }
            catch (DbEntityValidationException dbEx)
            {
                return "ɾ������" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "ɾ������" + e.Message;
            }
        }

        private static int Max_XLZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡУ���ܱ����ID
        public int GetMax_XLZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XLZ_ID == 0)
                {
                    EDU_ELE_05_XLZ xlz = db_ele.EDU_ELE_05_XLZ.FirstOrDefault();
                    if (xlz == null)
                    {
                        Max_XLZ_ID = 1;
                    }
                    else
                    {
                        //Max_XLZ_ID = db_ele.EDU_ELE_05_XLZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XLZ_ID++;
                }
                maxId = Max_XLZ_ID;
            }
            return maxId;
        }

    }
}
