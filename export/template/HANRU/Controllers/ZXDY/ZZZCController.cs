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
    public class ZZZCController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A06_ZZZC_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A06_ZZZC_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzzc(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            zzzc.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzzc(zzzc);
        }

        public void UpdZzzc(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            //����Ĭ��ֵ
            if (zzzc.ID == 0) zzzc.ID = 0;//�ܴα�ID
            if (zzzc.SCHOOLID == 0) zzzc.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (zzzc.XQID == 0) zzzc.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            if (string.IsNullOrEmpty(zzzc.ZCM)) zzzc.ZCM = "";//�ܴ���
            if (zzzc.XQKSRQ == 0) zzzc.XQKSRQ = 0;//��ʼ����
            if (zzzc.XQJSRQ == 0) zzzc.XQJSRQ = 0;//��������
            EDU_ZXDY_04_A06_ZZZC zzzc_model = db_zxdy.EDU_ZXDY_04_A06_ZZZC.FirstOrDefault(e => e.ID == zzzc.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzzc_model != null)
            {
                zzzc_model.ID = zzzc.ID;//�ܴα�ID
                zzzc_model.SCHOOLID = zzzc.SCHOOLID;//ѧУID   ѧУ���ñ�
                zzzc_model.XQID = zzzc.XQID;//ѧ��ID   ѧ�����ݱ�
                zzzc_model.ZCM = zzzc.ZCM;//�ܴ���
                zzzc_model.XQKSRQ = zzzc.XQKSRQ;//��ʼ����
                zzzc_model.XQJSRQ = zzzc.XQJSRQ;//��������
                db_zxdy.Entry(zzzc_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxdy.EDU_ZXDY_04_A06_ZZZC.Add(zzzc);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A06_ZZZC());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A06_ZZZC());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzzc(zzzc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzzc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzzc);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A06_ZZZC zzzc= db_zxdy.EDU_ZXDY_04_A06_ZZZC.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzzc);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A06_ZZZC zzzc)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzzc(zzzc);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzzc);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzzc);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXDY_04_A06_ZZZC zzzc = db_zxdy.EDU_ZXDY_04_A06_ZZZC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A06_ZZZC.Remove(zzzc);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_04_A06_ZZZC zzzc = db_zxdy.EDU_ZXDY_04_A06_ZZZC.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A06_ZZZC.Remove(zzzc);
                    db_zxdy.SaveChanges();
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

        private static int Max_ZZZC_ID = 0;
        private static object syncIDLock = new object();
        //��ȡֵ���ܴα����ID
        public int GetMax_ZZZC_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZZC_ID == 0)
                {
                    EDU_ZXDY_04_A06_ZZZC zzzc = db_zxdy.EDU_ZXDY_04_A06_ZZZC.FirstOrDefault();
                    if (zzzc == null)
                    {
                        Max_ZZZC_ID = 1;
                    }
                    else
                    {
                        //Max_ZZZC_ID = db_zxdy.EDU_ZXDY_04_A06_ZZZC.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZZC_ID++;
                }
                maxId = Max_ZZZC_ID;
            }
            return maxId;
        }

    }
}
