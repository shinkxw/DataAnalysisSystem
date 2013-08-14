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
    public class TZController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_10_A01_TZ_DISP> model = db_zxbg.VIEW_EDU_ZXBG_10_A01_TZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTz(EDU_ZXBG_10_A01_TZ tz)
        {
            tz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTz(tz);
        }

        public void UpdTz(EDU_ZXBG_10_A01_TZ tz)
        {
            //����Ĭ��ֵ
            if (tz.ID == 0) tz.ID = 0;//֪ͨID
            if (tz.SCHOOLID == 0) tz.SCHOOLID = 0;//ѧУID
            if (string.IsNullOrEmpty(tz.FSRID)) tz.FSRID = "";//������ID
            if (tz.FSRLB == 0) tz.FSRLB = 0;//���������
            if (string.IsNullOrEmpty(tz.BT)) tz.BT = "";//����
            if (string.IsNullOrEmpty(tz.NR)) tz.NR = "";//����
            if (string.IsNullOrEmpty(tz.FJ)) tz.FJ = "";//����
            if (tz.TJRQ == 0) tz.TJRQ = 0;//�������
            if (tz.JSRS == 0) tz.JSRS = 0;//��������
            if (string.IsNullOrEmpty(tz.JSRIDLB)) tz.JSRIDLB = "";//������ID�б�
            if (string.IsNullOrEmpty(tz.JSRMZLB)) tz.JSRMZLB = "";//�����������б�
            if (string.IsNullOrEmpty(tz.YYDRIDLB)) tz.YYDRIDLB = "";//���Ķ���ID�б�
            if (string.IsNullOrEmpty(tz.YYDRMZLB)) tz.YYDRMZLB = "";//���Ķ��������б�
            if (tz.FSZT == 0) tz.FSZT = 0;//����״̬
            EDU_ZXBG_10_A01_TZ tz_model = db_zxbg.EDU_ZXBG_10_A01_TZ.FirstOrDefault(e => e.ID == tz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tz_model != null)
            {
                tz_model.ID = tz.ID;//֪ͨID
                tz_model.SCHOOLID = tz.SCHOOLID;//ѧУID
                tz_model.FSRID = tz.FSRID;//������ID
                tz_model.FSRLB = tz.FSRLB;//���������
                tz_model.BT = tz.BT;//����
                tz_model.NR = tz.NR;//����
                tz_model.FJ = tz.FJ;//����
                tz_model.TJRQ = tz.TJRQ;//�������
                tz_model.JSRS = tz.JSRS;//��������
                tz_model.JSRIDLB = tz.JSRIDLB;//������ID�б�
                tz_model.JSRMZLB = tz.JSRMZLB;//�����������б�
                tz_model.YYDRIDLB = tz.YYDRIDLB;//���Ķ���ID�б�
                tz_model.YYDRMZLB = tz.YYDRMZLB;//���Ķ��������б�
                tz_model.FSZT = tz.FSZT;//����״̬
                db_zxbg.Entry(tz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxbg.EDU_ZXBG_10_A01_TZ.Add(tz);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_10_A01_TZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_10_A01_TZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_10_A01_TZ tz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTz(tz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_10_A01_TZ tz= db_zxbg.EDU_ZXBG_10_A01_TZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_10_A01_TZ tz)
        {
            InitViewBag();
            try
            {
                
                
                UpdTz(tz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_10_A01_TZ tz = db_zxbg.EDU_ZXBG_10_A01_TZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_10_A01_TZ.Remove(tz);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_10_A01_TZ tz = db_zxbg.EDU_ZXBG_10_A01_TZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_10_A01_TZ.Remove(tz);
                    db_zxbg.SaveChanges();
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

        private static int Max_TZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ֪ͨ���ݱ����ID
        public int GetMax_TZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TZ_ID == 0)
                {
                    EDU_ZXBG_10_A01_TZ tz = db_zxbg.EDU_ZXBG_10_A01_TZ.FirstOrDefault();
                    if (tz == null)
                    {
                        Max_TZ_ID = 1;
                    }
                    else
                    {
                        //Max_TZ_ID = db_zxbg.EDU_ZXBG_10_A01_TZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TZ_ID++;
                }
                maxId = Max_TZ_ID;
            }
            return maxId;
        }

    }
}
