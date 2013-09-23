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
    public class JLYAQQKController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_02_03_JLYAQQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_02_03_JLYAQQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlyaqqk(EDU_JPXT_02_03_JLYAQQK jlyaqqk)
        {
            jlyaqqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlyaqqk(jlyaqqk);
        }

        public void UpdJlyaqqk(EDU_JPXT_02_03_JLYAQQK jlyaqqk)
        {
            //����Ĭ��ֵ
            if (jlyaqqk.ID == 0) jlyaqqk.ID = 0;//���
            if (jlyaqqk.SCHOOLID == 0) jlyaqqk.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jlyaqqk.JLYID == 0) jlyaqqk.JLYID = 0;//����ԱID   ����Ա���ݱ�
            if (jlyaqqk.LRSJ == 0) jlyaqqk.LRSJ = 0;//¼��ʱ��
            if (string.IsNullOrEmpty(jlyaqqk.AQQK)) jlyaqqk.AQQK = "";//��ȫ���
            if (string.IsNullOrEmpty(jlyaqqk.BZ)) jlyaqqk.BZ = "";//��ע
            EDU_JPXT_02_03_JLYAQQK jlyaqqk_model = db_jpxt.EDU_JPXT_02_03_JLYAQQK.FirstOrDefault(e => e.ID == jlyaqqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlyaqqk_model != null)
            {
                jlyaqqk_model.ID = jlyaqqk.ID;//���
                jlyaqqk_model.SCHOOLID = jlyaqqk.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlyaqqk_model.JLYID = jlyaqqk.JLYID;//����ԱID   ����Ա���ݱ�
                jlyaqqk_model.LRSJ = jlyaqqk.LRSJ;//¼��ʱ��
                jlyaqqk_model.AQQK = jlyaqqk.AQQK;//��ȫ���
                jlyaqqk_model.BZ = jlyaqqk.BZ;//��ע
                db_jpxt.Entry(jlyaqqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_02_03_JLYAQQK.Add(jlyaqqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_02_03_JLYAQQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_02_03_JLYAQQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_02_03_JLYAQQK jlyaqqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlyaqqk(jlyaqqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlyaqqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlyaqqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_02_03_JLYAQQK jlyaqqk= db_jpxt.EDU_JPXT_02_03_JLYAQQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlyaqqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_02_03_JLYAQQK jlyaqqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlyaqqk(jlyaqqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlyaqqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlyaqqk);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_JPXT_02_03_JLYAQQK jlyaqqk = db_jpxt.EDU_JPXT_02_03_JLYAQQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_02_03_JLYAQQK.Remove(jlyaqqk);
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
                    EDU_JPXT_02_03_JLYAQQK jlyaqqk = db_jpxt.EDU_JPXT_02_03_JLYAQQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_02_03_JLYAQQK.Remove(jlyaqqk);
                    db_jpxt.SaveChanges();
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

        private static int Max_JLYAQQK_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ����Ա��ȫ��������ID
        public int GetMax_JLYAQQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLYAQQK_ID == 0)
                {
                    EDU_JPXT_02_03_JLYAQQK jlyaqqk = db_jpxt.EDU_JPXT_02_03_JLYAQQK.FirstOrDefault();
                    if (jlyaqqk == null)
                    {
                        Max_JLYAQQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLYAQQK_ID = db_jpxt.EDU_JPXT_02_03_JLYAQQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLYAQQK_ID++;
                }
                maxId = Max_JLYAQQK_ID;
            }
            return maxId;
        }

    }
}
