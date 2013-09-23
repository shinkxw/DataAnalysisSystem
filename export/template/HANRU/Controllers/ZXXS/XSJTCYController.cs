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
    public class XSJTCYController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXS_01_06_XSJTCY_DISP> model = db_zxxs.VIEW_EDU_ZXXS_01_06_XSJTCY_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsjtcy(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            xsjtcy.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjtcy(xsjtcy);
        }

        public void UpdXsjtcy(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            //����Ĭ��ֵ
            if (xsjtcy.ID == 0) xsjtcy.ID = 0;//���
            if (xsjtcy.SCHOOLID == 0) xsjtcy.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xsjtcy.XSXXID == 0) xsjtcy.XSXXID = 0;//ѧ����Ϣ���ݱ�   ѧ���������������
            if (string.IsNullOrEmpty(xsjtcy.GXM)) xsjtcy.GXM = "";//��ϵ��   ��ͥ��ϵ����
            if (string.IsNullOrEmpty(xsjtcy.CYXM)) xsjtcy.CYXM = "";//��Ա����
            if (string.IsNullOrEmpty(xsjtcy.CSNY)) xsjtcy.CSNY = "";//��������
            if (string.IsNullOrEmpty(xsjtcy.MZM)) xsjtcy.MZM = "";//������   �й����������Ƶ�������ĸƴд���ʹ���
            if (string.IsNullOrEmpty(xsjtcy.GJDQM)) xsjtcy.GJDQM = "";//����/������   ��������͵������ƴ���
            if (string.IsNullOrEmpty(xsjtcy.JKZKM)) xsjtcy.JKZKM = "";//����״����   ����״��1λ���ִ���
            if (string.IsNullOrEmpty(xsjtcy.CYGZDW)) xsjtcy.CYGZDW = "";//��Ա������λ
            if (string.IsNullOrEmpty(xsjtcy.CYM)) xsjtcy.CYM = "";//��ҵ��   ��ҵ״����������ݣ�����
            if (string.IsNullOrEmpty(xsjtcy.ZYJSZWM)) xsjtcy.ZYJSZWM = "";//רҵ����ְ����   רҵ����ְ�����
            if (string.IsNullOrEmpty(xsjtcy.ZWJBM)) xsjtcy.ZWJBM = "";//ְ�񼶱���   ְ�񼶱����
            if (string.IsNullOrEmpty(xsjtcy.DH)) xsjtcy.DH = "";//�绰
            if (string.IsNullOrEmpty(xsjtcy.DZXX)) xsjtcy.DZXX = "";//��������
            if (string.IsNullOrEmpty(xsjtcy.SFJHR)) xsjtcy.SFJHR = "";//�Ƿ�໤��   �Ƿ��־�����
            if (string.IsNullOrEmpty(xsjtcy.XBM)) xsjtcy.XBM = "";//�Ա���   �˵��Ա����
            if (string.IsNullOrEmpty(xsjtcy.XLM)) xsjtcy.XLM = "";//ѧ����   ѧ������
            if (string.IsNullOrEmpty(xsjtcy.LXDZ)) xsjtcy.LXDZ = "";//��ϵ��ַ
            if (string.IsNullOrEmpty(xsjtcy.SJHM)) xsjtcy.SJHM = "";//�ֻ�����
            EDU_ZXXS_01_06_XSJTCY xsjtcy_model = db_zxxs.EDU_ZXXS_01_06_XSJTCY.FirstOrDefault(e => e.ID == xsjtcy.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjtcy_model != null)
            {
                xsjtcy_model.ID = xsjtcy.ID;//���
                xsjtcy_model.SCHOOLID = xsjtcy.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xsjtcy_model.XSXXID = xsjtcy.XSXXID;//ѧ����Ϣ���ݱ�   ѧ���������������
                xsjtcy_model.GXM = xsjtcy.GXM;//��ϵ��   ��ͥ��ϵ����
                xsjtcy_model.CYXM = xsjtcy.CYXM;//��Ա����
                xsjtcy_model.CSNY = xsjtcy.CSNY;//��������
                xsjtcy_model.MZM = xsjtcy.MZM;//������   �й����������Ƶ�������ĸƴд���ʹ���
                xsjtcy_model.GJDQM = xsjtcy.GJDQM;//����/������   ��������͵������ƴ���
                xsjtcy_model.JKZKM = xsjtcy.JKZKM;//����״����   ����״��1λ���ִ���
                xsjtcy_model.CYGZDW = xsjtcy.CYGZDW;//��Ա������λ
                xsjtcy_model.CYM = xsjtcy.CYM;//��ҵ��   ��ҵ״����������ݣ�����
                xsjtcy_model.ZYJSZWM = xsjtcy.ZYJSZWM;//רҵ����ְ����   רҵ����ְ�����
                xsjtcy_model.ZWJBM = xsjtcy.ZWJBM;//ְ�񼶱���   ְ�񼶱����
                xsjtcy_model.DH = xsjtcy.DH;//�绰
                xsjtcy_model.DZXX = xsjtcy.DZXX;//��������
                xsjtcy_model.SFJHR = xsjtcy.SFJHR;//�Ƿ�໤��   �Ƿ��־�����
                xsjtcy_model.XBM = xsjtcy.XBM;//�Ա���   �˵��Ա����
                xsjtcy_model.XLM = xsjtcy.XLM;//ѧ����   ѧ������
                xsjtcy_model.LXDZ = xsjtcy.LXDZ;//��ϵ��ַ
                xsjtcy_model.SJHM = xsjtcy.SJHM;//�ֻ�����
                db_zxxs.Entry(xsjtcy_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxxs.EDU_ZXXS_01_06_XSJTCY.Add(xsjtcy);
            }
            db_zxxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_JTGXLst = GBLDAL.GetGB_JTGXSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_CYZKLst = GBLDAL.GetGB_CYZKSelLst();
            ViewBag.GB_ZYJSZWLst = GBLDAL.GetGB_ZYJSZWSelLst();
            ViewBag.GB_ZWJBDMLst = GBLDAL.GetGB_ZWJBDMSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.GB_XLLst = GBLDAL.GetGB_XLSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXS_01_06_XSJTCY());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXS_01_06_XSJTCY());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsjtcy(xsjtcy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtcy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtcy);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXS_01_06_XSJTCY xsjtcy= db_zxxs.EDU_ZXXS_01_06_XSJTCY.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjtcy);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXS_01_06_XSJTCY xsjtcy)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsjtcy(xsjtcy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtcy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtcy);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXS_01_06_XSJTCY xsjtcy = db_zxxs.EDU_ZXXS_01_06_XSJTCY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxs.EDU_ZXXS_01_06_XSJTCY.Remove(xsjtcy);
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
                    EDU_ZXXS_01_06_XSJTCY xsjtcy = db_zxxs.EDU_ZXXS_01_06_XSJTCY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxs.EDU_ZXXS_01_06_XSJTCY.Remove(xsjtcy);
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

        private static int Max_XSJTCY_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ����ͥ��Ա���ݱ����ID
        public int GetMax_XSJTCY_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSJTCY_ID == 0)
                {
                    EDU_ZXXS_01_06_XSJTCY xsjtcy = db_zxxs.EDU_ZXXS_01_06_XSJTCY.FirstOrDefault();
                    if (xsjtcy == null)
                    {
                        Max_XSJTCY_ID = 1;
                    }
                    else
                    {
                        //Max_XSJTCY_ID = db_zxxs.EDU_ZXXS_01_06_XSJTCY.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSJTCY_ID++;
                }
                maxId = Max_XSJTCY_ID;
            }
            return maxId;
        }

    }
}
