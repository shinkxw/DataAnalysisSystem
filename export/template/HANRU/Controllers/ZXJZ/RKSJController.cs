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
    public class RKSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJZ_07_02_RKSJ_DISP> model = db_zxjz.VIEW_EDU_ZXJZ_07_02_RKSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddRksj(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            rksj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdRksj(rksj);
        }

        public void UpdRksj(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            //����Ĭ��ֵ
            if (rksj.ID == 0) rksj.ID = 0;//���
            if (rksj.SCHOOLID == 0) rksj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (rksj.JZGJBSJID == 0) rksj.JZGJBSJID = 0;//��ְ���������������   ��ְ���������������
            if (string.IsNullOrEmpty(rksj.RKKCH)) rksj.RKKCH = "";//�οογ̺�   �γ�������
            if (string.IsNullOrEmpty(rksj.RKQSNY)) rksj.RKQSNY = "";//�ο���ʼ����
            if (string.IsNullOrEmpty(rksj.RKZZNY)) rksj.RKZZNY = "";//�ο���ֹ����
            if (rksj.RKZXS == 0) rksj.RKZXS = 0;//�ο���ѧʱ
            if (string.IsNullOrEmpty(rksj.RKXDM)) rksj.RKXDM = "";//�ο�ѧ����   �ο�ѧ�δ����
            if (string.IsNullOrEmpty(rksj.RKJSM)) rksj.RKJSM = "";//�ον�ɫ��   �ον�ɫ�����
            if (string.IsNullOrEmpty(rksj.SKBJ)) rksj.SKBJ = "";//�ڿΰ༶   �༶�������
            if (rksj.SKRS == 0) rksj.SKRS = 0;//�ڿ�����
            if (rksj.ZKS == 0) rksj.ZKS = 0;//�ܿ�ʱ
            if (string.IsNullOrEmpty(rksj.SFLT)) rksj.SFLT = "";//�Ƿ�����   �Ƿ��־�����
            if (string.IsNullOrEmpty(rksj.NJID)) rksj.NJID = "";//�꼶��   �꼶�������
            if (rksj.XQID == 0) rksj.XQID = 0;//ѧ��   ѧ�����ݱ�
            if (rksj.XNID == 0) rksj.XNID = 0;//ѧ��   ѧ���
            EDU_ZXJZ_07_02_RKSJ rksj_model = db_zxjz.EDU_ZXJZ_07_02_RKSJ.FirstOrDefault(e => e.ID == rksj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (rksj_model != null)
            {
                rksj_model.ID = rksj.ID;//���
                rksj_model.SCHOOLID = rksj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                rksj_model.JZGJBSJID = rksj.JZGJBSJID;//��ְ���������������   ��ְ���������������
                rksj_model.RKKCH = rksj.RKKCH;//�οογ̺�   �γ�������
                rksj_model.RKQSNY = rksj.RKQSNY;//�ο���ʼ����
                rksj_model.RKZZNY = rksj.RKZZNY;//�ο���ֹ����
                rksj_model.RKZXS = rksj.RKZXS;//�ο���ѧʱ
                rksj_model.RKXDM = rksj.RKXDM;//�ο�ѧ����   �ο�ѧ�δ����
                rksj_model.RKJSM = rksj.RKJSM;//�ον�ɫ��   �ον�ɫ�����
                rksj_model.SKBJ = rksj.SKBJ;//�ڿΰ༶   �༶�������
                rksj_model.SKRS = rksj.SKRS;//�ڿ�����
                rksj_model.ZKS = rksj.ZKS;//�ܿ�ʱ
                rksj_model.SFLT = rksj.SFLT;//�Ƿ�����   �Ƿ��־�����
                rksj_model.NJID = rksj.NJID;//�꼶��   �꼶�������
                rksj_model.XQID = rksj.XQID;//ѧ��   ѧ�����ݱ�
                rksj_model.XNID = rksj.XNID;//ѧ��   ѧ���
                db_zxjz.Entry(rksj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjz.EDU_ZXJZ_07_02_RKSJ.Add(rksj);
            }
            db_zxjz.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_RKXDLst = JBLDAL.GetJY_RKXDSelLst();
            ViewBag.JY_RKJSLst = JBLDAL.GetJY_RKJSSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJZ_07_02_RKSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJZ_07_02_RKSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddRksj(rksj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(rksj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(rksj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJZ_07_02_RKSJ rksj= db_zxjz.EDU_ZXJZ_07_02_RKSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(rksj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJZ_07_02_RKSJ rksj)
        {
            InitViewBag();
            try
            {
                
                
                UpdRksj(rksj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(rksj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(rksj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJZ_07_02_RKSJ rksj = db_zxjz.EDU_ZXJZ_07_02_RKSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjz.EDU_ZXJZ_07_02_RKSJ.Remove(rksj);
                db_zxjz.SaveChanges();
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
                    EDU_ZXJZ_07_02_RKSJ rksj = db_zxjz.EDU_ZXJZ_07_02_RKSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjz.EDU_ZXJZ_07_02_RKSJ.Remove(rksj);
                    db_zxjz.SaveChanges();
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

        private static int Max_RKSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ο�������������ID
        public int GetMax_RKSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_RKSJ_ID == 0)
                {
                    EDU_ZXJZ_07_02_RKSJ rksj = db_zxjz.EDU_ZXJZ_07_02_RKSJ.FirstOrDefault();
                    if (rksj == null)
                    {
                        Max_RKSJ_ID = 1;
                    }
                    else
                    {
                        //Max_RKSJ_ID = db_zxjz.EDU_ZXJZ_07_02_RKSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_RKSJ_ID++;
                }
                maxId = Max_RKSJ_ID;
            }
            return maxId;
        }

    }
}
