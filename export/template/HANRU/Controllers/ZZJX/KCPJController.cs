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
    public class KCPJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_01_A01_KCPJ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_01_A01_KCPJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddKcpj(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            kcpj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKcpj(kcpj);
        }

        public void UpdKcpj(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            //����Ĭ��ֵ
            if (kcpj.SCHOOLID == 0) kcpj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (kcpj.PJID == 0) kcpj.PJID = 0;//����ID
            if (kcpj.KXH == 0) kcpj.KXH = 0;//�����   ��ʦ�οα�
            if (string.IsNullOrEmpty(kcpj.PJR)) kcpj.PJR = "";//������   Ӧ��ϵͳ�û���
            if (kcpj.PJSJ == 0) kcpj.PJSJ = 0;//����ʱ��
            if (string.IsNullOrEmpty(kcpj.PJNR)) kcpj.PJNR = "";//��������
            if (string.IsNullOrEmpty(kcpj.HF)) kcpj.HF = "";//�ظ�
            EDU_ZZJX_01_A01_KCPJ kcpj_model = db_zzjx.EDU_ZZJX_01_A01_KCPJ.FirstOrDefault(e => e.SCHOOLID == kcpj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kcpj_model != null)
            {
                kcpj_model.SCHOOLID = kcpj.SCHOOLID;//ѧУID   ѧУ���ñ�
                kcpj_model.PJID = kcpj.PJID;//����ID
                kcpj_model.KXH = kcpj.KXH;//�����   ��ʦ�οα�
                kcpj_model.PJR = kcpj.PJR;//������   Ӧ��ϵͳ�û���
                kcpj_model.PJSJ = kcpj.PJSJ;//����ʱ��
                kcpj_model.PJNR = kcpj.PJNR;//��������
                kcpj_model.HF = kcpj.HF;//�ظ�
                db_zzjx.Entry(kcpj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_01_A01_KCPJ.Add(kcpj);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_01_A01_KCPJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_01_A01_KCPJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKcpj(kcpj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kcpj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kcpj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_01_A01_KCPJ kcpj= db_zzjx.EDU_ZZJX_01_A01_KCPJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kcpj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_01_A01_KCPJ kcpj)
        {
            InitViewBag();
            try
            {
                
                
                UpdKcpj(kcpj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kcpj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kcpj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_01_A01_KCPJ kcpj = db_zzjx.EDU_ZZJX_01_A01_KCPJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_01_A01_KCPJ.Remove(kcpj);
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
                    EDU_ZZJX_01_A01_KCPJ kcpj = db_zzjx.EDU_ZZJX_01_A01_KCPJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_01_A01_KCPJ.Remove(kcpj);
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

        private static int Max_KCPJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�γ����۱����ID
        public int GetMax_KCPJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KCPJ_ID == 0)
                {
                    EDU_ZZJX_01_A01_KCPJ kcpj = db_zzjx.EDU_ZZJX_01_A01_KCPJ.FirstOrDefault();
                    if (kcpj == null)
                    {
                        Max_KCPJ_ID = 1;
                    }
                    else
                    {
                        //Max_KCPJ_ID = db_zzjx.EDU_ZZJX_01_A01_KCPJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KCPJ_ID++;
                }
                maxId = Max_KCPJ_ID;
            }
            return maxId;
        }

    }
}
