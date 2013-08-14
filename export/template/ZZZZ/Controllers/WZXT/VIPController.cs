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
    public class VIPController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_VIP_DISP> model = db_wzxt.VIEW_EDU_WZXT_VIP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddVip(EDU_WZXT_VIP vip)
        {
            vip.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdVip(vip);
        }

        public void UpdVip(EDU_WZXT_VIP vip)
        {
            //����Ĭ��ֵ
            if (vip.SCHOOLID == 0) vip.SCHOOLID = 0;//ѧУ��
            if (vip.WEBID == 0) vip.WEBID = 0;//��վID
            if (string.IsNullOrEmpty(vip.LOGINNAME)) vip.LOGINNAME = "";//�û���
            if (string.IsNullOrEmpty(vip.LOGINPWD)) vip.LOGINPWD = "";//����
            if (string.IsNullOrEmpty(vip.REALNAME)) vip.REALNAME = "";//����
            if (string.IsNullOrEmpty(vip.EMAIL)) vip.EMAIL = "";//��������
            if (string.IsNullOrEmpty(vip.MOBILE)) vip.MOBILE = "";//��ϵ�绰
            if (string.IsNullOrEmpty(vip.QQ)) vip.QQ = "";//QQ����
            if (vip.AUDITSTATU == 0) vip.AUDITSTATU = 0;//���״̬
            if (string.IsNullOrEmpty(vip.AUDITOR)) vip.AUDITOR = "";//�����ID
            if (string.IsNullOrEmpty(vip.AUDITORNAME)) vip.AUDITORNAME = "";//�����
            EDU_WZXT_VIP vip_model = db_wzxt.EDU_WZXT_VIP.FirstOrDefault(e => e.SCHOOLID == vip.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (vip_model != null)
            {
                vip_model.SCHOOLID = vip.SCHOOLID;//ѧУ��
                vip_model.WEBID = vip.WEBID;//��վID
                vip_model.LOGINNAME = vip.LOGINNAME;//�û���
                vip_model.LOGINPWD = vip.LOGINPWD;//����
                vip_model.REALNAME = vip.REALNAME;//����
                vip_model.EMAIL = vip.EMAIL;//��������
                vip_model.MOBILE = vip.MOBILE;//��ϵ�绰
                vip_model.QQ = vip.QQ;//QQ����
                vip_model.AUDITSTATU = vip.AUDITSTATU;//���״̬
                vip_model.AUDITOR = vip.AUDITOR;//�����ID
                vip_model.AUDITORNAME = vip.AUDITORNAME;//�����
                db_wzxt.Entry(vip_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_VIP.Add(vip);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_VIP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_VIP());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_VIP vip)
        {
            InitViewBag();
            try
            {
                //
                //
                AddVip(vip);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(vip);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(vip);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_VIP vip= db_wzxt.EDU_WZXT_VIP.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(vip);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_VIP vip)
        {
            InitViewBag();
            try
            {
                
                
                UpdVip(vip);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(vip);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(vip);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_VIP vip = db_wzxt.EDU_WZXT_VIP.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_VIP.Remove(vip);
                db_wzxt.SaveChanges();
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
                    EDU_WZXT_VIP vip = db_wzxt.EDU_WZXT_VIP.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_VIP.Remove(vip);
                    db_wzxt.SaveChanges();
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

        private static int Max_VIP_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��վ��Ա���ID
        public int GetMax_VIP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_VIP_ID == 0)
                {
                    EDU_WZXT_VIP vip = db_wzxt.EDU_WZXT_VIP.FirstOrDefault();
                    if (vip == null)
                    {
                        Max_VIP_ID = 1;
                    }
                    else
                    {
                        //Max_VIP_ID = db_wzxt.EDU_WZXT_VIP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_VIP_ID++;
                }
                maxId = Max_VIP_ID;
            }
            return maxId;
        }

    }
}
