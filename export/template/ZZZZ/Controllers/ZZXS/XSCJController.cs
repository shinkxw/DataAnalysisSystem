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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class XSCJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_06_01_XSCJ_DISP> model = db_zzxs.VIEW_EDU_ZZXS_06_01_XSCJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddXscj(EDU_ZZXS_06_01_XSCJ xscj)
        {
            xscj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXscj(xscj);
        }

        public void UpdXscj(EDU_ZZXS_06_01_XSCJ xscj)
        {
            //����Ĭ��ֵ
            if (xscj.XSXXID == 0) xscj.XSXXID = 0;//ѧ��ID
            if (xscj.SCHOOLID == 0) xscj.SCHOOLID = 0;//ѧУID
            if (string.IsNullOrEmpty(xscj.KCH)) xscj.KCH = "";//�γ̺�
            if (xscj.XQID == 0) xscj.XQID = 0;//ѧ��ID
            if (string.IsNullOrEmpty(xscj.KCMC)) xscj.KCMC = "";//�γ�����
            if (xscj.XF == 0) xscj.XF = 0;//ѧ��
            if (string.IsNullOrEmpty(xscj.XQMC)) xscj.XQMC = "";//ѧ������
            if (xscj.PSCJ == 0) xscj.PSCJ = 0;//ƽʱ�ɼ�
            if (xscj.CJ == 0) xscj.CJ = 0;//�ɼ�
            if (string.IsNullOrEmpty(xscj.KSXZ)) xscj.KSXZ = "";//��������
            if (xscj.RKJGID == 0) xscj.RKJGID = 0;//�ον̹�ID
            if (string.IsNullOrEmpty(xscj.RKJGH)) xscj.RKJGH = "";//�ον̹���
            if (xscj.CJLRJGID == 0) xscj.CJLRJGID = 0;//�ɼ�¼��̹�ID
            if (string.IsNullOrEmpty(xscj.CJLRJGH)) xscj.CJLRJGH = "";//�ɼ�¼��̹���
            if (string.IsNullOrEmpty(xscj.CJLRRQ)) xscj.CJLRRQ = "";//�ɼ�¼������
            if (xscj.QZCJ == 0) xscj.QZCJ = 0;//���гɼ�
            if (xscj.QMCJ == 0) xscj.QMCJ = 0;//��ĩ�ɼ�
            EDU_ZZXS_06_01_XSCJ xscj_model = db_zzxs.EDU_ZZXS_06_01_XSCJ.FirstOrDefault(e => e.XSXXID == xscj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xscj_model != null)
            {
                xscj_model.XSXXID = xscj.XSXXID;//ѧ��ID
                xscj_model.SCHOOLID = xscj.SCHOOLID;//ѧУID
                xscj_model.KCH = xscj.KCH;//�γ̺�
                xscj_model.XQID = xscj.XQID;//ѧ��ID
                xscj_model.KCMC = xscj.KCMC;//�γ�����
                xscj_model.XF = xscj.XF;//ѧ��
                xscj_model.XQMC = xscj.XQMC;//ѧ������
                xscj_model.PSCJ = xscj.PSCJ;//ƽʱ�ɼ�
                xscj_model.CJ = xscj.CJ;//�ɼ�
                xscj_model.KSXZ = xscj.KSXZ;//��������
                xscj_model.RKJGID = xscj.RKJGID;//�ον̹�ID
                xscj_model.RKJGH = xscj.RKJGH;//�ον̹���
                xscj_model.CJLRJGID = xscj.CJLRJGID;//�ɼ�¼��̹�ID
                xscj_model.CJLRJGH = xscj.CJLRJGH;//�ɼ�¼��̹���
                xscj_model.CJLRRQ = xscj.CJLRRQ;//�ɼ�¼������
                xscj_model.QZCJ = xscj.QZCJ;//���гɼ�
                xscj_model.QMCJ = xscj.QMCJ;//��ĩ�ɼ�
                db_zzxs.Entry(xscj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_06_01_XSCJ.Add(xscj);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_06_01_XSCJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_06_01_XSCJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_06_01_XSCJ xscj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXscj(xscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xscj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_06_01_XSCJ xscj= db_zzxs.EDU_ZZXS_06_01_XSCJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xscj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_06_01_XSCJ xscj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXscj(xscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xscj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_06_01_XSCJ xscj = db_zzxs.EDU_ZZXS_06_01_XSCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_06_01_XSCJ.Remove(xscj);
                db_zzxs.SaveChanges();
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
                    EDU_ZZXS_06_01_XSCJ xscj = db_zzxs.EDU_ZZXS_06_01_XSCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_06_01_XSCJ.Remove(xscj);
                    db_zzxs.SaveChanges();
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

        private static int Max_XSCJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ���ɼ�����������ID
        public int GetMax_XSCJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSCJ_ID == 0)
                {
                    EDU_ZZXS_06_01_XSCJ xscj = db_zzxs.EDU_ZZXS_06_01_XSCJ.FirstOrDefault();
                    if (xscj == null)
                    {
                        Max_XSCJ_ID = 1;
                    }
                    else
                    {
                        //Max_XSCJ_ID = db_zzxs.EDU_ZZXS_06_01_XSCJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSCJ_ID++;
                }
                maxId = Max_XSCJ_ID;
            }
            return maxId;
        }

    }
}
