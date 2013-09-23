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
            List<VIEW_EDU_ZZXS_02_02_XSJTCY_DISP> model = db_zzxs.VIEW_EDU_ZZXS_02_02_XSJTCY_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsjtcy(EDU_ZZXS_02_02_XSJTCY xsjtcy)
        {
            xsjtcy.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsjtcy(xsjtcy);
        }

        public void UpdXsjtcy(EDU_ZZXS_02_02_XSJTCY xsjtcy)
        {
            //����Ĭ��ֵ
            if (xsjtcy.ID == 0) xsjtcy.ID = 0;//���
            if (xsjtcy.SCHOOLID == 0) xsjtcy.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xsjtcy.XSXXID == 0) xsjtcy.XSXXID = 0;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
            if (string.IsNullOrEmpty(xsjtcy.XM)) xsjtcy.XM = "";//����
            if (string.IsNullOrEmpty(xsjtcy.GXM)) xsjtcy.GXM = "";//��ϵ��   ��ͥ��ϵ����
            if (string.IsNullOrEmpty(xsjtcy.JTCYZYM)) xsjtcy.JTCYZYM = "";//��ͥ��Աְҵ��   ְҵ���������
            if (string.IsNullOrEmpty(xsjtcy.SZDW)) xsjtcy.SZDW = "";//���ڵ�λ
            if (string.IsNullOrEmpty(xsjtcy.ZZMMM)) xsjtcy.ZZMMM = "";//������ò��   ������ò����
            if (string.IsNullOrEmpty(xsjtcy.DH)) xsjtcy.DH = "";//�绰
            if (string.IsNullOrEmpty(xsjtcy.YDDH)) xsjtcy.YDDH = "";//�ƶ��绰
            EDU_ZZXS_02_02_XSJTCY xsjtcy_model = db_zzxs.EDU_ZZXS_02_02_XSJTCY.FirstOrDefault(e => e.ID == xsjtcy.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsjtcy_model != null)
            {
                xsjtcy_model.ID = xsjtcy.ID;//���
                xsjtcy_model.SCHOOLID = xsjtcy.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xsjtcy_model.XSXXID = xsjtcy.XSXXID;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
                xsjtcy_model.XM = xsjtcy.XM;//����
                xsjtcy_model.GXM = xsjtcy.GXM;//��ϵ��   ��ͥ��ϵ����
                xsjtcy_model.JTCYZYM = xsjtcy.JTCYZYM;//��ͥ��Աְҵ��   ְҵ���������
                xsjtcy_model.SZDW = xsjtcy.SZDW;//���ڵ�λ
                xsjtcy_model.ZZMMM = xsjtcy.ZZMMM;//������ò��   ������ò����
                xsjtcy_model.DH = xsjtcy.DH;//�绰
                xsjtcy_model.YDDH = xsjtcy.YDDH;//�ƶ��绰
                db_zzxs.Entry(xsjtcy_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_02_02_XSJTCY.Add(xsjtcy);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_JTGXLst = GBLDAL.GetGB_JTGXSelLst();
            ViewBag.GB_ZYFLLst = GBLDAL.GetGB_ZYFLSelLst();
            ViewBag.GB_ZZMMLst = GBLDAL.GetGB_ZZMMSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_02_02_XSJTCY());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_02_02_XSJTCY());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_02_02_XSJTCY xsjtcy)
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
            
            EDU_ZZXS_02_02_XSJTCY xsjtcy= db_zzxs.EDU_ZZXS_02_02_XSJTCY.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsjtcy);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_02_02_XSJTCY xsjtcy)
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
                EDU_ZZXS_02_02_XSJTCY xsjtcy = db_zzxs.EDU_ZZXS_02_02_XSJTCY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_02_02_XSJTCY.Remove(xsjtcy);
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
                    EDU_ZZXS_02_02_XSJTCY xsjtcy = db_zzxs.EDU_ZZXS_02_02_XSJTCY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_02_02_XSJTCY.Remove(xsjtcy);
                    db_zzxs.SaveChanges();
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
                    EDU_ZZXS_02_02_XSJTCY xsjtcy = db_zzxs.EDU_ZZXS_02_02_XSJTCY.FirstOrDefault();
                    if (xsjtcy == null)
                    {
                        Max_XSJTCY_ID = 1;
                    }
                    else
                    {
                        //Max_XSJTCY_ID = db_zzxs.EDU_ZZXS_02_02_XSJTCY.Max(e => e.ID) + 1;
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
