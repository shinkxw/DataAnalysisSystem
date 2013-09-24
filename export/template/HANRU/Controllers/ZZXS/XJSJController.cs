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
    public class XJSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_07_01_XJSJ_DISP> model = db_zzxs.VIEW_EDU_ZZXS_07_01_XJSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXjsj(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            xjsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXjsj(xjsj);
        }

        public void UpdXjsj(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            //����Ĭ��ֵ
            if (xjsj.XSXXID == 0) xjsj.XSXXID = 0;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
            if (xjsj.SCHOOLID == 0) xjsj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xjsj.ZYXXID == 0) xjsj.ZYXXID = 0;//רҵ������Ϣ   רҵ������Ϣ���ݱ�
            if (string.IsNullOrEmpty(xjsj.ZZBJID)) xjsj.ZZBJID = "";//ѧУ�༶���ݱ�   ѧУ�༶���ݱ�
            if (string.IsNullOrEmpty(xjsj.ZZNJID)) xjsj.ZZNJID = "";//ѧУ�꼶���ݱ�   ѧУ�꼶���ݱ�
            if (string.IsNullOrEmpty(xjsj.RXNY)) xjsj.RXNY = "";//��ѧ����
            if (string.IsNullOrEmpty(xjsj.XSLBM)) xjsj.XSLBM = "";//ѧ�������   ѧ���������
            if (string.IsNullOrEmpty(xjsj.XZ)) xjsj.XZ = "";//ѧ��
            if (string.IsNullOrEmpty(xjsj.ZYM)) xjsj.ZYM = "";//רҵ��
            if (string.IsNullOrEmpty(xjsj.XSDQZTM)) xjsj.XSDQZTM = "";//ѧ����ǰ״̬��   ѧ����ǰ״̬�����
            EDU_ZZXS_07_01_XJSJ xjsj_model = db_zzxs.EDU_ZZXS_07_01_XJSJ.FirstOrDefault(e => e.XSXXID == xjsj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xjsj_model != null)
            {
                xjsj_model.XSXXID = xjsj.XSXXID;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
                xjsj_model.SCHOOLID = xjsj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xjsj_model.ZYXXID = xjsj.ZYXXID;//רҵ������Ϣ   רҵ������Ϣ���ݱ�
                xjsj_model.ZZBJID = xjsj.ZZBJID;//ѧУ�༶���ݱ�   ѧУ�༶���ݱ�
                xjsj_model.ZZNJID = xjsj.ZZNJID;//ѧУ�꼶���ݱ�   ѧУ�꼶���ݱ�
                xjsj_model.RXNY = xjsj.RXNY;//��ѧ����
                xjsj_model.XSLBM = xjsj.XSLBM;//ѧ�������   ѧ���������
                xjsj_model.XZ = xjsj.XZ;//ѧ��
                xjsj_model.ZYM = xjsj.ZYM;//רҵ��
                xjsj_model.XSDQZTM = xjsj.XSDQZTM;//ѧ����ǰ״̬��   ѧ����ǰ״̬�����
                db_zzxs.Entry(xjsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_07_01_XJSJ.Add(xjsj);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XSLBLst = JBLDAL.GetJY_XSLBSelLst();
            ViewBag.JY_XSDQZTLst = JBLDAL.GetJY_XSDQZTSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_07_01_XJSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_07_01_XJSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXjsj(xjsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_07_01_XJSJ xjsj= db_zzxs.EDU_ZZXS_07_01_XJSJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xjsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_07_01_XJSJ xjsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXjsj(xjsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjsj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_07_01_XJSJ xjsj = db_zzxs.EDU_ZZXS_07_01_XJSJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_07_01_XJSJ.Remove(xjsj);
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
                    EDU_ZZXS_07_01_XJSJ xjsj = db_zzxs.EDU_ZZXS_07_01_XJSJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_07_01_XJSJ.Remove(xjsj);
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

        private static int Max_XJSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ���������ݱ����ID
        public int GetMax_XJSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XJSJ_ID == 0)
                {
                    EDU_ZZXS_07_01_XJSJ xjsj = db_zzxs.EDU_ZZXS_07_01_XJSJ.FirstOrDefault();
                    if (xjsj == null)
                    {
                        Max_XJSJ_ID = 1;
                    }
                    else
                    {
                        //Max_XJSJ_ID = db_zzxs.EDU_ZZXS_07_01_XJSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XJSJ_ID++;
                }
                maxId = Max_XJSJ_ID;
            }
            return maxId;
        }

    }
}
