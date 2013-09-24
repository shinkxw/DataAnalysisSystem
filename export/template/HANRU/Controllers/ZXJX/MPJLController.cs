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
    public class MPJLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_06_A01_MPJL_DISP> model = db_zxjx.VIEW_EDU_ZXJX_06_A01_MPJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddMpjl(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            mpjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdMpjl(mpjl);
        }

        public void UpdMpjl(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            //����Ĭ��ֵ
            if (mpjl.ID == 0) mpjl.ID = 0;//���
            if (mpjl.SCHOOLID == 0) mpjl.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (mpjl.MPJS == 0) mpjl.MPJS = 0;//������ʦ   ��ְ���������������
            if (string.IsNullOrEmpty(mpjl.MPKC)) mpjl.MPKC = "";//�����γ�   �γ�������
            if (mpjl.MPXS == 0) mpjl.MPXS = 0;//����ѧ��   ѧ���������������
            if (mpjl.XNID == 0) mpjl.XNID = 0;//ѧ��   ѧ���
            if (mpjl.XQID == 0) mpjl.XQID = 0;//ѧ��   ѧ�����ݱ�
            if (string.IsNullOrEmpty(mpjl.NJID)) mpjl.NJID = "";//�꼶   �꼶�������
            if (string.IsNullOrEmpty(mpjl.BJID)) mpjl.BJID = "";//�༶   �༶�������
            if (mpjl.MPJG == 0) mpjl.MPJG = 0;//�������
            if (string.IsNullOrEmpty(mpjl.BZ)) mpjl.BZ = "";//��ע
            if (mpjl.JSRKID == 0) mpjl.JSRKID = 0;//��ʦ�οα��
            EDU_ZXJX_06_A01_MPJL mpjl_model = db_zxjx.EDU_ZXJX_06_A01_MPJL.FirstOrDefault(e => e.ID == mpjl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (mpjl_model != null)
            {
                mpjl_model.ID = mpjl.ID;//���
                mpjl_model.SCHOOLID = mpjl.SCHOOLID;//ѧУ��   ѧУ���ñ�
                mpjl_model.MPJS = mpjl.MPJS;//������ʦ   ��ְ���������������
                mpjl_model.MPKC = mpjl.MPKC;//�����γ�   �γ�������
                mpjl_model.MPXS = mpjl.MPXS;//����ѧ��   ѧ���������������
                mpjl_model.XNID = mpjl.XNID;//ѧ��   ѧ���
                mpjl_model.XQID = mpjl.XQID;//ѧ��   ѧ�����ݱ�
                mpjl_model.NJID = mpjl.NJID;//�꼶   �꼶�������
                mpjl_model.BJID = mpjl.BJID;//�༶   �༶�������
                mpjl_model.MPJG = mpjl.MPJG;//�������
                mpjl_model.MPSJ = mpjl.MPSJ;//����ʱ��
                mpjl_model.RRSJ = mpjl.RRSJ;//¼��ʱ��
                mpjl_model.BZ = mpjl.BZ;//��ע
                mpjl_model.JSRKID = mpjl.JSRKID;//��ʦ�οα��
                db_zxjx.Entry(mpjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjx.EDU_ZXJX_06_A01_MPJL.Add(mpjl);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_06_A01_MPJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_06_A01_MPJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddMpjl(mpjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(mpjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(mpjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_06_A01_MPJL mpjl= db_zxjx.EDU_ZXJX_06_A01_MPJL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(mpjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_06_A01_MPJL mpjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdMpjl(mpjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(mpjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(mpjl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_06_A01_MPJL mpjl = db_zxjx.EDU_ZXJX_06_A01_MPJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_06_A01_MPJL.Remove(mpjl);
                db_zxjx.SaveChanges();
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
                    EDU_ZXJX_06_A01_MPJL mpjl = db_zxjx.EDU_ZXJX_06_A01_MPJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_06_A01_MPJL.Remove(mpjl);
                    db_zxjx.SaveChanges();
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

        private static int Max_MPJL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ������¼�����ID
        public int GetMax_MPJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_MPJL_ID == 0)
                {
                    EDU_ZXJX_06_A01_MPJL mpjl = db_zxjx.EDU_ZXJX_06_A01_MPJL.FirstOrDefault();
                    if (mpjl == null)
                    {
                        Max_MPJL_ID = 1;
                    }
                    else
                    {
                        //Max_MPJL_ID = db_zxjx.EDU_ZXJX_06_A01_MPJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_MPJL_ID++;
                }
                maxId = Max_MPJL_ID;
            }
            return maxId;
        }

    }
}
