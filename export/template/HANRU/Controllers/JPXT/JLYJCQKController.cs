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
    public class JLYJCQKController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_02_04_JLYJCQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_02_04_JLYJCQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlyjcqk(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            jlyjcqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlyjcqk(jlyjcqk);
        }

        public void UpdJlyjcqk(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            //����Ĭ��ֵ
            if (jlyjcqk.ID == 0) jlyjcqk.ID = 0;//���
            if (jlyjcqk.SCHOOLID == 0) jlyjcqk.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jlyjcqk.JLYID == 0) jlyjcqk.JLYID = 0;//����ԱID   ����Ա���ݱ�
            if (string.IsNullOrEmpty(jlyjcqk.JCQK)) jlyjcqk.JCQK = "";//�������
            if (string.IsNullOrEmpty(jlyjcqk.BZ)) jlyjcqk.BZ = "";//��ע
            EDU_JPXT_02_04_JLYJCQK jlyjcqk_model = db_jpxt.EDU_JPXT_02_04_JLYJCQK.FirstOrDefault(e => e.ID == jlyjcqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlyjcqk_model != null)
            {
                jlyjcqk_model.ID = jlyjcqk.ID;//���
                jlyjcqk_model.SCHOOLID = jlyjcqk.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlyjcqk_model.JLYID = jlyjcqk.JLYID;//����ԱID   ����Ա���ݱ�
                jlyjcqk_model.LRSJ = jlyjcqk.LRSJ;//¼��ʱ��
                jlyjcqk_model.JCQK = jlyjcqk.JCQK;//�������
                jlyjcqk_model.BZ = jlyjcqk.BZ;//��ע
                db_jpxt.Entry(jlyjcqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_02_04_JLYJCQK.Add(jlyjcqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_02_04_JLYJCQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_02_04_JLYJCQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlyjcqk(jlyjcqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlyjcqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlyjcqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_02_04_JLYJCQK jlyjcqk= db_jpxt.EDU_JPXT_02_04_JLYJCQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlyjcqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_02_04_JLYJCQK jlyjcqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlyjcqk(jlyjcqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlyjcqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlyjcqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_02_04_JLYJCQK jlyjcqk = db_jpxt.EDU_JPXT_02_04_JLYJCQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_02_04_JLYJCQK.Remove(jlyjcqk);
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
                    EDU_JPXT_02_04_JLYJCQK jlyjcqk = db_jpxt.EDU_JPXT_02_04_JLYJCQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_02_04_JLYJCQK.Remove(jlyjcqk);
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

        private static int Max_JLYJCQK_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ����Ա������������ID
        public int GetMax_JLYJCQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLYJCQK_ID == 0)
                {
                    EDU_JPXT_02_04_JLYJCQK jlyjcqk = db_jpxt.EDU_JPXT_02_04_JLYJCQK.FirstOrDefault();
                    if (jlyjcqk == null)
                    {
                        Max_JLYJCQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLYJCQK_ID = db_jpxt.EDU_JPXT_02_04_JLYJCQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLYJCQK_ID++;
                }
                maxId = Max_JLYJCQK_ID;
            }
            return maxId;
        }

    }
}
