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
    public class SXJDController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A10_SXJD_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A10_SXJD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxjd(EDU_ZZJX_07_A10_SXJD sxjd)
        {
            sxjd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxjd(sxjd);
        }

        public void UpdSxjd(EDU_ZZJX_07_A10_SXJD sxjd)
        {
            //����Ĭ��ֵ
            if (sxjd.ID == 0) sxjd.ID = 0;//ʵϰ������ϢID
            if (sxjd.SCHOOLID == 0) sxjd.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (sxjd.SXJHID == 0) sxjd.SXJHID = 0;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
            if (sxjd.XSXXID == 0) sxjd.XSXXID = 0;//ѧ����ϢID   ѧ����Ϣ���ݱ�
            if (string.IsNullOrEmpty(sxjd.JDNR)) sxjd.JDNR = "";//��������
            if (string.IsNullOrEmpty(sxjd.SXDWYJ)) sxjd.SXDWYJ = "";//ʵϰ��λ���
            if (string.IsNullOrEmpty(sxjd.BJYJ)) sxjd.BJYJ = "";//�༶���
            if (string.IsNullOrEmpty(sxjd.XXYJ)) sxjd.XXYJ = "";//ѧУ���
            EDU_ZZJX_07_A10_SXJD sxjd_model = db_zzjx.EDU_ZZJX_07_A10_SXJD.FirstOrDefault(e => e.ID == sxjd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxjd_model != null)
            {
                sxjd_model.ID = sxjd.ID;//ʵϰ������ϢID
                sxjd_model.SCHOOLID = sxjd.SCHOOLID;//ѧУID   ѧУ���ñ�
                sxjd_model.SXJHID = sxjd.SXJHID;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
                sxjd_model.XSXXID = sxjd.XSXXID;//ѧ����ϢID   ѧ����Ϣ���ݱ�
                sxjd_model.JDNR = sxjd.JDNR;//��������
                sxjd_model.SXDWYJ = sxjd.SXDWYJ;//ʵϰ��λ���
                sxjd_model.BJYJ = sxjd.BJYJ;//�༶���
                sxjd_model.XXYJ = sxjd.XXYJ;//ѧУ���
                db_zzjx.Entry(sxjd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A10_SXJD.Add(sxjd);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A10_SXJD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A10_SXJD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A10_SXJD sxjd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxjd(sxjd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxjd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxjd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A10_SXJD sxjd= db_zzjx.EDU_ZZJX_07_A10_SXJD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxjd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A10_SXJD sxjd)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxjd(sxjd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxjd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxjd);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A10_SXJD sxjd = db_zzjx.EDU_ZZJX_07_A10_SXJD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A10_SXJD.Remove(sxjd);
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
                    EDU_ZZJX_07_A10_SXJD sxjd = db_zzjx.EDU_ZZJX_07_A10_SXJD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A10_SXJD.Remove(sxjd);
                    db_zzjx.SaveChanges();
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

        private static int Max_SXJD_ID = 0;
        private static object syncIDLock = new object();
        //��ȡʵϰ���������ID
        public int GetMax_SXJD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXJD_ID == 0)
                {
                    EDU_ZZJX_07_A10_SXJD sxjd = db_zzjx.EDU_ZZJX_07_A10_SXJD.FirstOrDefault();
                    if (sxjd == null)
                    {
                        Max_SXJD_ID = 1;
                    }
                    else
                    {
                        //Max_SXJD_ID = db_zzjx.EDU_ZZJX_07_A10_SXJD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXJD_ID++;
                }
                maxId = Max_SXJD_ID;
            }
            return maxId;
        }

    }
}
