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
    public class SJFBController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_12_A01_SJFB_DISP> model = db_oaxt.VIEW_EDU_OAXT_12_A01_SJFB_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSjfb(EDU_OAXT_12_A01_SJFB sjfb)
        {
            sjfb.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSjfb(sjfb);
        }

        public void UpdSjfb(EDU_OAXT_12_A01_SJFB sjfb)
        {
            //����Ĭ��ֵ
            if (sjfb.ID == 0) sjfb.ID = 0;//���ݷ���ID
            if (sjfb.SCHOOLID == 0) sjfb.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (sjfb.WEBID == 0) sjfb.WEBID = 0;//��վID   ��վ����
            if (string.IsNullOrEmpty(sjfb.FBRID)) sjfb.FBRID = "";//������ID
            if (string.IsNullOrEmpty(sjfb.FBBZRID)) sjfb.FBBZRID = "";//������׼��ID
            if (string.IsNullOrEmpty(sjfb.FBH)) sjfb.FBH = "";//������
            if (string.IsNullOrEmpty(sjfb.XXBT)) sjfb.XXBT = "";//���ݱ���
            if (string.IsNullOrEmpty(sjfb.FBLMH)) sjfb.FBLMH = "";//������Ŀ��
            if (string.IsNullOrEmpty(sjfb.SJNR)) sjfb.SJNR = "";//��������
            if (sjfb.FJS == 0) sjfb.FJS = 0;//������
            if (string.IsNullOrEmpty(sjfb.FBRQ)) sjfb.FBRQ = "";//��������
            if (string.IsNullOrEmpty(sjfb.FBDW)) sjfb.FBDW = "";//������λ��
            if (string.IsNullOrEmpty(sjfb.FBRGH)) sjfb.FBRGH = "";//�����˹���
            if (string.IsNullOrEmpty(sjfb.FBFW)) sjfb.FBFW = "";//������Χ
            if (string.IsNullOrEmpty(sjfb.FBBZRH)) sjfb.FBBZRH = "";//������׼�˺�
            if (string.IsNullOrEmpty(sjfb.SJZT)) sjfb.SJZT = "";//����״̬
            EDU_OAXT_12_A01_SJFB sjfb_model = db_oaxt.EDU_OAXT_12_A01_SJFB.FirstOrDefault(e => e.ID == sjfb.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sjfb_model != null)
            {
                sjfb_model.ID = sjfb.ID;//���ݷ���ID
                sjfb_model.SCHOOLID = sjfb.SCHOOLID;//ѧУ��   ѧУ���ñ�
                sjfb_model.WEBID = sjfb.WEBID;//��վID   ��վ����
                sjfb_model.FBRID = sjfb.FBRID;//������ID
                sjfb_model.FBBZRID = sjfb.FBBZRID;//������׼��ID
                sjfb_model.FBH = sjfb.FBH;//������
                sjfb_model.XXBT = sjfb.XXBT;//���ݱ���
                sjfb_model.FBLMH = sjfb.FBLMH;//������Ŀ��
                sjfb_model.SJNR = sjfb.SJNR;//��������
                sjfb_model.FJS = sjfb.FJS;//������
                sjfb_model.FBRQ = sjfb.FBRQ;//��������
                sjfb_model.FBDW = sjfb.FBDW;//������λ��
                sjfb_model.FBRGH = sjfb.FBRGH;//�����˹���
                sjfb_model.FBFW = sjfb.FBFW;//������Χ
                sjfb_model.FBBZRH = sjfb.FBBZRH;//������׼�˺�
                sjfb_model.SJZT = sjfb.SJZT;//����״̬
                db_oaxt.Entry(sjfb_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_oaxt.EDU_OAXT_12_A01_SJFB.Add(sjfb);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_12_A01_SJFB());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_12_A01_SJFB());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_12_A01_SJFB sjfb)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSjfb(sjfb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sjfb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sjfb);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_12_A01_SJFB sjfb= db_oaxt.EDU_OAXT_12_A01_SJFB.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sjfb);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_12_A01_SJFB sjfb)
        {
            InitViewBag();
            try
            {
                
                
                UpdSjfb(sjfb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sjfb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sjfb);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_12_A01_SJFB sjfb = db_oaxt.EDU_OAXT_12_A01_SJFB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_12_A01_SJFB.Remove(sjfb);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_12_A01_SJFB sjfb = db_oaxt.EDU_OAXT_12_A01_SJFB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_12_A01_SJFB.Remove(sjfb);
                    db_oaxt.SaveChanges();
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

        private static int Max_SJFB_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ���ݷ���������ID
        public int GetMax_SJFB_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SJFB_ID == 0)
                {
                    EDU_OAXT_12_A01_SJFB sjfb = db_oaxt.EDU_OAXT_12_A01_SJFB.FirstOrDefault();
                    if (sjfb == null)
                    {
                        Max_SJFB_ID = 1;
                    }
                    else
                    {
                        //Max_SJFB_ID = db_oaxt.EDU_OAXT_12_A01_SJFB.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SJFB_ID++;
                }
                maxId = Max_SJFB_ID;
            }
            return maxId;
        }

    }
}
