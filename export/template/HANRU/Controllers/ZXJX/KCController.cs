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
    public class KCController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_01_01_KC_DISP> model = db_zxjx.VIEW_EDU_ZXJX_01_01_KC_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddKc(EDU_ZXJX_01_01_KC kc)
        {
            kc.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKc(kc);
        }

        public void UpdKc(EDU_ZXJX_01_01_KC kc)
        {
            //����Ĭ��ֵ
            if (kc.SCHOOLID == 0) kc.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(kc.KCH)) kc.KCH = "";//�γ̺�
            if (string.IsNullOrEmpty(kc.KCMC)) kc.KCMC = "";//�γ�����
            if (string.IsNullOrEmpty(kc.KCM)) kc.KCM = "";//�γ���   ��Сѧ�γ̴����
            if (string.IsNullOrEmpty(kc.KCDJM)) kc.KCDJM = "";//�γ̵ȼ���   ��Сѧ�γ̵ȼ������
            if (string.IsNullOrEmpty(kc.KCBM)) kc.KCBM = "";//�γ̱���
            if (string.IsNullOrEmpty(kc.KCJJ)) kc.KCJJ = "";//�γ̼��
            if (string.IsNullOrEmpty(kc.KCYQ)) kc.KCYQ = "";//�γ�Ҫ��
            if (kc.ZXS == 0) kc.ZXS = 0;//��ѧʱ
            if (kc.ZHXS == 0) kc.ZHXS = 0;//��ѧʱ
            if (kc.ZXXS == 0) kc.ZXXS = 0;//��ѧѧʱ
            if (string.IsNullOrEmpty(kc.SKFSM)) kc.SKFSM = "";//�ڿη�ʽ��   �ڿη�ʽ�����
            if (string.IsNullOrEmpty(kc.JCBM)) kc.JCBM = "";//�̲ı���
            if (string.IsNullOrEmpty(kc.CKSM)) kc.CKSM = "";//�ο���Ŀ
            if (kc.CDXZ == 0) kc.CDXZ = 0;//��������
            if (string.IsNullOrEmpty(kc.SFZK)) kc.SFZK = "";//�Ƿ�����   �Ƿ��־�����
            EDU_ZXJX_01_01_KC kc_model = db_zxjx.EDU_ZXJX_01_01_KC.FirstOrDefault(e => e.SCHOOLID == kc.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kc_model != null)
            {
                kc_model.SCHOOLID = kc.SCHOOLID;//ѧУ��   ѧУ���ñ�
                kc_model.KCH = kc.KCH;//�γ̺�
                kc_model.KCMC = kc.KCMC;//�γ�����
                kc_model.KCM = kc.KCM;//�γ���   ��Сѧ�γ̴����
                kc_model.KCDJM = kc.KCDJM;//�γ̵ȼ���   ��Сѧ�γ̵ȼ������
                kc_model.KCBM = kc.KCBM;//�γ̱���
                kc_model.KCJJ = kc.KCJJ;//�γ̼��
                kc_model.KCYQ = kc.KCYQ;//�γ�Ҫ��
                kc_model.ZXS = kc.ZXS;//��ѧʱ
                kc_model.ZHXS = kc.ZHXS;//��ѧʱ
                kc_model.ZXXS = kc.ZXXS;//��ѧѧʱ
                kc_model.SKFSM = kc.SKFSM;//�ڿη�ʽ��   �ڿη�ʽ�����
                kc_model.JCBM = kc.JCBM;//�̲ı���
                kc_model.CKSM = kc.CKSM;//�ο���Ŀ
                kc_model.CDXZ = kc.CDXZ;//��������
                kc_model.SFZK = kc.SFZK;//�Ƿ�����   �Ƿ��־�����
                db_zxjx.Entry(kc_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjx.EDU_ZXJX_01_01_KC.Add(kc);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_ZXXKCLst = JBLDAL.GetJY_ZXXKCSelLst();
            ViewBag.JY_ZXXKCDJLst = JBLDAL.GetJY_ZXXKCDJSelLst();
            ViewBag.JY_SKFSLst = JBLDAL.GetJY_SKFSSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_01_01_KC());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_01_01_KC());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_01_01_KC kc)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKc(kc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kc);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_01_01_KC kc= db_zxjx.EDU_ZXJX_01_01_KC.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kc);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_01_01_KC kc)
        {
            InitViewBag();
            try
            {
                
                
                UpdKc(kc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kc);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_01_01_KC kc = db_zxjx.EDU_ZXJX_01_01_KC.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_01_01_KC.Remove(kc);
                db_zxjx.SaveChanges();
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
                    EDU_ZXJX_01_01_KC kc = db_zxjx.EDU_ZXJX_01_01_KC.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_01_01_KC.Remove(kc);
                    db_zxjx.SaveChanges();
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

        private static int Max_KC_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�γ����������ID
        public int GetMax_KC_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KC_ID == 0)
                {
                    EDU_ZXJX_01_01_KC kc = db_zxjx.EDU_ZXJX_01_01_KC.FirstOrDefault();
                    if (kc == null)
                    {
                        Max_KC_ID = 1;
                    }
                    else
                    {
                        //Max_KC_ID = db_zxjx.EDU_ZXJX_01_01_KC.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KC_ID++;
                }
                maxId = Max_KC_ID;
            }
            return maxId;
        }

    }
}
