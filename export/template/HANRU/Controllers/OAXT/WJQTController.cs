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
    public class WJQTController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_04_01_WJQT_DISP> model = db_oaxt.VIEW_EDU_OAXT_04_01_WJQT_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjqt(EDU_OAXT_04_01_WJQT wjqt)
        {
            wjqt.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjqt(wjqt);
        }

        public void UpdWjqt(EDU_OAXT_04_01_WJQT wjqt)
        {
            //����Ĭ��ֵ
            if (wjqt.SCHOOLID == 0) wjqt.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (wjqt.WJID == 0) wjqt.WJID = 0;//�ļ�ID   �ļ������������
            if (string.IsNullOrEmpty(wjqt.JBRID)) wjqt.JBRID = "";//������ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(wjqt.QTRQ)) wjqt.QTRQ = "";//��������
            if (string.IsNullOrEmpty(wjqt.QTFW)) wjqt.QTFW = "";//���˷�Χ
            if (string.IsNullOrEmpty(wjqt.QTSM)) wjqt.QTSM = "";//����˵��
            if (string.IsNullOrEmpty(wjqt.JBRGH)) wjqt.JBRGH = "";//�����˹���
            EDU_OAXT_04_01_WJQT wjqt_model = db_oaxt.EDU_OAXT_04_01_WJQT.FirstOrDefault(e => e.SCHOOLID == wjqt.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjqt_model != null)
            {
                wjqt_model.SCHOOLID = wjqt.SCHOOLID;//ѧУ��   ѧУ���ñ�
                wjqt_model.WJID = wjqt.WJID;//�ļ�ID   �ļ������������
                wjqt_model.JBRID = wjqt.JBRID;//������ID   Ӧ��ϵͳ�û���
                wjqt_model.QTRQ = wjqt.QTRQ;//��������
                wjqt_model.QTFW = wjqt.QTFW;//���˷�Χ
                wjqt_model.QTSM = wjqt.QTSM;//����˵��
                wjqt_model.JBRGH = wjqt.JBRGH;//�����˹���
                db_oaxt.Entry(wjqt_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_oaxt.EDU_OAXT_04_01_WJQT.Add(wjqt);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_04_01_WJQT());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_04_01_WJQT());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_04_01_WJQT wjqt)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjqt(wjqt);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjqt);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjqt);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_04_01_WJQT wjqt= db_oaxt.EDU_OAXT_04_01_WJQT.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjqt);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_04_01_WJQT wjqt)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjqt(wjqt);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjqt);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjqt);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_04_01_WJQT wjqt = db_oaxt.EDU_OAXT_04_01_WJQT.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_04_01_WJQT.Remove(wjqt);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_04_01_WJQT wjqt = db_oaxt.EDU_OAXT_04_01_WJQT.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_04_01_WJQT.Remove(wjqt);
                    db_oaxt.SaveChanges();
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

        private static int Max_WJQT_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ļ���������������ID
        public int GetMax_WJQT_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJQT_ID == 0)
                {
                    EDU_OAXT_04_01_WJQT wjqt = db_oaxt.EDU_OAXT_04_01_WJQT.FirstOrDefault();
                    if (wjqt == null)
                    {
                        Max_WJQT_ID = 1;
                    }
                    else
                    {
                        //Max_WJQT_ID = db_oaxt.EDU_OAXT_04_01_WJQT.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJQT_ID++;
                }
                maxId = Max_WJQT_ID;
            }
            return maxId;
        }

    }
}
