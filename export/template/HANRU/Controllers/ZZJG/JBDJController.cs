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
    public class JBDJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_04_A01_JBDJ_DISP> model = db_zzjg.VIEW_EDU_ZZJG_04_A01_JBDJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJbdj(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            jbdj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJbdj(jbdj);
        }

        public void UpdJbdj(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            //����Ĭ��ֵ
            if (jbdj.ID == 0) jbdj.ID = 0;//�Ӱ�ǼǱ�ID
            if (jbdj.SCHOOLID == 0) jbdj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jbdj.JZGJBSJID == 0) jbdj.JZGJBSJID = 0;//��ְ��ID   ��ְ���������������
            if (jbdj.KSSJ == 0) jbdj.KSSJ = 0;//��ʼʱ��
            if (jbdj.JSSJ == 0) jbdj.JSSJ = 0;//����ʱ��
            if (jbdj.JBLX == 0) jbdj.JBLX = 0;//�Ӱ�����   �Ӱ����ʹ���
            EDU_ZZJG_04_A01_JBDJ jbdj_model = db_zzjg.EDU_ZZJG_04_A01_JBDJ.FirstOrDefault(e => e.ID == jbdj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jbdj_model != null)
            {
                jbdj_model.ID = jbdj.ID;//�Ӱ�ǼǱ�ID
                jbdj_model.SCHOOLID = jbdj.SCHOOLID;//ѧУID   ѧУ���ñ�
                jbdj_model.JZGJBSJID = jbdj.JZGJBSJID;//��ְ��ID   ��ְ���������������
                jbdj_model.KSSJ = jbdj.KSSJ;//��ʼʱ��
                jbdj_model.JSSJ = jbdj.JSSJ;//����ʱ��
                jbdj_model.JBLX = jbdj.JBLX;//�Ӱ�����   �Ӱ����ʹ���
                db_zzjg.Entry(jbdj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjg.EDU_ZZJG_04_A01_JBDJ.Add(jbdj);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZJ_JBLXLst = ZJLDAL.GetZJ_JBLXSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_04_A01_JBDJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_04_A01_JBDJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJbdj(jbdj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jbdj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jbdj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_04_A01_JBDJ jbdj= db_zzjg.EDU_ZZJG_04_A01_JBDJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jbdj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_04_A01_JBDJ jbdj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJbdj(jbdj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jbdj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jbdj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_04_A01_JBDJ jbdj = db_zzjg.EDU_ZZJG_04_A01_JBDJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_04_A01_JBDJ.Remove(jbdj);
                db_zzjg.SaveChanges();
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
                    EDU_ZZJG_04_A01_JBDJ jbdj = db_zzjg.EDU_ZZJG_04_A01_JBDJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_04_A01_JBDJ.Remove(jbdj);
                    db_zzjg.SaveChanges();
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

        private static int Max_JBDJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�Ӱ�ǼǱ����ID
        public int GetMax_JBDJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JBDJ_ID == 0)
                {
                    EDU_ZZJG_04_A01_JBDJ jbdj = db_zzjg.EDU_ZZJG_04_A01_JBDJ.FirstOrDefault();
                    if (jbdj == null)
                    {
                        Max_JBDJ_ID = 1;
                    }
                    else
                    {
                        //Max_JBDJ_ID = db_zzjg.EDU_ZZJG_04_A01_JBDJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JBDJ_ID++;
                }
                maxId = Max_JBDJ_ID;
            }
            return maxId;
        }

    }
}
