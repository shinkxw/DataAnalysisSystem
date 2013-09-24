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
    public class XSJLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_13_A01_XSJL_DISP> model = db_zzxs.VIEW_EDU_ZZXS_13_A01_XSJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsjl(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            xsjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjl(xsjl);
        }

        public void UpdXsjl(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            //����Ĭ��ֵ
            if (xsjl.SCHOOLID == 0) xsjl.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xsjl.XSXXID == 0) xsjl.XSXXID = 0;//ѧ����ϢID   ѧ����Ϣ���ݱ�
            if (string.IsNullOrEmpty(xsjl.YYNL)) xsjl.YYNL = "";//Ӣ������
            if (xsjl.GZNX == 0) xsjl.GZNX = 0;//��������
            if (string.IsNullOrEmpty(xsjl.ZWPJ)) xsjl.ZWPJ = "";//��������
            if (string.IsNullOrEmpty(xsjl.JYJL)) xsjl.JYJL = "";//��������
            if (string.IsNullOrEmpty(xsjl.SHZS)) xsjl.SHZS = "";//����֤��
            if (string.IsNullOrEmpty(xsjl.GZJY)) xsjl.GZJY = "";//��������
            if (string.IsNullOrEmpty(xsjl.QZYX)) xsjl.QZYX = "";//��ְ����
            if (string.IsNullOrEmpty(xsjl.JNZC)) xsjl.JNZC = "";//����ר��
            if (string.IsNullOrEmpty(xsjl.XMJY)) xsjl.XMJY = "";//��Ŀ����
            EDU_ZZXS_13_A01_XSJL xsjl_model = db_zzxs.EDU_ZZXS_13_A01_XSJL.FirstOrDefault(e => e.SCHOOLID == xsjl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjl_model != null)
            {
                xsjl_model.SCHOOLID = xsjl.SCHOOLID;//ѧУID   ѧУ���ñ�
                xsjl_model.XSXXID = xsjl.XSXXID;//ѧ����ϢID   ѧ����Ϣ���ݱ�
                xsjl_model.YYNL = xsjl.YYNL;//Ӣ������
                xsjl_model.GZNX = xsjl.GZNX;//��������
                xsjl_model.ZWPJ = xsjl.ZWPJ;//��������
                xsjl_model.JYJL = xsjl.JYJL;//��������
                xsjl_model.SHZS = xsjl.SHZS;//����֤��
                xsjl_model.GZJY = xsjl.GZJY;//��������
                xsjl_model.QZYX = xsjl.QZYX;//��ְ����
                xsjl_model.JNZC = xsjl.JNZC;//����ר��
                xsjl_model.XMJY = xsjl.XMJY;//��Ŀ����
                db_zzxs.Entry(xsjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_13_A01_XSJL.Add(xsjl);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_13_A01_XSJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_13_A01_XSJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsjl(xsjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_13_A01_XSJL xsjl= db_zzxs.EDU_ZZXS_13_A01_XSJL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_13_A01_XSJL xsjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsjl(xsjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_13_A01_XSJL xsjl = db_zzxs.EDU_ZZXS_13_A01_XSJL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_13_A01_XSJL.Remove(xsjl);
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
                    EDU_ZZXS_13_A01_XSJL xsjl = db_zzxs.EDU_ZZXS_13_A01_XSJL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_13_A01_XSJL.Remove(xsjl);
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

        private static int Max_XSJL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ�����������ID
        public int GetMax_XSJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSJL_ID == 0)
                {
                    EDU_ZZXS_13_A01_XSJL xsjl = db_zzxs.EDU_ZZXS_13_A01_XSJL.FirstOrDefault();
                    if (xsjl == null)
                    {
                        Max_XSJL_ID = 1;
                    }
                    else
                    {
                        //Max_XSJL_ID = db_zzxs.EDU_ZZXS_13_A01_XSJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSJL_ID++;
                }
                maxId = Max_XSJL_ID;
            }
            return maxId;
        }

    }
}
