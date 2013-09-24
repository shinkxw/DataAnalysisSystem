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
    public class XSJTXXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_02_01_XSJTXX_DISP> model = db_zzxs.VIEW_EDU_ZZXS_02_01_XSJTXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsjtxx(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            xsjtxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjtxx(xsjtxx);
        }

        public void UpdXsjtxx(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            //����Ĭ��ֵ
            if (xsjtxx.XSXXID == 0) xsjtxx.XSXXID = 0;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
            if (xsjtxx.SCHOOLID == 0) xsjtxx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(xsjtxx.JTZZ)) xsjtxx.JTZZ = "";//��ͥסַ
            if (string.IsNullOrEmpty(xsjtxx.JTYZBM)) xsjtxx.JTYZBM = "";//��ͥ��������
            if (string.IsNullOrEmpty(xsjtxx.JTDH)) xsjtxx.JTDH = "";//��ͥ�绰
            if (string.IsNullOrEmpty(xsjtxx.JTLXR)) xsjtxx.JTLXR = "";//��ͥ��ϵ��
            if (string.IsNullOrEmpty(xsjtxx.JTDZXX)) xsjtxx.JTDZXX = "";//��ͥ��������
            if (xsjtxx.JTRK == 0) xsjtxx.JTRK = 0;//��ͥ�˿�
            if (string.IsNullOrEmpty(xsjtxx.JTZYSRLY)) xsjtxx.JTZYSRLY = "";//��ͥ��Ҫ������Դ
            if (xsjtxx.JTYSRJE == 0) xsjtxx.JTYSRJE = 0;//��ͥ��������
            if (xsjtxx.JTNSRJE == 0) xsjtxx.JTNSRJE = 0;//��ͥ��������
            if (string.IsNullOrEmpty(xsjtxx.LJZJHCZ)) xsjtxx.LJZJHCZ = "";//��������վ
            EDU_ZZXS_02_01_XSJTXX xsjtxx_model = db_zzxs.EDU_ZZXS_02_01_XSJTXX.FirstOrDefault(e => e.XSXXID == xsjtxx.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjtxx_model != null)
            {
                xsjtxx_model.XSXXID = xsjtxx.XSXXID;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
                xsjtxx_model.SCHOOLID = xsjtxx.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xsjtxx_model.JTZZ = xsjtxx.JTZZ;//��ͥסַ
                xsjtxx_model.JTYZBM = xsjtxx.JTYZBM;//��ͥ��������
                xsjtxx_model.JTDH = xsjtxx.JTDH;//��ͥ�绰
                xsjtxx_model.JTLXR = xsjtxx.JTLXR;//��ͥ��ϵ��
                xsjtxx_model.JTDZXX = xsjtxx.JTDZXX;//��ͥ��������
                xsjtxx_model.JTRK = xsjtxx.JTRK;//��ͥ�˿�
                xsjtxx_model.JTZYSRLY = xsjtxx.JTZYSRLY;//��ͥ��Ҫ������Դ
                xsjtxx_model.JTYSRJE = xsjtxx.JTYSRJE;//��ͥ��������
                xsjtxx_model.JTNSRJE = xsjtxx.JTNSRJE;//��ͥ��������
                xsjtxx_model.LJZJHCZ = xsjtxx.LJZJHCZ;//��������վ
                db_zzxs.Entry(xsjtxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_02_01_XSJTXX.Add(xsjtxx);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_02_01_XSJTXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_02_01_XSJTXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsjtxx(xsjtxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_02_01_XSJTXX xsjtxx= db_zzxs.EDU_ZZXS_02_01_XSJTXX.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjtxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_02_01_XSJTXX xsjtxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsjtxx(xsjtxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsjtxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsjtxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_02_01_XSJTXX xsjtxx = db_zzxs.EDU_ZZXS_02_01_XSJTXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_02_01_XSJTXX.Remove(xsjtxx);
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
                    EDU_ZZXS_02_01_XSJTXX xsjtxx = db_zzxs.EDU_ZZXS_02_01_XSJTXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_02_01_XSJTXX.Remove(xsjtxx);
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

        private static int Max_XSJTXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ����ͥ��Ϣ���ݱ����ID
        public int GetMax_XSJTXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSJTXX_ID == 0)
                {
                    EDU_ZZXS_02_01_XSJTXX xsjtxx = db_zzxs.EDU_ZZXS_02_01_XSJTXX.FirstOrDefault();
                    if (xsjtxx == null)
                    {
                        Max_XSJTXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSJTXX_ID = db_zzxs.EDU_ZZXS_02_01_XSJTXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSJTXX_ID++;
                }
                maxId = Max_XSJTXX_ID;
            }
            return maxId;
        }

    }
}
