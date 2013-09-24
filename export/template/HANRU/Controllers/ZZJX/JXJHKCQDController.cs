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
    public class JXJHKCQDController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP> model = db_zzjx.VIEW_EDU_ZZJX_03_03_JXJHKCQD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJxjhkcqd(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            jxjhkcqd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJxjhkcqd(jxjhkcqd);
        }

        public void UpdJxjhkcqd(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            //����Ĭ��ֵ
            if (jxjhkcqd.SCHOOLID == 0) jxjhkcqd.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(jxjhkcqd.KCH)) jxjhkcqd.KCH = "";//�γ̺�   �γ����������
            if (string.IsNullOrEmpty(jxjhkcqd.JHBH)) jxjhkcqd.JHBH = "";//�ƻ����   �����ѧ�ƻ����������
            if (jxjhkcqd.XQID == 0) jxjhkcqd.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            if (string.IsNullOrEmpty(jxjhkcqd.KCMC)) jxjhkcqd.KCMC = "";//�γ�����
            if (string.IsNullOrEmpty(jxjhkcqd.YXKC)) jxjhkcqd.YXKC = "";//Ԥ�޿γ�
            if (string.IsNullOrEmpty(jxjhkcqd.SFHXKC)) jxjhkcqd.SFHXKC = "";//�Ƿ���ģ��Ǹɣ�   �ڿη�ʽ�����
            if (string.IsNullOrEmpty(jxjhkcqd.KCFLM)) jxjhkcqd.KCFLM = "";//�γ̷�����   �γ̷������
            if (string.IsNullOrEmpty(jxjhkcqd.KCSXM)) jxjhkcqd.KCSXM = "";//�γ�������   �γ����Դ����
            if (jxjhkcqd.ZXXQ == 0) jxjhkcqd.ZXXQ = 0;//ִ��ѧ��
            EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd_model = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.FirstOrDefault(e => e.SCHOOLID == jxjhkcqd.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jxjhkcqd_model != null)
            {
                jxjhkcqd_model.SCHOOLID = jxjhkcqd.SCHOOLID;//ѧУID   ѧУ���ñ�
                jxjhkcqd_model.KCH = jxjhkcqd.KCH;//�γ̺�   �γ����������
                jxjhkcqd_model.JHBH = jxjhkcqd.JHBH;//�ƻ����   �����ѧ�ƻ����������
                jxjhkcqd_model.XQID = jxjhkcqd.XQID;//ѧ��ID   ѧ�����ݱ�
                jxjhkcqd_model.KCMC = jxjhkcqd.KCMC;//�γ�����
                jxjhkcqd_model.YXKC = jxjhkcqd.YXKC;//Ԥ�޿γ�
                jxjhkcqd_model.SFHXKC = jxjhkcqd.SFHXKC;//�Ƿ���ģ��Ǹɣ�   �ڿη�ʽ�����
                jxjhkcqd_model.KCFLM = jxjhkcqd.KCFLM;//�γ̷�����   �γ̷������
                jxjhkcqd_model.KCSXM = jxjhkcqd.KCSXM;//�γ�������   �γ����Դ����
                jxjhkcqd_model.ZXXQ = jxjhkcqd.ZXXQ;//ִ��ѧ��
                db_zzjx.Entry(jxjhkcqd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Add(jxjhkcqd);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SKFSLst = JBLDAL.GetJY_SKFSSelLst();
            ViewBag.ZZ_KCFLLst = ZZBLDAL.GetZZ_KCFLSelLst();
            ViewBag.JY_KCSXLst = JBLDAL.GetJY_KCSXSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_03_03_JXJHKCQD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_03_03_JXJHKCQD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJxjhkcqd(jxjhkcqd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jxjhkcqd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jxjhkcqd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd= db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jxjhkcqd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd)
        {
            InitViewBag();
            try
            {
                
                
                UpdJxjhkcqd(jxjhkcqd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jxjhkcqd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jxjhkcqd);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Remove(jxjhkcqd);
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
                    EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Remove(jxjhkcqd);
                    db_zzjx.SaveChanges();
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

        private static int Max_JXJHKCQD_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��ѧ�ƻ��γ��嵥������������ID
        public int GetMax_JXJHKCQD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JXJHKCQD_ID == 0)
                {
                    EDU_ZZJX_03_03_JXJHKCQD jxjhkcqd = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.FirstOrDefault();
                    if (jxjhkcqd == null)
                    {
                        Max_JXJHKCQD_ID = 1;
                    }
                    else
                    {
                        //Max_JXJHKCQD_ID = db_zzjx.EDU_ZZJX_03_03_JXJHKCQD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JXJHKCQD_ID++;
                }
                maxId = Max_JXJHKCQD_ID;
            }
            return maxId;
        }

    }
}
