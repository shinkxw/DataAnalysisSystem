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
    public class ZZXJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP> model = db_zxdy.VIEW_EDU_ZXDY_06_A01_ZZXJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzxj(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            zzxj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzxj(zzxj);
        }

        public void UpdZzxj(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            //����Ĭ��ֵ
            if (zzxj.ID == 0) zzxj.ID = 0;//ֵ��С���ID
            if (zzxj.SCHOOLID == 0) zzxj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (zzxj.XQID == 0) zzxj.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            if (zzxj.ZCID == 0) zzxj.ZCID = 0;//�ܴ�ID   ֵ���ܴα�
            if (string.IsNullOrEmpty(zzxj.SZDS)) zzxj.SZDS = "";//���ܴ���
            if (string.IsNullOrEmpty(zzxj.ZZJCQKFK)) zzxj.ZZJCQKFK = "";//ֵ�ܼ���������
            EDU_ZXDY_06_A01_ZZXJ zzxj_model = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.FirstOrDefault(e => e.ID == zzxj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzxj_model != null)
            {
                zzxj_model.ID = zzxj.ID;//ֵ��С���ID
                zzxj_model.SCHOOLID = zzxj.SCHOOLID;//ѧУID   ѧУ���ñ�
                zzxj_model.XQID = zzxj.XQID;//ѧ��ID   ѧ�����ݱ�
                zzxj_model.ZCID = zzxj.ZCID;//�ܴ�ID   ֵ���ܴα�
                zzxj_model.SZDS = zzxj.SZDS;//���ܴ���
                zzxj_model.ZZJCQKFK = zzxj.ZZJCQKFK;//ֵ�ܼ���������
                db_zxdy.Entry(zzxj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Add(zzxj);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_06_A01_ZZXJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_06_A01_ZZXJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzxj(zzxj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_06_A01_ZZXJ zzxj= db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzxj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_06_A01_ZZXJ zzxj)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzxj(zzxj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_06_A01_ZZXJ zzxj = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Remove(zzxj);
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
                    EDU_ZXDY_06_A01_ZZXJ zzxj = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Remove(zzxj);
                    db_zxdy.SaveChanges();
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

        private static int Max_ZZXJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡֵ��С������ID
        public int GetMax_ZZXJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZXJ_ID == 0)
                {
                    EDU_ZXDY_06_A01_ZZXJ zzxj = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.FirstOrDefault();
                    if (zzxj == null)
                    {
                        Max_ZZXJ_ID = 1;
                    }
                    else
                    {
                        //Max_ZZXJ_ID = db_zxdy.EDU_ZXDY_06_A01_ZZXJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZXJ_ID++;
                }
                maxId = Max_ZZXJ_ID;
            }
            return maxId;
        }

    }
}
