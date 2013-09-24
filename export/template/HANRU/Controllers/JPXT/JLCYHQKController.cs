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
    public class JLCYHQKController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_05_JLCYHQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_05_JLCYHQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcyhqk(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            jlcyhqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcyhqk(jlcyhqk);
        }

        public void UpdJlcyhqk(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            //����Ĭ��ֵ
            if (jlcyhqk.ID == 0) jlcyhqk.ID = 0;//���
            if (jlcyhqk.SCHOOLID == 0) jlcyhqk.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jlcyhqk.JLCID == 0) jlcyhqk.JLCID = 0;//������ID   ���������ݱ�
            if (jlcyhqk.JLYID == 0) jlcyhqk.JLYID = 0;//����ԱID   ����Ա���ݱ�
            if (jlcyhqk.YLCZ == 0) jlcyhqk.YLCZ = 0;//������ֵ
            if (string.IsNullOrEmpty(jlcyhqk.BZ)) jlcyhqk.BZ = "";//��ע
            EDU_JPXT_01_05_JLCYHQK jlcyhqk_model = db_jpxt.EDU_JPXT_01_05_JLCYHQK.FirstOrDefault(e => e.ID == jlcyhqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcyhqk_model != null)
            {
                jlcyhqk_model.ID = jlcyhqk.ID;//���
                jlcyhqk_model.SCHOOLID = jlcyhqk.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlcyhqk_model.JLCID = jlcyhqk.JLCID;//������ID   ���������ݱ�
                jlcyhqk_model.JLYID = jlcyhqk.JLYID;//����ԱID   ����Ա���ݱ�
                jlcyhqk_model.LRSJ = jlcyhqk.LRSJ;//¼��ʱ��
                jlcyhqk_model.YLCZ = jlcyhqk.YLCZ;//������ֵ
                jlcyhqk_model.BZ = jlcyhqk.BZ;//��ע
                db_jpxt.Entry(jlcyhqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_01_05_JLCYHQK.Add(jlcyhqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_05_JLCYHQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_05_JLCYHQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcyhqk(jlcyhqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcyhqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcyhqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_05_JLCYHQK jlcyhqk= db_jpxt.EDU_JPXT_01_05_JLCYHQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcyhqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_05_JLCYHQK jlcyhqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcyhqk(jlcyhqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcyhqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcyhqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_05_JLCYHQK jlcyhqk = db_jpxt.EDU_JPXT_01_05_JLCYHQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_05_JLCYHQK.Remove(jlcyhqk);
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
                    EDU_JPXT_01_05_JLCYHQK jlcyhqk = db_jpxt.EDU_JPXT_01_05_JLCYHQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_05_JLCYHQK.Remove(jlcyhqk);
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

        private static int Max_JLCYHQK_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�������ͺ���������ID
        public int GetMax_JLCYHQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCYHQK_ID == 0)
                {
                    EDU_JPXT_01_05_JLCYHQK jlcyhqk = db_jpxt.EDU_JPXT_01_05_JLCYHQK.FirstOrDefault();
                    if (jlcyhqk == null)
                    {
                        Max_JLCYHQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLCYHQK_ID = db_jpxt.EDU_JPXT_01_05_JLCYHQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCYHQK_ID++;
                }
                maxId = Max_JLCYHQK_ID;
            }
            return maxId;
        }

    }
}
