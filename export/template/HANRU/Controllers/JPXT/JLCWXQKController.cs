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
    public class JLCWXQKController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_03_JLCWXQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_03_JLCWXQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcwxqk(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            jlcwxqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcwxqk(jlcwxqk);
        }

        public void UpdJlcwxqk(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            //����Ĭ��ֵ
            if (jlcwxqk.ID == 0) jlcwxqk.ID = 0;//���
            if (jlcwxqk.SCHOOLID == 0) jlcwxqk.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jlcwxqk.JLCID == 0) jlcwxqk.JLCID = 0;//������ID   ���������ݱ�
            if (string.IsNullOrEmpty(jlcwxqk.GZXX)) jlcwxqk.GZXX = "";//��������
            if (jlcwxqk.SXSJ == 0) jlcwxqk.SXSJ = 0;//����ʱ��
            if (jlcwxqk.WCSJ == 0) jlcwxqk.WCSJ = 0;//���ʱ��
            if (string.IsNullOrEmpty(jlcwxqk.WXJG)) jlcwxqk.WXJG = "";//ά�޽��
            if (string.IsNullOrEmpty(jlcwxqk.BZ)) jlcwxqk.BZ = "";//��ע
            EDU_JPXT_01_03_JLCWXQK jlcwxqk_model = db_jpxt.EDU_JPXT_01_03_JLCWXQK.FirstOrDefault(e => e.ID == jlcwxqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcwxqk_model != null)
            {
                jlcwxqk_model.ID = jlcwxqk.ID;//���
                jlcwxqk_model.SCHOOLID = jlcwxqk.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlcwxqk_model.JLCID = jlcwxqk.JLCID;//������ID   ���������ݱ�
                jlcwxqk_model.GZXX = jlcwxqk.GZXX;//��������
                jlcwxqk_model.SXSJ = jlcwxqk.SXSJ;//����ʱ��
                jlcwxqk_model.WCSJ = jlcwxqk.WCSJ;//���ʱ��
                jlcwxqk_model.WXJG = jlcwxqk.WXJG;//ά�޽��
                jlcwxqk_model.BZ = jlcwxqk.BZ;//��ע
                db_jpxt.Entry(jlcwxqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_01_03_JLCWXQK.Add(jlcwxqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_03_JLCWXQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_03_JLCWXQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcwxqk(jlcwxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcwxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcwxqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_03_JLCWXQK jlcwxqk= db_jpxt.EDU_JPXT_01_03_JLCWXQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcwxqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_03_JLCWXQK jlcwxqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcwxqk(jlcwxqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcwxqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcwxqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_03_JLCWXQK jlcwxqk = db_jpxt.EDU_JPXT_01_03_JLCWXQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_03_JLCWXQK.Remove(jlcwxqk);
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
                    EDU_JPXT_01_03_JLCWXQK jlcwxqk = db_jpxt.EDU_JPXT_01_03_JLCWXQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_03_JLCWXQK.Remove(jlcwxqk);
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

        private static int Max_JLCWXQK_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ������ά����������ID
        public int GetMax_JLCWXQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCWXQK_ID == 0)
                {
                    EDU_JPXT_01_03_JLCWXQK jlcwxqk = db_jpxt.EDU_JPXT_01_03_JLCWXQK.FirstOrDefault();
                    if (jlcwxqk == null)
                    {
                        Max_JLCWXQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLCWXQK_ID = db_jpxt.EDU_JPXT_01_03_JLCWXQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCWXQK_ID++;
                }
                maxId = Max_JLCWXQK_ID;
            }
            return maxId;
        }

    }
}
