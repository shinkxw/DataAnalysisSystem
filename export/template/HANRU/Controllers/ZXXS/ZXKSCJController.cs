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
    public class ZXKSCJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP> model = db_zxxs.VIEW_EDU_ZXXS_02_06_ZXKSCJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZxkscj(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            zxkscj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZxkscj(zxkscj);
        }

        public void UpdZxkscj(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            //����Ĭ��ֵ
            if (zxkscj.ID == 0) zxkscj.ID = 0;//���Գɼ���
            if (zxkscj.SCHOOLID == 0) zxkscj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (zxkscj.XSXXID == 0) zxkscj.XSXXID = 0;//ѧ��ID   ѧ���������������
            if (string.IsNullOrEmpty(zxkscj.XN)) zxkscj.XN = "";//ѧ�꣨�ȣ�
            if (string.IsNullOrEmpty(zxkscj.XQM)) zxkscj.XQM = "";//ѧ����   ѧ�ڴ����
            if (string.IsNullOrEmpty(zxkscj.KSRQ)) zxkscj.KSRQ = "";//��������
            if (string.IsNullOrEmpty(zxkscj.KCH)) zxkscj.KCH = "";//�γ̺�   �γ�������
            if (zxkscj.RKJSID == 0) zxkscj.RKJSID = 0;//�ον�ʦID   ��ְ���������������
            if (zxkscj.CJLRRID == 0) zxkscj.CJLRRID = 0;//�ɼ�¼����ID   ��ְ���������������
            if (string.IsNullOrEmpty(zxkscj.KSFSM)) zxkscj.KSFSM = "";//���Է�ʽ��   ���Է�ʽ�����
            if (string.IsNullOrEmpty(zxkscj.KSXZM)) zxkscj.KSXZM = "";//����������   �������ʴ����
            if (string.IsNullOrEmpty(zxkscj.KSXSM)) zxkscj.KSXSM = "";//������ʽ��   ������ʽ�����
            if (zxkscj.FSLKSCJ == 0) zxkscj.FSLKSCJ = 0;//�����࿼�Գɼ�
            if (string.IsNullOrEmpty(zxkscj.DJLKSCJ)) zxkscj.DJLKSCJ = "";//�ȼ��࿼�Գɼ�
            if (zxkscj.KCCJ == 0) zxkscj.KCCJ = 0;//�γ̳ɼ�
            if (string.IsNullOrEmpty(zxkscj.KCDJCJM)) zxkscj.KCDJCJM = "";//�γ̵ȼ��ɼ���
            if (string.IsNullOrEmpty(zxkscj.RKJSGH)) zxkscj.RKJSGH = "";//�ον�ʦ����
            if (string.IsNullOrEmpty(zxkscj.CJLRRH)) zxkscj.CJLRRH = "";//�ɼ�¼���˺�
            if (string.IsNullOrEmpty(zxkscj.CJLRRQ)) zxkscj.CJLRRQ = "";//�ɼ�¼������
            if (string.IsNullOrEmpty(zxkscj.CJLRSJ)) zxkscj.CJLRSJ = "";//�ɼ�¼��ʱ��
            if (zxkscj.XQID == 0) zxkscj.XQID = 0;//ѧ��   ѧ�����ݱ�
            if (zxkscj.XNID == 0) zxkscj.XNID = 0;//ѧ��   ѧ���
            if (string.IsNullOrEmpty(zxkscj.NJID)) zxkscj.NJID = "";//�꼶   �꼶�������
            if (string.IsNullOrEmpty(zxkscj.BJID)) zxkscj.BJID = "";//�༶   �༶�������
            if (zxkscj.SSKSID == 0) zxkscj.SSKSID = 0;//��������ID   �������ݱ�
            if (zxkscj.SSKSKMID == 0) zxkscj.SSKSKMID = 0;//�������Կ�ĿID   ���Կ�Ŀ���ݱ�
            if (zxkscj.SJID == 0) zxkscj.SJID = 0;//�Ծ�ID
            EDU_ZXXS_02_06_ZXKSCJ zxkscj_model = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.FirstOrDefault(e => e.ID == zxkscj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zxkscj_model != null)
            {
                zxkscj_model.ID = zxkscj.ID;//���Գɼ���
                zxkscj_model.SCHOOLID = zxkscj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                zxkscj_model.XSXXID = zxkscj.XSXXID;//ѧ��ID   ѧ���������������
                zxkscj_model.XN = zxkscj.XN;//ѧ�꣨�ȣ�
                zxkscj_model.XQM = zxkscj.XQM;//ѧ����   ѧ�ڴ����
                zxkscj_model.KSRQ = zxkscj.KSRQ;//��������
                zxkscj_model.KCH = zxkscj.KCH;//�γ̺�   �γ�������
                zxkscj_model.RKJSID = zxkscj.RKJSID;//�ον�ʦID   ��ְ���������������
                zxkscj_model.CJLRRID = zxkscj.CJLRRID;//�ɼ�¼����ID   ��ְ���������������
                zxkscj_model.KSFSM = zxkscj.KSFSM;//���Է�ʽ��   ���Է�ʽ�����
                zxkscj_model.KSXZM = zxkscj.KSXZM;//����������   �������ʴ����
                zxkscj_model.KSXSM = zxkscj.KSXSM;//������ʽ��   ������ʽ�����
                zxkscj_model.FSLKSCJ = zxkscj.FSLKSCJ;//�����࿼�Գɼ�
                zxkscj_model.DJLKSCJ = zxkscj.DJLKSCJ;//�ȼ��࿼�Գɼ�
                zxkscj_model.KCCJ = zxkscj.KCCJ;//�γ̳ɼ�
                zxkscj_model.KCDJCJM = zxkscj.KCDJCJM;//�γ̵ȼ��ɼ���
                zxkscj_model.RKJSGH = zxkscj.RKJSGH;//�ον�ʦ����
                zxkscj_model.CJLRRH = zxkscj.CJLRRH;//�ɼ�¼���˺�
                zxkscj_model.CJLRRQ = zxkscj.CJLRRQ;//�ɼ�¼������
                zxkscj_model.CJLRSJ = zxkscj.CJLRSJ;//�ɼ�¼��ʱ��
                zxkscj_model.XQID = zxkscj.XQID;//ѧ��   ѧ�����ݱ�
                zxkscj_model.XNID = zxkscj.XNID;//ѧ��   ѧ���
                zxkscj_model.NJID = zxkscj.NJID;//�꼶   �꼶�������
                zxkscj_model.BJID = zxkscj.BJID;//�༶   �༶�������
                zxkscj_model.SSKSID = zxkscj.SSKSID;//��������ID   �������ݱ�
                zxkscj_model.SSKSKMID = zxkscj.SSKSKMID;//�������Կ�ĿID   ���Կ�Ŀ���ݱ�
                zxkscj_model.SJID = zxkscj.SJID;//�Ծ�ID
                db_zxxs.Entry(zxkscj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Add(zxkscj);
            }
            db_zxxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XQLst = JBLDAL.GetJY_XQSelLst();
            ViewBag.JY_KSFSLst = JBLDAL.GetJY_KSFSSelLst();
            ViewBag.JY_KSXZLst = JBLDAL.GetJY_KSXZSelLst();
            ViewBag.JY_KSXSLst = JBLDAL.GetJY_KSXSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXS_02_06_ZXKSCJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXS_02_06_ZXKSCJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZxkscj(zxkscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxkscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxkscj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXS_02_06_ZXKSCJ zxkscj= db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zxkscj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXS_02_06_ZXKSCJ zxkscj)
        {
            InitViewBag();
            try
            {
                
                
                UpdZxkscj(zxkscj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxkscj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxkscj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXS_02_06_ZXKSCJ zxkscj = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Remove(zxkscj);
                db_zxxs.SaveChanges();
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
                    EDU_ZXXS_02_06_ZXKSCJ zxkscj = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Remove(zxkscj);
                    db_zxxs.SaveChanges();
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

        private static int Max_ZXKSCJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��У���Գɼ�������������ID
        public int GetMax_ZXKSCJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZXKSCJ_ID == 0)
                {
                    EDU_ZXXS_02_06_ZXKSCJ zxkscj = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.FirstOrDefault();
                    if (zxkscj == null)
                    {
                        Max_ZXKSCJ_ID = 1;
                    }
                    else
                    {
                        //Max_ZXKSCJ_ID = db_zxxs.EDU_ZXXS_02_06_ZXKSCJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZXKSCJ_ID++;
                }
                maxId = Max_ZXKSCJ_ID;
            }
            return maxId;
        }

    }
}
