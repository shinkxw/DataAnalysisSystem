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
    public class JLYSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_02_01_JLYSJ_DISP> model = db_jpxt.VIEW_EDU_JPXT_02_01_JLYSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlysj(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            jlysj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlysj(jlysj);
        }

        public void UpdJlysj(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            //����Ĭ��ֵ
            if (jlysj.ID == 0) jlysj.ID = 0;//���
            if (jlysj.SCHOOLID == 0) jlysj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(jlysj.XM)) jlysj.XM = "";//����
            if (string.IsNullOrEmpty(jlysj.XBM)) jlysj.XBM = "";//�Ա���   �˵��Ա����
            if (string.IsNullOrEmpty(jlysj.SFZH)) jlysj.SFZH = "";//���֤��
            if (string.IsNullOrEmpty(jlysj.JSZH)) jlysj.JSZH = "";//��ʻ֤��
            if (string.IsNullOrEmpty(jlysj.JLZH)) jlysj.JLZH = "";//����֤��
            if (string.IsNullOrEmpty(jlysj.XL)) jlysj.XL = "";//ѧ��
            if (string.IsNullOrEmpty(jlysj.ZC)) jlysj.ZC = "";//ְ��
            if (string.IsNullOrEmpty(jlysj.LXDH)) jlysj.LXDH = "";//��ϵ�绰
            if (string.IsNullOrEmpty(jlysj.ZZ)) jlysj.ZZ = "";//סַ
            if (string.IsNullOrEmpty(jlysj.JSDJ)) jlysj.JSDJ = "";//�����ȼ�
            if (string.IsNullOrEmpty(jlysj.JTCHYXM)) jlysj.JTCHYXM = "";//��ͥ��Աһ����
            if (string.IsNullOrEmpty(jlysj.JTCYYGX)) jlysj.JTCYYGX = "";//��ͥ��Աһ��ϵ
            if (string.IsNullOrEmpty(jlysj.JTCYYXBM)) jlysj.JTCYYXBM = "";//��ͥ��Աһ�Ա���
            if (string.IsNullOrEmpty(jlysj.JTCYYZZ)) jlysj.JTCYYZZ = "";//��ͥ��Աһסַ
            if (string.IsNullOrEmpty(jlysj.JTCYYLXDH)) jlysj.JTCYYLXDH = "";//��ͥ��Աһ��ϵ�绰
            if (string.IsNullOrEmpty(jlysj.JTCYYCSGZ)) jlysj.JTCYYCSGZ = "";//��ͥ��Աһ���¹���
            if (string.IsNullOrEmpty(jlysj.JTCYEXM)) jlysj.JTCYEXM = "";//��ͥ��Ա������
            if (string.IsNullOrEmpty(jlysj.JTCYEGX)) jlysj.JTCYEGX = "";//��ͥ��Ա����ϵ
            if (string.IsNullOrEmpty(jlysj.JTCYEXBM)) jlysj.JTCYEXBM = "";//��ͥ��Ա���Ա���
            if (string.IsNullOrEmpty(jlysj.JTCYEZZ)) jlysj.JTCYEZZ = "";//��ͥ��Ա��סַ
            if (string.IsNullOrEmpty(jlysj.JTCYELXDH)) jlysj.JTCYELXDH = "";//��ͥ��Ա����ϵ�绰
            if (string.IsNullOrEmpty(jlysj.JTCYECSGZ)) jlysj.JTCYECSGZ = "";//��ͥ��Ա�����¹���
            EDU_JPXT_02_01_JLYSJ jlysj_model = db_jpxt.EDU_JPXT_02_01_JLYSJ.FirstOrDefault(e => e.ID == jlysj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlysj_model != null)
            {
                jlysj_model.ID = jlysj.ID;//���
                jlysj_model.SCHOOLID = jlysj.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlysj_model.XM = jlysj.XM;//����
                jlysj_model.XBM = jlysj.XBM;//�Ա���   �˵��Ա����
                jlysj_model.SFZH = jlysj.SFZH;//���֤��
                jlysj_model.JSZH = jlysj.JSZH;//��ʻ֤��
                jlysj_model.JSZYXQ = jlysj.JSZYXQ;//��ʻ֤��Ч��
                jlysj_model.JLZH = jlysj.JLZH;//����֤��
                jlysj_model.JLZYXQ = jlysj.JLZYXQ;//����֤��Ч��
                jlysj_model.XL = jlysj.XL;//ѧ��
                jlysj_model.ZC = jlysj.ZC;//ְ��
                jlysj_model.JXSJ = jlysj.JXSJ;//��Уʱ��
                jlysj_model.LXDH = jlysj.LXDH;//��ϵ�绰
                jlysj_model.ZZ = jlysj.ZZ;//סַ
                jlysj_model.JSDJ = jlysj.JSDJ;//�����ȼ�
                jlysj_model.JTCHYXM = jlysj.JTCHYXM;//��ͥ��Աһ����
                jlysj_model.JTCYYGX = jlysj.JTCYYGX;//��ͥ��Աһ��ϵ
                jlysj_model.JTCYYXBM = jlysj.JTCYYXBM;//��ͥ��Աһ�Ա���
                jlysj_model.JTCYYCSRQ = jlysj.JTCYYCSRQ;//��ͥ��Աһ��������
                jlysj_model.JTCYYZZ = jlysj.JTCYYZZ;//��ͥ��Աһסַ
                jlysj_model.JTCYYLXDH = jlysj.JTCYYLXDH;//��ͥ��Աһ��ϵ�绰
                jlysj_model.JTCYYCSGZ = jlysj.JTCYYCSGZ;//��ͥ��Աһ���¹���
                jlysj_model.JTCYEXM = jlysj.JTCYEXM;//��ͥ��Ա������
                jlysj_model.JTCYEGX = jlysj.JTCYEGX;//��ͥ��Ա����ϵ
                jlysj_model.JTCYEXBM = jlysj.JTCYEXBM;//��ͥ��Ա���Ա���
                jlysj_model.JTCYECSRQ = jlysj.JTCYECSRQ;//��ͥ��Ա����������
                jlysj_model.JTCYEZZ = jlysj.JTCYEZZ;//��ͥ��Ա��סַ
                jlysj_model.JTCYELXDH = jlysj.JTCYELXDH;//��ͥ��Ա����ϵ�绰
                jlysj_model.JTCYECSGZ = jlysj.JTCYECSGZ;//��ͥ��Ա�����¹���
                db_jpxt.Entry(jlysj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_02_01_JLYSJ.Add(jlysj);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_02_01_JLYSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_02_01_JLYSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlysj(jlysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlysj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_02_01_JLYSJ jlysj= db_jpxt.EDU_JPXT_02_01_JLYSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlysj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_02_01_JLYSJ jlysj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlysj(jlysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlysj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_02_01_JLYSJ jlysj = db_jpxt.EDU_JPXT_02_01_JLYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_02_01_JLYSJ.Remove(jlysj);
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
                    EDU_JPXT_02_01_JLYSJ jlysj = db_jpxt.EDU_JPXT_02_01_JLYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_02_01_JLYSJ.Remove(jlysj);
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

        private static int Max_JLYSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ����Ա���ݱ����ID
        public int GetMax_JLYSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLYSJ_ID == 0)
                {
                    EDU_JPXT_02_01_JLYSJ jlysj = db_jpxt.EDU_JPXT_02_01_JLYSJ.FirstOrDefault();
                    if (jlysj == null)
                    {
                        Max_JLYSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JLYSJ_ID = db_jpxt.EDU_JPXT_02_01_JLYSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLYSJ_ID++;
                }
                maxId = Max_JLYSJ_ID;
            }
            return maxId;
        }

    }
}
