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
    public class XSXWSXQKController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_03_XSXWSXQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsxwsxqk(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            xsxwsxqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsxwsxqk(xsxwsxqk);
        }

        public void UpdXsxwsxqk(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            //����Ĭ��ֵ
            if (xsxwsxqk.SCHOOLID == 0) xsxwsxqk.SCHOOLID = 0;//ѧУ��ѧУID
            if (xsxwsxqk.ID == 0) xsxwsxqk.ID = 0;//ʵϰ�����ID
            if (xsxwsxqk.XSXXID == 0) xsxwsxqk.XSXXID = 0;//ѧ����ϢID
            if (xsxwsxqk.QYID == 0) xsxwsxqk.QYID = 0;//��ҵ��ID
            if (xsxwsxqk.GWID == 0) xsxwsxqk.GWID = 0;//��λ��ID
            if (string.IsNullOrEmpty(xsxwsxqk.SXQSRQ)) xsxwsxqk.SXQSRQ = "";//��ѵ��ʼ������ѵ��ʼ���� ��ţ�ZZJX070301 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
            if (string.IsNullOrEmpty(xsxwsxqk.SXJSRQ)) xsxwsxqk.SXJSRQ = "";//��ѵ����������ѵ�������� ��ţ�ZZJX070302 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
            if (string.IsNullOrEmpty(xsxwsxqk.QYBH)) xsxwsxqk.QYBH = "";//��ҵ�����ҵ��� ��ţ�ZZJX070101 ������ZZJX070101 QYBH ��ҵ��� C 20 M NULL ��ҵע��ʱ�ı�� NULL
            if (string.IsNullOrEmpty(xsxwsxqk.SXGWMC)) xsxwsxqk.SXGWMC = "";//��ѵ��λ������ѵ��λ���� ��ţ�ZZJX070303 
            if (string.IsNullOrEmpty(xsxwsxqk.SXDS)) xsxwsxqk.SXDS = "";//ʵѵ��ʦʵѵ��ʦ ��ţ�ZZJX070304 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
            if (string.IsNullOrEmpty(xsxwsxqk.SFGMSXZRBX)) xsxwsxqk.SFGMSXZRBX = "";//�Ƿ���ʵϰ���α����Ƿ���ʵϰ���α��� ��ţ�ZZJX070305 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(xsxwsxqk.BXFZFZ)) xsxwsxqk.BXFZFZ = "";//���շ�֧���߱��շ�֧���� ��ţ�ZZJX070306 
            if (xsxwsxqk.SXXC == 0) xsxwsxqk.SXXC = 0;//ʵϰн��ʵϰн�� ��ţ�ZZJX070307 
            if (string.IsNullOrEmpty(xsxwsxqk.SFSDGSX)) xsxwsxqk.SFSDGSX = "";//�Ƿ��Ƕ���ʵϰ�Ƿ��Ƕ���ʵϰ ��ţ�ZZJX070308 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(xsxwsxqk.XSHJXZM)) xsxwsxqk.XSHJXZM = "";//ѧ������������ѧ������������ ��ţ�ZZJX070309 ֵ�ռ䣺HJXZ�������ʴ��� 
            EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk_model = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.FirstOrDefault(e => e.SCHOOLID == xsxwsxqk.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxwsxqk_model != null)
            {
                xsxwsxqk_model.SCHOOLID = xsxwsxqk.SCHOOLID;//ѧУ��ѧУID
                xsxwsxqk_model.ID = xsxwsxqk.ID;//ʵϰ�����ID
                xsxwsxqk_model.XSXXID = xsxwsxqk.XSXXID;//ѧ����ϢID
                xsxwsxqk_model.QYID = xsxwsxqk.QYID;//��ҵ��ID
                xsxwsxqk_model.GWID = xsxwsxqk.GWID;//��λ��ID
                xsxwsxqk_model.SXQSRQ = xsxwsxqk.SXQSRQ;//��ѵ��ʼ������ѵ��ʼ���� ��ţ�ZZJX070301 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
                xsxwsxqk_model.SXJSRQ = xsxwsxqk.SXJSRQ;//��ѵ����������ѵ�������� ��ţ�ZZJX070302 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
                xsxwsxqk_model.QYBH = xsxwsxqk.QYBH;//��ҵ�����ҵ��� ��ţ�ZZJX070101 ������ZZJX070101 QYBH ��ҵ��� C 20 M NULL ��ҵע��ʱ�ı�� NULL
                xsxwsxqk_model.SXGWMC = xsxwsxqk.SXGWMC;//��ѵ��λ������ѵ��λ���� ��ţ�ZZJX070303 
                xsxwsxqk_model.SXDS = xsxwsxqk.SXDS;//ʵѵ��ʦʵѵ��ʦ ��ţ�ZZJX070304 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
                xsxwsxqk_model.SFGMSXZRBX = xsxwsxqk.SFGMSXZRBX;//�Ƿ���ʵϰ���α����Ƿ���ʵϰ���α��� ��ţ�ZZJX070305 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                xsxwsxqk_model.BXFZFZ = xsxwsxqk.BXFZFZ;//���շ�֧���߱��շ�֧���� ��ţ�ZZJX070306 
                xsxwsxqk_model.SXXC = xsxwsxqk.SXXC;//ʵϰн��ʵϰн�� ��ţ�ZZJX070307 
                xsxwsxqk_model.SFSDGSX = xsxwsxqk.SFSDGSX;//�Ƿ��Ƕ���ʵϰ�Ƿ��Ƕ���ʵϰ ��ţ�ZZJX070308 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                xsxwsxqk_model.XSHJXZM = xsxwsxqk.XSHJXZM;//ѧ������������ѧ������������ ��ţ�ZZJX070309 ֵ�ռ䣺HJXZ�������ʴ��� 
                db_zzjx.Entry(xsxwsxqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Add(xsxwsxqk);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_03_XSXWSXQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_03_XSXWSXQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsxwsxqk(xsxwsxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxwsxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxwsxqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk= db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsxwsxqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsxwsxqk(xsxwsxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxwsxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxwsxqk);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Remove(xsxwsxqk);
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
                    EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Remove(xsxwsxqk);
                    db_zzjx.SaveChanges();
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

        private static int Max_XSXWSXQK_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ��У��ʵϰ���������������ID
        public int GetMax_XSXWSXQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSXWSXQK_ID == 0)
                {
                    EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.FirstOrDefault();
                    if (xsxwsxqk == null)
                    {
                        Max_XSXWSXQK_ID = 1;
                    }
                    else
                    {
                        //Max_XSXWSXQK_ID = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSXWSXQK_ID++;
                }
                maxId = Max_XSXWSXQK_ID;
            }
            return maxId;
        }

    }
}
