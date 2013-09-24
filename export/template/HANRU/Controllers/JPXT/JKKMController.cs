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
    public class JKKMController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_04_02_JKKM_DISP> model = db_jpxt.VIEW_EDU_JPXT_04_02_JKKM_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJkkm(EDU_JPXT_04_02_JKKM jkkm)
        {
            jkkm.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJkkm(jkkm);
        }

        public void UpdJkkm(EDU_JPXT_04_02_JKKM jkkm)
        {
            //����Ĭ��ֵ
            if (jkkm.ID == 0) jkkm.ID = 0;//���
            if (jkkm.SCHOOLID == 0) jkkm.SCHOOLID = 0;//ѧУID
            if (string.IsNullOrEmpty(jkkm.CLXHMC)) jkkm.CLXHMC = "";//��Ŀ����
            if (jkkm.CLXHID == 0) jkkm.CLXHID = 0;//�����ͺ�ID
            if (string.IsNullOrEmpty(jkkm.BZ)) jkkm.BZ = "";//��ע
            EDU_JPXT_04_02_JKKM jkkm_model = db_jpxt.EDU_JPXT_04_02_JKKM.FirstOrDefault(e => e.ID == jkkm.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jkkm_model != null)
            {
                jkkm_model.ID = jkkm.ID;//���
                jkkm_model.SCHOOLID = jkkm.SCHOOLID;//ѧУID
                jkkm_model.CLXHMC = jkkm.CLXHMC;//��Ŀ����
                jkkm_model.CLXHID = jkkm.CLXHID;//�����ͺ�ID
                jkkm_model.BZ = jkkm.BZ;//��ע
                db_jpxt.Entry(jkkm_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_04_02_JKKM.Add(jkkm);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_04_02_JKKM());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_04_02_JKKM());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_04_02_JKKM jkkm)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJkkm(jkkm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jkkm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jkkm);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_04_02_JKKM jkkm= db_jpxt.EDU_JPXT_04_02_JKKM.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jkkm);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_04_02_JKKM jkkm)
        {
            InitViewBag();
            try
            {
                
                
                UpdJkkm(jkkm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jkkm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jkkm);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_04_02_JKKM jkkm = db_jpxt.EDU_JPXT_04_02_JKKM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_04_02_JKKM.Remove(jkkm);
                db_jpxt.SaveChanges();
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
                    EDU_JPXT_04_02_JKKM jkkm = db_jpxt.EDU_JPXT_04_02_JKKM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_04_02_JKKM.Remove(jkkm);
                    db_jpxt.SaveChanges();
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

        private static int Max_JKKM_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ݿ���Ŀ�����ID
        public int GetMax_JKKM_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JKKM_ID == 0)
                {
                    EDU_JPXT_04_02_JKKM jkkm = db_jpxt.EDU_JPXT_04_02_JKKM.FirstOrDefault();
                    if (jkkm == null)
                    {
                        Max_JKKM_ID = 1;
                    }
                    else
                    {
                        //Max_JKKM_ID = db_jpxt.EDU_JPXT_04_02_JKKM.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JKKM_ID++;
                }
                maxId = Max_JKKM_ID;
            }
            return maxId;
        }

    }
}
