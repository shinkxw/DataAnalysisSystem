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
    public class DGFSQController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_08_A01_DGFSQ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddDgfsq(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            dgfsq.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdDgfsq(dgfsq);
        }

        public void UpdDgfsq(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            //����Ĭ��ֵ
            if (dgfsq.SCHOOLID == 0) dgfsq.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (dgfsq.XSXXID == 0) dgfsq.XSXXID = 0;//ѧ��ID   ѧ����Ϣ���ݱ�
            if (dgfsq.XNID == 0) dgfsq.XNID = 0;//ѧ��ID   ѧ���
            if (dgfsq.YJJE == 0) dgfsq.YJJE = 0;//�ѽɽ��
            if (string.IsNullOrEmpty(dgfsq.JFRQ)) dgfsq.JFRQ = "";//�ɷ�����
            if (string.IsNullOrEmpty(dgfsq.SFYSH)) dgfsq.SFYSH = "";//�Ƿ������
            if (dgfsq.SHRID == 0) dgfsq.SHRID = 0;//�����ԱID   ��ְ���������������
            EDU_ZZJX_08_A01_DGFSQ dgfsq_model = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.FirstOrDefault(e => e.SCHOOLID == dgfsq.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (dgfsq_model != null)
            {
                dgfsq_model.SCHOOLID = dgfsq.SCHOOLID;//ѧУID   ѧУ���ñ�
                dgfsq_model.XSXXID = dgfsq.XSXXID;//ѧ��ID   ѧ����Ϣ���ݱ�
                dgfsq_model.XNID = dgfsq.XNID;//ѧ��ID   ѧ���
                dgfsq_model.YJJE = dgfsq.YJJE;//�ѽɽ��
                dgfsq_model.JFRQ = dgfsq.JFRQ;//�ɷ�����
                dgfsq_model.SFYSH = dgfsq.SFYSH;//�Ƿ������
                dgfsq_model.SHRID = dgfsq.SHRID;//�����ԱID   ��ְ���������������
                db_zzjx.Entry(dgfsq_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Add(dgfsq);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_08_A01_DGFSQ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_08_A01_DGFSQ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            InitViewBag();
            try
            {
                //
                //
                AddDgfsq(dgfsq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(dgfsq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(dgfsq);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_08_A01_DGFSQ dgfsq= db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(dgfsq);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_08_A01_DGFSQ dgfsq)
        {
            InitViewBag();
            try
            {
                
                
                UpdDgfsq(dgfsq);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(dgfsq);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(dgfsq);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_08_A01_DGFSQ dgfsq = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Remove(dgfsq);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_08_A01_DGFSQ dgfsq = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Remove(dgfsq);
                    db_zzjx.SaveChanges();
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

        private static int Max_DGFSQ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ���ܷ���ȡ�����ID
        public int GetMax_DGFSQ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_DGFSQ_ID == 0)
                {
                    EDU_ZZJX_08_A01_DGFSQ dgfsq = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.FirstOrDefault();
                    if (dgfsq == null)
                    {
                        Max_DGFSQ_ID = 1;
                    }
                    else
                    {
                        //Max_DGFSQ_ID = db_zzjx.EDU_ZZJX_08_A01_DGFSQ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_DGFSQ_ID++;
                }
                maxId = Max_DGFSQ_ID;
            }
            return maxId;
        }

    }
}
