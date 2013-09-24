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
    public class JLCCLXHController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_06_JLCCLXH_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_06_JLCCLXH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcclxh(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            jlcclxh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcclxh(jlcclxh);
        }

        public void UpdJlcclxh(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            //����Ĭ��ֵ
            if (jlcclxh.ID == 0) jlcclxh.ID = 0;//���
            if (jlcclxh.SCHOOLID == 0) jlcclxh.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jlcclxh.JLCID == 0) jlcclxh.JLCID = 0;//������ID   ���������ݱ�
            if (jlcclxh.JLYID == 0) jlcclxh.JLYID = 0;//����ԱID   ����Ա���ݱ�
            if (jlcclxh.XHQK == 0) jlcclxh.XHQK = 0;//�������
            if (string.IsNullOrEmpty(jlcclxh.BZ)) jlcclxh.BZ = "";//��ע
            EDU_JPXT_01_06_JLCCLXH jlcclxh_model = db_jpxt.EDU_JPXT_01_06_JLCCLXH.FirstOrDefault(e => e.ID == jlcclxh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcclxh_model != null)
            {
                jlcclxh_model.ID = jlcclxh.ID;//���
                jlcclxh_model.SCHOOLID = jlcclxh.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlcclxh_model.JLCID = jlcclxh.JLCID;//������ID   ���������ݱ�
                jlcclxh_model.JLYID = jlcclxh.JLYID;//����ԱID   ����Ա���ݱ�
                jlcclxh_model.LRSJ = jlcclxh.LRSJ;//¼��ʱ��
                jlcclxh_model.XHQK = jlcclxh.XHQK;//�������
                jlcclxh_model.BZ = jlcclxh.BZ;//��ע
                db_jpxt.Entry(jlcclxh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_01_06_JLCCLXH.Add(jlcclxh);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_06_JLCCLXH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_06_JLCCLXH());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcclxh(jlcclxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcclxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcclxh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_06_JLCCLXH jlcclxh= db_jpxt.EDU_JPXT_01_06_JLCCLXH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcclxh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_06_JLCCLXH jlcclxh)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcclxh(jlcclxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcclxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcclxh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_01_06_JLCCLXH jlcclxh = db_jpxt.EDU_JPXT_01_06_JLCCLXH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_06_JLCCLXH.Remove(jlcclxh);
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
                    EDU_JPXT_01_06_JLCCLXH jlcclxh = db_jpxt.EDU_JPXT_01_06_JLCCLXH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_06_JLCCLXH.Remove(jlcclxh);
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

        private static int Max_JLCCLXH_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�������������ı����ID
        public int GetMax_JLCCLXH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCCLXH_ID == 0)
                {
                    EDU_JPXT_01_06_JLCCLXH jlcclxh = db_jpxt.EDU_JPXT_01_06_JLCCLXH.FirstOrDefault();
                    if (jlcclxh == null)
                    {
                        Max_JLCCLXH_ID = 1;
                    }
                    else
                    {
                        //Max_JLCCLXH_ID = db_jpxt.EDU_JPXT_01_06_JLCCLXH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCCLXH_ID++;
                }
                maxId = Max_JLCCLXH_ID;
            }
            return maxId;
        }

    }
}
