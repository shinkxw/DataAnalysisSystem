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
    public class HQController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_03_03_HQ_DISP> model = db_oaxt.VIEW_EDU_OAXT_03_03_HQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddHq(EDU_OAXT_03_03_HQ hq)
        {
            hq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdHq(hq);
        }

        public void UpdHq(EDU_OAXT_03_03_HQ hq)
        {
            //����Ĭ��ֵ
            if (hq.SCHOOLID == 0) hq.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (hq.WJID == 0) hq.WJID = 0;//�ļ�ID   �ļ������������
            if (string.IsNullOrEmpty(hq.HQRID)) hq.HQRID = "";//��ǩ��ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(hq.HQR)) hq.HQR = "";//��ǩ��
            if (string.IsNullOrEmpty(hq.HQDW)) hq.HQDW = "";//��ǩ��λ
            if (string.IsNullOrEmpty(hq.HQYJ)) hq.HQYJ = "";//��ǩ���
            if (string.IsNullOrEmpty(hq.HQRQ)) hq.HQRQ = "";//��ǩ����
            EDU_OAXT_03_03_HQ hq_model = db_oaxt.EDU_OAXT_03_03_HQ.FirstOrDefault(e => e.SCHOOLID == hq.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (hq_model != null)
            {
                hq_model.SCHOOLID = hq.SCHOOLID;//ѧУ��   ѧУ���ñ�
                hq_model.WJID = hq.WJID;//�ļ�ID   �ļ������������
                hq_model.HQRID = hq.HQRID;//��ǩ��ID   Ӧ��ϵͳ�û���
                hq_model.HQR = hq.HQR;//��ǩ��
                hq_model.HQDW = hq.HQDW;//��ǩ��λ
                hq_model.HQYJ = hq.HQYJ;//��ǩ���
                hq_model.HQRQ = hq.HQRQ;//��ǩ����
                db_oaxt.Entry(hq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_oaxt.EDU_OAXT_03_03_HQ.Add(hq);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_03_03_HQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_03_03_HQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_03_03_HQ hq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddHq(hq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(hq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(hq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_03_03_HQ hq= db_oaxt.EDU_OAXT_03_03_HQ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(hq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_03_03_HQ hq)
        {
            InitViewBag();
            try
            {
                
                
                UpdHq(hq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(hq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(hq);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_OAXT_03_03_HQ hq = db_oaxt.EDU_OAXT_03_03_HQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_03_03_HQ.Remove(hq);
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
                    EDU_OAXT_03_03_HQ hq = db_oaxt.EDU_OAXT_03_03_HQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_03_03_HQ.Remove(hq);
                    db_oaxt.SaveChanges();
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

        private static int Max_HQ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��ǩ��������ID
        public int GetMax_HQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_HQ_ID == 0)
                {
                    EDU_OAXT_03_03_HQ hq = db_oaxt.EDU_OAXT_03_03_HQ.FirstOrDefault();
                    if (hq == null)
                    {
                        Max_HQ_ID = 1;
                    }
                    else
                    {
                        //Max_HQ_ID = db_oaxt.EDU_OAXT_03_03_HQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_HQ_ID++;
                }
                maxId = Max_HQ_ID;
            }
            return maxId;
        }

    }
}
