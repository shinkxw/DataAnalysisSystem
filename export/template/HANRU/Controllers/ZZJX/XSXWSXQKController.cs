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
    public class XSXWSXQKController : JPXTController
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
            if (xsxwsxqk.SCHOOLID == 0) xsxwsxqk.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xsxwsxqk.ID == 0) xsxwsxqk.ID = 0;//ʵϰ�����ID
            if (xsxwsxqk.XSXXID == 0) xsxwsxqk.XSXXID = 0;//ѧ����ϢID   ѧ����Ϣ���ݱ�
            if (xsxwsxqk.QYID == 0) xsxwsxqk.QYID = 0;//��ҵ��ID   У��ʵϰ������Ϣ���������
            if (xsxwsxqk.GWID == 0) xsxwsxqk.GWID = 0;//��λ��ID   ʵϰ��λ��
            if (string.IsNullOrEmpty(xsxwsxqk.SXQSRQ)) xsxwsxqk.SXQSRQ = "";//��ѵ��ʼ����
            if (string.IsNullOrEmpty(xsxwsxqk.SXJSRQ)) xsxwsxqk.SXJSRQ = "";//��ѵ��������
            if (string.IsNullOrEmpty(xsxwsxqk.QYBH)) xsxwsxqk.QYBH = "";//��ҵ���
            if (string.IsNullOrEmpty(xsxwsxqk.SXGWMC)) xsxwsxqk.SXGWMC = "";//��ѵ��λ����
            if (string.IsNullOrEmpty(xsxwsxqk.SXDS)) xsxwsxqk.SXDS = "";//ʵѵ��ʦ
            if (string.IsNullOrEmpty(xsxwsxqk.SFGMSXZRBX)) xsxwsxqk.SFGMSXZRBX = "";//�Ƿ���ʵϰ���α���   �Ƿ��־�����
            if (string.IsNullOrEmpty(xsxwsxqk.BXFZFZ)) xsxwsxqk.BXFZFZ = "";//���շ�֧����
            if (xsxwsxqk.SXXC == 0) xsxwsxqk.SXXC = 0;//ʵϰн��
            if (string.IsNullOrEmpty(xsxwsxqk.SFSDGSX)) xsxwsxqk.SFSDGSX = "";//�Ƿ��Ƕ���ʵϰ   �Ƿ��־�����
            if (string.IsNullOrEmpty(xsxwsxqk.XSHJXZM)) xsxwsxqk.XSHJXZM = "";//ѧ������������   �������ʴ���
            EDU_ZZJX_07_03_XSXWSXQK xsxwsxqk_model = db_zzjx.EDU_ZZJX_07_03_XSXWSXQK.FirstOrDefault(e => e.SCHOOLID == xsxwsxqk.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxwsxqk_model != null)
            {
                xsxwsxqk_model.SCHOOLID = xsxwsxqk.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xsxwsxqk_model.ID = xsxwsxqk.ID;//ʵϰ�����ID
                xsxwsxqk_model.XSXXID = xsxwsxqk.XSXXID;//ѧ����ϢID   ѧ����Ϣ���ݱ�
                xsxwsxqk_model.QYID = xsxwsxqk.QYID;//��ҵ��ID   У��ʵϰ������Ϣ���������
                xsxwsxqk_model.GWID = xsxwsxqk.GWID;//��λ��ID   ʵϰ��λ��
                xsxwsxqk_model.SXQSRQ = xsxwsxqk.SXQSRQ;//��ѵ��ʼ����
                xsxwsxqk_model.SXJSRQ = xsxwsxqk.SXJSRQ;//��ѵ��������
                xsxwsxqk_model.QYBH = xsxwsxqk.QYBH;//��ҵ���
                xsxwsxqk_model.SXGWMC = xsxwsxqk.SXGWMC;//��ѵ��λ����
                xsxwsxqk_model.SXDS = xsxwsxqk.SXDS;//ʵѵ��ʦ
                xsxwsxqk_model.SFGMSXZRBX = xsxwsxqk.SFGMSXZRBX;//�Ƿ���ʵϰ���α���   �Ƿ��־�����
                xsxwsxqk_model.BXFZFZ = xsxwsxqk.BXFZFZ;//���շ�֧����
                xsxwsxqk_model.SXXC = xsxwsxqk.SXXC;//ʵϰн��
                xsxwsxqk_model.SFSDGSX = xsxwsxqk.SFSDGSX;//�Ƿ��Ƕ���ʵϰ   �Ƿ��־�����
                xsxwsxqk_model.XSHJXZM = xsxwsxqk.XSHJXZM;//ѧ������������   �������ʴ���
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
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.ZZ_HJXZLst = ZZBLDAL.GetZZ_HJXZSelLst();
            
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

        /*public String Delete(String id)
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
