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
    public class XSLXRController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_02_A01_XSLXR_DISP> model = db_zzxs.VIEW_EDU_ZZXS_02_A01_XSLXR_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXslxr(EDU_ZZXS_02_A01_XSLXR xslxr)
        {
            xslxr.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXslxr(xslxr);
        }

        public void UpdXslxr(EDU_ZZXS_02_A01_XSLXR xslxr)
        {
            //����Ĭ��ֵ
            if (xslxr.ID == 0) xslxr.ID = 0;//���
            if (xslxr.SCHOOLID == 0) xslxr.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xslxr.XSXXID == 0) xslxr.XSXXID = 0;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
            if (string.IsNullOrEmpty(xslxr.GXM)) xslxr.GXM = "";//��ϵ��   ��ͥ��ϵ����
            if (string.IsNullOrEmpty(xslxr.LXRXM)) xslxr.LXRXM = "";//��ϵ������
            if (string.IsNullOrEmpty(xslxr.YZBM)) xslxr.YZBM = "";//��������
            if (string.IsNullOrEmpty(xslxr.TXDZ)) xslxr.TXDZ = "";//ͨ�ŵ�ַ
            if (string.IsNullOrEmpty(xslxr.DH)) xslxr.DH = "";//�绰
            if (string.IsNullOrEmpty(xslxr.YDDH)) xslxr.YDDH = "";//�ƶ��绰
            if (string.IsNullOrEmpty(xslxr.CZDH)) xslxr.CZDH = "";//����绰
            if (string.IsNullOrEmpty(xslxr.DZXX)) xslxr.DZXX = "";//��������
            if (string.IsNullOrEmpty(xslxr.WLDZ)) xslxr.WLDZ = "";//�����ַ
            if (string.IsNullOrEmpty(xslxr.JSTXH)) xslxr.JSTXH = "";//��ʱͨѶ��
            EDU_ZZXS_02_A01_XSLXR xslxr_model = db_zzxs.EDU_ZZXS_02_A01_XSLXR.FirstOrDefault(e => e.ID == xslxr.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xslxr_model != null)
            {
                xslxr_model.ID = xslxr.ID;//���
                xslxr_model.SCHOOLID = xslxr.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xslxr_model.XSXXID = xslxr.XSXXID;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
                xslxr_model.GXM = xslxr.GXM;//��ϵ��   ��ͥ��ϵ����
                xslxr_model.LXRXM = xslxr.LXRXM;//��ϵ������
                xslxr_model.YZBM = xslxr.YZBM;//��������
                xslxr_model.TXDZ = xslxr.TXDZ;//ͨ�ŵ�ַ
                xslxr_model.DH = xslxr.DH;//�绰
                xslxr_model.YDDH = xslxr.YDDH;//�ƶ��绰
                xslxr_model.CZDH = xslxr.CZDH;//����绰
                xslxr_model.DZXX = xslxr.DZXX;//��������
                xslxr_model.WLDZ = xslxr.WLDZ;//�����ַ
                xslxr_model.JSTXH = xslxr.JSTXH;//��ʱͨѶ��
                db_zzxs.Entry(xslxr_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_02_A01_XSLXR.Add(xslxr);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_JTGXLst = GBLDAL.GetGB_JTGXSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_02_A01_XSLXR());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_02_A01_XSLXR());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_02_A01_XSLXR xslxr)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXslxr(xslxr);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xslxr);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xslxr);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_02_A01_XSLXR xslxr= db_zzxs.EDU_ZZXS_02_A01_XSLXR.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xslxr);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_02_A01_XSLXR xslxr)
        {
            InitViewBag();
            try
            {
                
                
                UpdXslxr(xslxr);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xslxr);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xslxr);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_02_A01_XSLXR xslxr = db_zzxs.EDU_ZZXS_02_A01_XSLXR.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_02_A01_XSLXR.Remove(xslxr);
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
                    EDU_ZZXS_02_A01_XSLXR xslxr = db_zzxs.EDU_ZZXS_02_A01_XSLXR.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_02_A01_XSLXR.Remove(xslxr);
                    db_zzxs.SaveChanges();
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

        private static int Max_XSLXR_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ����ϵ�����ݱ����ID
        public int GetMax_XSLXR_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSLXR_ID == 0)
                {
                    EDU_ZZXS_02_A01_XSLXR xslxr = db_zzxs.EDU_ZZXS_02_A01_XSLXR.FirstOrDefault();
                    if (xslxr == null)
                    {
                        Max_XSLXR_ID = 1;
                    }
                    else
                    {
                        //Max_XSLXR_ID = db_zzxs.EDU_ZZXS_02_A01_XSLXR.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSLXR_ID++;
                }
                maxId = Max_XSLXR_ID;
            }
            return maxId;
        }

    }
}
