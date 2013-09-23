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
    public class HGController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_03_02_HG_DISP> model = db_oaxt.VIEW_EDU_OAXT_03_02_HG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddHg(EDU_OAXT_03_02_HG hg)
        {
            hg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdHg(hg);
        }

        public void UpdHg(EDU_OAXT_03_02_HG hg)
        {
            //����Ĭ��ֵ
            if (hg.SCHOOLID == 0) hg.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (hg.WJID == 0) hg.WJID = 0;//�ļ�ID   �ļ������������
            if (string.IsNullOrEmpty(hg.HGRID)) hg.HGRID = "";//�˸���ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(hg.HGRGH)) hg.HGRGH = "";//�˸��˹���
            if (string.IsNullOrEmpty(hg.HGDW)) hg.HGDW = "";//�˸嵥λ
            if (string.IsNullOrEmpty(hg.HGYJ)) hg.HGYJ = "";//�˸����
            if (string.IsNullOrEmpty(hg.HGRQ)) hg.HGRQ = "";//�˸�����
            EDU_OAXT_03_02_HG hg_model = db_oaxt.EDU_OAXT_03_02_HG.FirstOrDefault(e => e.SCHOOLID == hg.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (hg_model != null)
            {
                hg_model.SCHOOLID = hg.SCHOOLID;//ѧУ��   ѧУ���ñ�
                hg_model.WJID = hg.WJID;//�ļ�ID   �ļ������������
                hg_model.HGRID = hg.HGRID;//�˸���ID   Ӧ��ϵͳ�û���
                hg_model.HGRGH = hg.HGRGH;//�˸��˹���
                hg_model.HGDW = hg.HGDW;//�˸嵥λ
                hg_model.HGYJ = hg.HGYJ;//�˸����
                hg_model.HGRQ = hg.HGRQ;//�˸�����
                db_oaxt.Entry(hg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_oaxt.EDU_OAXT_03_02_HG.Add(hg);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_03_02_HG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_03_02_HG());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_03_02_HG hg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddHg(hg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(hg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(hg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_03_02_HG hg= db_oaxt.EDU_OAXT_03_02_HG.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(hg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_03_02_HG hg)
        {
            InitViewBag();
            try
            {
                
                
                UpdHg(hg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(hg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(hg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_03_02_HG hg = db_oaxt.EDU_OAXT_03_02_HG.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_03_02_HG.Remove(hg);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_03_02_HG hg = db_oaxt.EDU_OAXT_03_02_HG.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_03_02_HG.Remove(hg);
                    db_oaxt.SaveChanges();
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

        private static int Max_HG_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�˸���������ID
        public int GetMax_HG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_HG_ID == 0)
                {
                    EDU_OAXT_03_02_HG hg = db_oaxt.EDU_OAXT_03_02_HG.FirstOrDefault();
                    if (hg == null)
                    {
                        Max_HG_ID = 1;
                    }
                    else
                    {
                        //Max_HG_ID = db_oaxt.EDU_OAXT_03_02_HG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_HG_ID++;
                }
                maxId = Max_HG_ID;
            }
            return maxId;
        }

    }
}
