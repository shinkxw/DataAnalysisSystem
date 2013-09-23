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
    public class KSKMCJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP> model = db_zzzs.VIEW_EDU_ZZZS_03_01_KSKMCJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddKskmcj(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            kskmcj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKskmcj(kskmcj);
        }

        public void UpdKskmcj(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            //����Ĭ��ֵ
            if (kskmcj.XSXXID == 0) kskmcj.XSXXID = 0;//����ID   ѧ����Ϣ���ݱ�
            if (kskmcj.SCHOOLID == 0) kskmcj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(kskmcj.KMM)) kskmcj.KMM = "";//��Ŀ��   �п���Ŀ����
            if (kskmcj.ZKFS == 0) kskmcj.ZKFS = 0;//�п�����
            EDU_ZZZS_03_01_KSKMCJ kskmcj_model = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.FirstOrDefault(e => e.XSXXID == kskmcj.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kskmcj_model != null)
            {
                kskmcj_model.XSXXID = kskmcj.XSXXID;//����ID   ѧ����Ϣ���ݱ�
                kskmcj_model.SCHOOLID = kskmcj.SCHOOLID;//ѧУID   ѧУ���ñ�
                kskmcj_model.KMM = kskmcj.KMM;//��Ŀ��   �п���Ŀ����
                kskmcj_model.ZKFS = kskmcj.ZKFS;//�п�����
                db_zzzs.Entry(kskmcj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Add(kskmcj);
            }
            db_zzzs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZZ_ZKKMLst = ZZBLDAL.GetZZ_ZKKMSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZZS_03_01_KSKMCJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZZS_03_01_KSKMCJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKskmcj(kskmcj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kskmcj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kskmcj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZZS_03_01_KSKMCJ kskmcj= db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kskmcj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZZS_03_01_KSKMCJ kskmcj)
        {
            InitViewBag();
            try
            {
                
                
                UpdKskmcj(kskmcj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kskmcj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kskmcj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZZS_03_01_KSKMCJ kskmcj = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Remove(kskmcj);
                db_zzzs.SaveChanges();
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
                    EDU_ZZZS_03_01_KSKMCJ kskmcj = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Remove(kskmcj);
                    db_zzzs.SaveChanges();
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

        private static int Max_KSKMCJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ������Ŀ�ɼ�����������ID
        public int GetMax_KSKMCJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KSKMCJ_ID == 0)
                {
                    EDU_ZZZS_03_01_KSKMCJ kskmcj = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.FirstOrDefault();
                    if (kskmcj == null)
                    {
                        Max_KSKMCJ_ID = 1;
                    }
                    else
                    {
                        //Max_KSKMCJ_ID = db_zzzs.EDU_ZZZS_03_01_KSKMCJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KSKMCJ_ID++;
                }
                maxId = Max_KSKMCJ_ID;
            }
            return maxId;
        }

    }
}
