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
    public class JLCSJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_01_01_JLCSJ_DISP> model = db_jpxt.VIEW_EDU_JPXT_01_01_JLCSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlcsj(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            jlcsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlcsj(jlcsj);
        }

        public void UpdJlcsj(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            //����Ĭ��ֵ
            if (jlcsj.ID == 0) jlcsj.ID = 0;//���
            if (jlcsj.SCHOOLID == 0) jlcsj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jlcsj.GMSJ == 0) jlcsj.GMSJ = 0;//����ʱ��
            if (jlcsj.CLXHID == 0) jlcsj.CLXHID = 0;//�����ͺ�ID   �����ͺ����ݱ�
            if (string.IsNullOrEmpty(jlcsj.PP)) jlcsj.PP = "";//Ʒ��
            if (string.IsNullOrEmpty(jlcsj.CPH)) jlcsj.CPH = "";//���ƺ�
            if (string.IsNullOrEmpty(jlcsj.FDJH)) jlcsj.FDJH = "";//��������
            if (string.IsNullOrEmpty(jlcsj.CJH)) jlcsj.CJH = "";//���ܺ�
            if (jlcsj.BFSJ == 0) jlcsj.BFSJ = 0;//����ʱ��
            if (jlcsj.EBRQ == 0) jlcsj.EBRQ = 0;//��������
            if (jlcsj.DQZT == 0) jlcsj.DQZT = 0;//��ǰ״̬
            if (jlcsj.DQJLYID == 0) jlcsj.DQJLYID = 0;//��ǰ����ԱID   ����Ա���ݱ�
            if (string.IsNullOrEmpty(jlcsj.BZ)) jlcsj.BZ = "";//��ע
            EDU_JPXT_01_01_JLCSJ jlcsj_model = db_jpxt.EDU_JPXT_01_01_JLCSJ.FirstOrDefault(e => e.ID == jlcsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlcsj_model != null)
            {
                jlcsj_model.ID = jlcsj.ID;//���
                jlcsj_model.SCHOOLID = jlcsj.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlcsj_model.GMSJ = jlcsj.GMSJ;//����ʱ��
                jlcsj_model.CLXHID = jlcsj.CLXHID;//�����ͺ�ID   �����ͺ����ݱ�
                jlcsj_model.PP = jlcsj.PP;//Ʒ��
                jlcsj_model.CPH = jlcsj.CPH;//���ƺ�
                jlcsj_model.FDJH = jlcsj.FDJH;//��������
                jlcsj_model.CJH = jlcsj.CJH;//���ܺ�
                jlcsj_model.BFSJ = jlcsj.BFSJ;//����ʱ��
                jlcsj_model.EBRQ = jlcsj.EBRQ;//��������
                jlcsj_model.DQZT = jlcsj.DQZT;//��ǰ״̬
                jlcsj_model.DQJLYID = jlcsj.DQJLYID;//��ǰ����ԱID   ����Ա���ݱ�
                jlcsj_model.BZ = jlcsj.BZ;//��ע
                db_jpxt.Entry(jlcsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_01_01_JLCSJ.Add(jlcsj);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_01_01_JLCSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_01_01_JLCSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlcsj(jlcsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_01_01_JLCSJ jlcsj= db_jpxt.EDU_JPXT_01_01_JLCSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlcsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_01_01_JLCSJ jlcsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlcsj(jlcsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlcsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlcsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_JPXT_01_01_JLCSJ jlcsj = db_jpxt.EDU_JPXT_01_01_JLCSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_01_01_JLCSJ.Remove(jlcsj);
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
                    EDU_JPXT_01_01_JLCSJ jlcsj = db_jpxt.EDU_JPXT_01_01_JLCSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_01_01_JLCSJ.Remove(jlcsj);
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

        private static int Max_JLCSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ���������ݱ����ID
        public int GetMax_JLCSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLCSJ_ID == 0)
                {
                    EDU_JPXT_01_01_JLCSJ jlcsj = db_jpxt.EDU_JPXT_01_01_JLCSJ.FirstOrDefault();
                    if (jlcsj == null)
                    {
                        Max_JLCSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JLCSJ_ID = db_jpxt.EDU_JPXT_01_01_JLCSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLCSJ_ID++;
                }
                maxId = Max_JLCSJ_ID;
            }
            return maxId;
        }

    }
}
