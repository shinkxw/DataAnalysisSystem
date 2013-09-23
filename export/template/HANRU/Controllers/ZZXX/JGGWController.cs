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
    public class JGGWController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXX_03_A01_JGGW_DISP> model = db_zzxx.VIEW_EDU_ZZXX_03_A01_JGGW_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJggw(EDU_ZZXX_03_A01_JGGW jggw)
        {
            jggw.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJggw(jggw);
        }

        public void UpdJggw(EDU_ZZXX_03_A01_JGGW jggw)
        {
            //����Ĭ��ֵ
            if (jggw.ID == 0) jggw.ID = 0;//��λ��ID
            if (jggw.SCHOOLID == 0) jggw.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(jggw.JGH)) jggw.JGH = "";//������   У�ڻ����������
            if (string.IsNullOrEmpty(jggw.GWBH)) jggw.GWBH = "";//��λ���
            if (string.IsNullOrEmpty(jggw.GWMC)) jggw.GWMC = "";//��λ����
            if (string.IsNullOrEmpty(jggw.GWSM)) jggw.GWSM = "";//��λ˵��
            EDU_ZZXX_03_A01_JGGW jggw_model = db_zzxx.EDU_ZZXX_03_A01_JGGW.FirstOrDefault(e => e.ID == jggw.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jggw_model != null)
            {
                jggw_model.ID = jggw.ID;//��λ��ID
                jggw_model.SCHOOLID = jggw.SCHOOLID;//ѧУID   ѧУ���ñ�
                jggw_model.JGH = jggw.JGH;//������   У�ڻ����������
                jggw_model.GWBH = jggw.GWBH;//��λ���
                jggw_model.GWMC = jggw.GWMC;//��λ����
                jggw_model.GWSM = jggw.GWSM;//��λ˵��
                db_zzxx.Entry(jggw_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxx.EDU_ZZXX_03_A01_JGGW.Add(jggw);
            }
            db_zzxx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXX_03_A01_JGGW());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXX_03_A01_JGGW());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXX_03_A01_JGGW jggw)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJggw(jggw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jggw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jggw);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXX_03_A01_JGGW jggw= db_zzxx.EDU_ZZXX_03_A01_JGGW.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jggw);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXX_03_A01_JGGW jggw)
        {
            InitViewBag();
            try
            {
                
                
                UpdJggw(jggw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jggw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jggw);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXX_03_A01_JGGW jggw = db_zzxx.EDU_ZZXX_03_A01_JGGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxx.EDU_ZZXX_03_A01_JGGW.Remove(jggw);
                db_zzxx.SaveChanges();
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
                    EDU_ZZXX_03_A01_JGGW jggw = db_zzxx.EDU_ZZXX_03_A01_JGGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxx.EDU_ZZXX_03_A01_JGGW.Remove(jggw);
                    db_zzxx.SaveChanges();
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

        private static int Max_JGGW_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ������λ�����ID
        public int GetMax_JGGW_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JGGW_ID == 0)
                {
                    EDU_ZZXX_03_A01_JGGW jggw = db_zzxx.EDU_ZZXX_03_A01_JGGW.FirstOrDefault();
                    if (jggw == null)
                    {
                        Max_JGGW_ID = 1;
                    }
                    else
                    {
                        //Max_JGGW_ID = db_zzxx.EDU_ZZXX_03_A01_JGGW.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JGGW_ID++;
                }
                maxId = Max_JGGW_ID;
            }
            return maxId;
        }

    }
}
