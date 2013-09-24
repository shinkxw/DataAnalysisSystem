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
    public class ZZGWFPController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzgwfp(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            zzgwfp.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzgwfp(zzgwfp);
        }

        public void UpdZzgwfp(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            //����Ĭ��ֵ
            if (zzgwfp.ID == 0) zzgwfp.ID = 0;//ֵ�ܸ�λ�����ID
            if (zzgwfp.SCHOOLID == 0) zzgwfp.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (zzgwfp.XQID == 0) zzgwfp.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            if (zzgwfp.ZCID == 0) zzgwfp.ZCID = 0;//�ܴ�ID   ֵ���ܴα�
            if (zzgwfp.GZR == 0) zzgwfp.GZR = 0;//������
            if (zzgwfp.GWID == 0) zzgwfp.GWID = 0;//��λID   ֵ�ܸ�λ���ݱ�
            if (string.IsNullOrEmpty(zzgwfp.JSID)) zzgwfp.JSID = "";//��ʦID   Ӧ��ϵͳ�û���
            EDU_ZXDY_04_A03_ZZGWFP zzgwfp_model = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.FirstOrDefault(e => e.ID == zzgwfp.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzgwfp_model != null)
            {
                zzgwfp_model.ID = zzgwfp.ID;//ֵ�ܸ�λ�����ID
                zzgwfp_model.SCHOOLID = zzgwfp.SCHOOLID;//ѧУID   ѧУ���ñ�
                zzgwfp_model.XQID = zzgwfp.XQID;//ѧ��ID   ѧ�����ݱ�
                zzgwfp_model.ZCID = zzgwfp.ZCID;//�ܴ�ID   ֵ���ܴα�
                zzgwfp_model.GZR = zzgwfp.GZR;//������
                zzgwfp_model.GWID = zzgwfp.GWID;//��λID   ֵ�ܸ�λ���ݱ�
                zzgwfp_model.JSID = zzgwfp.JSID;//��ʦID   Ӧ��ϵͳ�û���
                db_zxdy.Entry(zzgwfp_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Add(zzgwfp);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A03_ZZGWFP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A03_ZZGWFP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzgwfp(zzgwfp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzgwfp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzgwfp);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A03_ZZGWFP zzgwfp= db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzgwfp);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A03_ZZGWFP zzgwfp)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzgwfp(zzgwfp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzgwfp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzgwfp);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_04_A03_ZZGWFP zzgwfp = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Remove(zzgwfp);
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
                    EDU_ZXDY_04_A03_ZZGWFP zzgwfp = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Remove(zzgwfp);
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

        private static int Max_ZZGWFP_ID = 0;
        private static object syncIDLock = new object();
        //��ȡֵ�ܸ�λ��������ID
        public int GetMax_ZZGWFP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZGWFP_ID == 0)
                {
                    EDU_ZXDY_04_A03_ZZGWFP zzgwfp = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.FirstOrDefault();
                    if (zzgwfp == null)
                    {
                        Max_ZZGWFP_ID = 1;
                    }
                    else
                    {
                        //Max_ZZGWFP_ID = db_zxdy.EDU_ZXDY_04_A03_ZZGWFP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZGWFP_ID++;
                }
                maxId = Max_ZZGWFP_ID;
            }
            return maxId;
        }

    }
}
