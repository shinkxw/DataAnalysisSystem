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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class ZZRYAPController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A02_ZZRYAP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzryap(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            zzryap.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzryap(zzryap);
        }

        public void UpdZzryap(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            //����Ĭ��ֵ
            if (zzryap.ID == 0) zzryap.ID = 0;//ֵ����Ա���ű�ID
            if (zzryap.SCHOOLID == 0) zzryap.SCHOOLID = 0;//ѧУID
            if (zzryap.XQID == 0) zzryap.XQID = 0;//ѧ��ID
            if (zzryap.ZCID == 0) zzryap.ZCID = 0;//�ܴ�ID
            if (zzryap.KSRQ == 0) zzryap.KSRQ = 0;//��ʼ����
            if (zzryap.JSRQ == 0) zzryap.JSRQ = 0;//��������
            if (string.IsNullOrEmpty(zzryap.ZZBJ)) zzryap.ZZBJ = "";//ֵ�ܰ༶���
            if (string.IsNullOrEmpty(zzryap.ZZID)) zzryap.ZZID = "";//�鳤ID
            if (string.IsNullOrEmpty(zzryap.ZYIDLB)) zzryap.ZYIDLB = "";//��ԱID�б�
            EDU_ZXDY_04_A02_ZZRYAP zzryap_model = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.FirstOrDefault(e => e.ID == zzryap.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzryap_model != null)
            {
                zzryap_model.ID = zzryap.ID;//ֵ����Ա���ű�ID
                zzryap_model.SCHOOLID = zzryap.SCHOOLID;//ѧУID
                zzryap_model.XQID = zzryap.XQID;//ѧ��ID
                zzryap_model.ZCID = zzryap.ZCID;//�ܴ�ID
                zzryap_model.KSRQ = zzryap.KSRQ;//��ʼ����
                zzryap_model.JSRQ = zzryap.JSRQ;//��������
                zzryap_model.ZZBJ = zzryap.ZZBJ;//ֵ�ܰ༶���
                zzryap_model.ZZID = zzryap.ZZID;//�鳤ID
                zzryap_model.ZYIDLB = zzryap.ZYIDLB;//��ԱID�б�
                db_zxdy.Entry(zzryap_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Add(zzryap);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A02_ZZRYAP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A02_ZZRYAP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzryap(zzryap);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzryap);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzryap);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A02_ZZRYAP zzryap= db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzryap);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A02_ZZRYAP zzryap)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzryap(zzryap);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzryap);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzryap);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXDY_04_A02_ZZRYAP zzryap = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Remove(zzryap);
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
                    EDU_ZXDY_04_A02_ZZRYAP zzryap = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Remove(zzryap);
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

        private static int Max_ZZRYAP_ID = 0;
        private static object syncIDLock = new object();
        //��ȡֵ����Ա���ű����ID
        public int GetMax_ZZRYAP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZRYAP_ID == 0)
                {
                    EDU_ZXDY_04_A02_ZZRYAP zzryap = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.FirstOrDefault();
                    if (zzryap == null)
                    {
                        Max_ZZRYAP_ID = 1;
                    }
                    else
                    {
                        //Max_ZZRYAP_ID = db_zxdy.EDU_ZXDY_04_A02_ZZRYAP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZRYAP_ID++;
                }
                maxId = Max_ZZRYAP_ID;
            }
            return maxId;
        }

    }
}
