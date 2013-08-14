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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class CPController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZBG_03_04_CP_DISP> model = db_zzbg.VIEW_EDU_ZZBG_03_04_CP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddCp(EDU_ZZBG_03_04_CP cp)
        {
            cp.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdCp(cp);
        }

        public void UpdCp(EDU_ZZBG_03_04_CP cp)
        {
            //����Ĭ��ֵ
            if (cp.SCHOOLID == 0) cp.SCHOOLID = 0;//ѧУ��ѧУID
            if (cp.WJID == 0) cp.WJID = 0;//�ļ�ID
            if (cp.PFRID == 0) cp.PFRID = 0;//������ID
            if (string.IsNullOrEmpty(cp.PFR)) cp.PFR = "";//����������
            if (string.IsNullOrEmpty(cp.PFDW)) cp.PFDW = "";//������λ��λ����
            if (string.IsNullOrEmpty(cp.PFYJ)) cp.PFYJ = "";//�����������/�������ļ������ľ������ 
            if (string.IsNullOrEmpty(cp.PFRQ)) cp.PFRQ = "";//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            EDU_ZZBG_03_04_CP cp_model = db_zzbg.EDU_ZZBG_03_04_CP.FirstOrDefault(e => e.SCHOOLID == cp.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (cp_model != null)
            {
                cp_model.SCHOOLID = cp.SCHOOLID;//ѧУ��ѧУID
                cp_model.WJID = cp.WJID;//�ļ�ID
                cp_model.PFRID = cp.PFRID;//������ID
                cp_model.PFR = cp.PFR;//����������
                cp_model.PFDW = cp.PFDW;//������λ��λ����
                cp_model.PFYJ = cp.PFYJ;//�����������/�������ļ������ľ������ 
                cp_model.PFRQ = cp.PFRQ;//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                db_zzbg.Entry(cp_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzbg.EDU_ZZBG_03_04_CP.Add(cp);
            }
            db_zzbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZBG_03_04_CP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZBG_03_04_CP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZBG_03_04_CP cp)
        {
            InitViewBag();
            try
            {
                //
                //
                AddCp(cp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cp);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZBG_03_04_CP cp= db_zzbg.EDU_ZZBG_03_04_CP.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(cp);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZBG_03_04_CP cp)
        {
            InitViewBag();
            try
            {
                
                
                UpdCp(cp);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cp);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cp);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZBG_03_04_CP cp = db_zzbg.EDU_ZZBG_03_04_CP.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzbg.EDU_ZZBG_03_04_CP.Remove(cp);
                db_zzbg.SaveChanges();
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
                    EDU_ZZBG_03_04_CP cp = db_zzbg.EDU_ZZBG_03_04_CP.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzbg.EDU_ZZBG_03_04_CP.Remove(cp);
                    db_zzbg.SaveChanges();
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

        private static int Max_CP_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ������������ID
        public int GetMax_CP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_CP_ID == 0)
                {
                    EDU_ZZBG_03_04_CP cp = db_zzbg.EDU_ZZBG_03_04_CP.FirstOrDefault();
                    if (cp == null)
                    {
                        Max_CP_ID = 1;
                    }
                    else
                    {
                        //Max_CP_ID = db_zzbg.EDU_ZZBG_03_04_CP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_CP_ID++;
                }
                maxId = Max_CP_ID;
            }
            return maxId;
        }

    }
}
