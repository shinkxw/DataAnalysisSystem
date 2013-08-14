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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class ZXXQController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP> model = db_zxxx.VIEW_EDU_ZXXX_05_A01_ZXXQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZxxq(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            zxxq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZxxq(zxxq);
        }

        public void UpdZxxq(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            //����Ĭ��ֵ
            if (zxxq.ID == 0) zxxq.ID = 0;//���
            if (zxxq.SCHOOLID == 0) zxxq.SCHOOLID = 0;//ѧУ��
            if (zxxq.XNID == 0) zxxq.XNID = 0;//ѧ��EDU_SYS_01_XN
            if (string.IsNullOrEmpty(zxxq.XQM)) zxxq.XQM = "";//ѧ����EDU_JY_XQ
            if (string.IsNullOrEmpty(zxxq.XQMC)) zxxq.XQMC = "";//ѧ������
            if (string.IsNullOrEmpty(zxxq.XQKSRQ)) zxxq.XQKSRQ = "";//ѧ�ڿ�ʼ����
            if (string.IsNullOrEmpty(zxxq.XQJSRQ)) zxxq.XQJSRQ = "";//ѧ�ڽ�������
            EDU_ZXXX_05_A01_ZXXQ zxxq_model = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.FirstOrDefault(e => e.ID == zxxq.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zxxq_model != null)
            {
                zxxq_model.ID = zxxq.ID;//���
                zxxq_model.SCHOOLID = zxxq.SCHOOLID;//ѧУ��
                zxxq_model.XNID = zxxq.XNID;//ѧ��EDU_SYS_01_XN
                zxxq_model.XQM = zxxq.XQM;//ѧ����EDU_JY_XQ
                zxxq_model.XQMC = zxxq.XQMC;//ѧ������
                zxxq_model.XQKSRQ = zxxq.XQKSRQ;//ѧ�ڿ�ʼ����
                zxxq_model.XQJSRQ = zxxq.XQJSRQ;//ѧ�ڽ�������
                db_zxxx.Entry(zxxq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Add(zxxq);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_05_A01_ZXXQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_05_A01_ZXXQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZxxq(zxxq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_05_A01_ZXXQ zxxq= db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zxxq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_05_A01_ZXXQ zxxq)
        {
            InitViewBag();
            try
            {
                
                
                UpdZxxq(zxxq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxq);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXX_05_A01_ZXXQ zxxq = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Remove(zxxq);
                db_zxxx.SaveChanges();
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
                    EDU_ZXXX_05_A01_ZXXQ zxxq = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Remove(zxxq);
                    db_zxxx.SaveChanges();
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

        private static int Max_ZXXQ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ�����ݱ����ID
        public int GetMax_ZXXQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZXXQ_ID == 0)
                {
                    EDU_ZXXX_05_A01_ZXXQ zxxq = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.FirstOrDefault();
                    if (zxxq == null)
                    {
                        Max_ZXXQ_ID = 1;
                    }
                    else
                    {
                        //Max_ZXXQ_ID = db_zxxx.EDU_ZXXX_05_A01_ZXXQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZXXQ_ID++;
                }
                maxId = Max_ZXXQ_ID;
            }
            return maxId;
        }

    }
}
