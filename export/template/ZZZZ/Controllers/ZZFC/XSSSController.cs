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
    public class XSSSController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZFC_08_01_XSSS_DISP> model = db_zzfc.VIEW_EDU_ZZFC_08_01_XSSS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsss(EDU_ZZFC_08_01_XSSS xsss)
        {
            xsss.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsss(xsss);
        }

        public void UpdXsss(EDU_ZZFC_08_01_XSSS xsss)
        {
            //����Ĭ��ֵ
            if (xsss.SCHOOLID == 0) xsss.SCHOOLID = 0;//ѧУ��ѧУID
            if (xsss.ID == 0) xsss.ID = 0;//����ID
            if (xsss.SSLID == 0) xsss.SSLID = 0;//����¥ID
            if (string.IsNullOrEmpty(xsss.SSLBM)) xsss.SSLBM = "";//����¥�������¥��� ��ţ�ZZFC080001 ������JCBX020201 JZWH ������� C 6 M NULL ѧУ�Ա� NULL
            if (string.IsNullOrEmpty(xsss.FJBM)) xsss.FJBM = "";//�����ŷ����� ��ţ�ZZFC080002 
            if (string.IsNullOrEmpty(xsss.RZXB)) xsss.RZXB = "";//��ס�Ա���ס�Ա� ��ţ�ZZFC080003 ֵ�ռ䣺GB/T2261.1 ����/������1����2Ů�� 
            if (string.IsNullOrEmpty(xsss.SFKY)) xsss.SFKY = "";//�Ƿ�����Ƿ���� ��ţ�ZZFC080004 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����0������ 
            if (xsss.KZRS == 0) xsss.KZRS = 0;//��ס������ס���� ��ţ�ZZFC080005 
            if (string.IsNullOrEmpty(xsss.WLDK)) xsss.WLDK = "";//����˿�����˿� ��ţ�ZZFC080006 
            if (string.IsNullOrEmpty(xsss.AZDSJ)) xsss.AZDSJ = "";//��װ���ӻ���װ���ӻ� ��ţ�ZZFC080007 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1�Ѱ�װ0δ��װ 
            if (string.IsNullOrEmpty(xsss.DHDK)) xsss.DHDK = "";//�绰�˿ڵ绰�˿� ��ţ�ZZFC080008 
            if (string.IsNullOrEmpty(xsss.DHHM)) xsss.DHHM = "";//�绰����绰���� ��ţ�ZZFC080009 
            if (xsss.SBDS == 0) xsss.SBDS = 0;//ˮ�����ˮ����� ��ţ�ZZFC080010 
            if (xsss.DBDS == 0) xsss.DBDS = 0;//������������ ��ţ�ZZFC080011 
            if (string.IsNullOrEmpty(xsss.SSBZ)) xsss.SSBZ = "";//���ᱸע���ᱸע ��ţ�ZZFC080012 
            if (xsss.SZLZ == 0) xsss.SZLZ = 0;//����¥��
            if (string.IsNullOrEmpty(xsss.SSM)) xsss.SSM = "";//������
            EDU_ZZFC_08_01_XSSS xsss_model = db_zzfc.EDU_ZZFC_08_01_XSSS.FirstOrDefault(e => e.SCHOOLID == xsss.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsss_model != null)
            {
                xsss_model.SCHOOLID = xsss.SCHOOLID;//ѧУ��ѧУID
                xsss_model.ID = xsss.ID;//����ID
                xsss_model.SSLID = xsss.SSLID;//����¥ID
                xsss_model.SSLBM = xsss.SSLBM;//����¥�������¥��� ��ţ�ZZFC080001 ������JCBX020201 JZWH ������� C 6 M NULL ѧУ�Ա� NULL
                xsss_model.FJBM = xsss.FJBM;//�����ŷ����� ��ţ�ZZFC080002 
                xsss_model.RZXB = xsss.RZXB;//��ס�Ա���ס�Ա� ��ţ�ZZFC080003 ֵ�ռ䣺GB/T2261.1 ����/������1����2Ů�� 
                xsss_model.SFKY = xsss.SFKY;//�Ƿ�����Ƿ���� ��ţ�ZZFC080004 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1����0������ 
                xsss_model.KZRS = xsss.KZRS;//��ס������ס���� ��ţ�ZZFC080005 
                xsss_model.WLDK = xsss.WLDK;//����˿�����˿� ��ţ�ZZFC080006 
                xsss_model.AZDSJ = xsss.AZDSJ;//��װ���ӻ���װ���ӻ� ��ţ�ZZFC080007 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� ����/������1�Ѱ�װ0δ��װ 
                xsss_model.DHDK = xsss.DHDK;//�绰�˿ڵ绰�˿� ��ţ�ZZFC080008 
                xsss_model.DHHM = xsss.DHHM;//�绰����绰���� ��ţ�ZZFC080009 
                xsss_model.SBDS = xsss.SBDS;//ˮ�����ˮ����� ��ţ�ZZFC080010 
                xsss_model.DBDS = xsss.DBDS;//������������ ��ţ�ZZFC080011 
                xsss_model.SSBZ = xsss.SSBZ;//���ᱸע���ᱸע ��ţ�ZZFC080012 
                xsss_model.SZLZ = xsss.SZLZ;//����¥��
                xsss_model.SSM = xsss.SSM;//������
                db_zzfc.Entry(xsss_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzfc.EDU_ZZFC_08_01_XSSS.Add(xsss);
            }
            db_zzfc.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZFC_08_01_XSSS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZFC_08_01_XSSS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZFC_08_01_XSSS xsss)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsss(xsss);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsss);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsss);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZFC_08_01_XSSS xsss= db_zzfc.EDU_ZZFC_08_01_XSSS.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsss);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZFC_08_01_XSSS xsss)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsss(xsss);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsss);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsss);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZFC_08_01_XSSS xsss = db_zzfc.EDU_ZZFC_08_01_XSSS.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzfc.EDU_ZZFC_08_01_XSSS.Remove(xsss);
                db_zzfc.SaveChanges();
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
                    EDU_ZZFC_08_01_XSSS xsss = db_zzfc.EDU_ZZFC_08_01_XSSS.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzfc.EDU_ZZFC_08_01_XSSS.Remove(xsss);
                    db_zzfc.SaveChanges();
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

        private static int Max_XSSS_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ����������������ID
        public int GetMax_XSSS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSSS_ID == 0)
                {
                    EDU_ZZFC_08_01_XSSS xsss = db_zzfc.EDU_ZZFC_08_01_XSSS.FirstOrDefault();
                    if (xsss == null)
                    {
                        Max_XSSS_ID = 1;
                    }
                    else
                    {
                        //Max_XSSS_ID = db_zzfc.EDU_ZZFC_08_01_XSSS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSSS_ID++;
                }
                maxId = Max_XSSS_ID;
            }
            return maxId;
        }

    }
}
