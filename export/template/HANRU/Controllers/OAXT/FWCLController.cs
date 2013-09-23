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
    public class FWCLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_03_01_FWCL_DISP> model = db_oaxt.VIEW_EDU_OAXT_03_01_FWCL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddFwcl(EDU_OAXT_03_01_FWCL fwcl)
        {
            fwcl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdFwcl(fwcl);
        }

        public void UpdFwcl(EDU_OAXT_03_01_FWCL fwcl)
        {
            //����Ĭ��ֵ
            if (fwcl.SCHOOLID == 0) fwcl.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (fwcl.WJID == 0) fwcl.WJID = 0;//�ļ�ID   �ļ������������
            if (string.IsNullOrEmpty(fwcl.NGRID)) fwcl.NGRID = "";//�����ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(fwcl.QFRID)) fwcl.QFRID = "";//ǩ����ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(fwcl.DJRID)) fwcl.DJRID = "";//�Ǽ���ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(fwcl.DZRID)) fwcl.DZRID = "";//������ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(fwcl.JDRID)) fwcl.JDRID = "";//У����ID   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(fwcl.NGRGH)) fwcl.NGRGH = "";//����˹���
            if (string.IsNullOrEmpty(fwcl.NGRQ)) fwcl.NGRQ = "";//�������
            if (string.IsNullOrEmpty(fwcl.QFRGH)) fwcl.QFRGH = "";//ǩ���˹���
            if (string.IsNullOrEmpty(fwcl.QFRQ)) fwcl.QFRQ = "";//ǩ������
            if (string.IsNullOrEmpty(fwcl.FSFW)) fwcl.FSFW = "";//���ͷ�Χ
            if (string.IsNullOrEmpty(fwcl.FSFSM)) fwcl.FSFSM = "";//���ͷ�ʽ��   ���ͷ�ʽ�����
            if (string.IsNullOrEmpty(fwcl.DJRGH)) fwcl.DJRGH = "";//�Ǽ��˹���
            if (string.IsNullOrEmpty(fwcl.DJRQ)) fwcl.DJRQ = "";//�Ǽ�����
            if (fwcl.FWJS == 0) fwcl.FWJS = 0;//���ļ���
            if (string.IsNullOrEmpty(fwcl.GWFWRQ)) fwcl.GWFWRQ = "";//���ķ�������
            if (string.IsNullOrEmpty(fwcl.CLQK)) fwcl.CLQK = "";//�������
            if (string.IsNullOrEmpty(fwcl.DZRGH)) fwcl.DZRGH = "";//�����˹���
            if (string.IsNullOrEmpty(fwcl.JDRGH)) fwcl.JDRGH = "";//У���˹���
            if (string.IsNullOrEmpty(fwcl.FZFSM)) fwcl.FZFSM = "";//��װ��ʽ��   ���ķ�װ��ʽ�����
            EDU_OAXT_03_01_FWCL fwcl_model = db_oaxt.EDU_OAXT_03_01_FWCL.FirstOrDefault(e => e.SCHOOLID == fwcl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (fwcl_model != null)
            {
                fwcl_model.SCHOOLID = fwcl.SCHOOLID;//ѧУ��   ѧУ���ñ�
                fwcl_model.WJID = fwcl.WJID;//�ļ�ID   �ļ������������
                fwcl_model.NGRID = fwcl.NGRID;//�����ID   Ӧ��ϵͳ�û���
                fwcl_model.QFRID = fwcl.QFRID;//ǩ����ID   Ӧ��ϵͳ�û���
                fwcl_model.DJRID = fwcl.DJRID;//�Ǽ���ID   Ӧ��ϵͳ�û���
                fwcl_model.DZRID = fwcl.DZRID;//������ID   Ӧ��ϵͳ�û���
                fwcl_model.JDRID = fwcl.JDRID;//У����ID   Ӧ��ϵͳ�û���
                fwcl_model.NGRGH = fwcl.NGRGH;//����˹���
                fwcl_model.NGRQ = fwcl.NGRQ;//�������
                fwcl_model.QFRGH = fwcl.QFRGH;//ǩ���˹���
                fwcl_model.QFRQ = fwcl.QFRQ;//ǩ������
                fwcl_model.FSFW = fwcl.FSFW;//���ͷ�Χ
                fwcl_model.FSFSM = fwcl.FSFSM;//���ͷ�ʽ��   ���ͷ�ʽ�����
                fwcl_model.DJRGH = fwcl.DJRGH;//�Ǽ��˹���
                fwcl_model.DJRQ = fwcl.DJRQ;//�Ǽ�����
                fwcl_model.FWJS = fwcl.FWJS;//���ļ���
                fwcl_model.GWFWRQ = fwcl.GWFWRQ;//���ķ�������
                fwcl_model.CLQK = fwcl.CLQK;//�������
                fwcl_model.DZRGH = fwcl.DZRGH;//�����˹���
                fwcl_model.JDRGH = fwcl.JDRGH;//У���˹���
                fwcl_model.FZFSM = fwcl.FZFSM;//��װ��ʽ��   ���ķ�װ��ʽ�����
                db_oaxt.Entry(fwcl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_oaxt.EDU_OAXT_03_01_FWCL.Add(fwcl);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_FSFSLst = JBLDAL.GetJY_FSFSSelLst();
            ViewBag.JY_GWFZFSLst = JBLDAL.GetJY_GWFZFSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_03_01_FWCL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_03_01_FWCL());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_03_01_FWCL fwcl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddFwcl(fwcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fwcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fwcl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_03_01_FWCL fwcl= db_oaxt.EDU_OAXT_03_01_FWCL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(fwcl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_03_01_FWCL fwcl)
        {
            InitViewBag();
            try
            {
                
                
                UpdFwcl(fwcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fwcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fwcl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_OAXT_03_01_FWCL fwcl = db_oaxt.EDU_OAXT_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_03_01_FWCL.Remove(fwcl);
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
                    EDU_OAXT_03_01_FWCL fwcl = db_oaxt.EDU_OAXT_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_03_01_FWCL.Remove(fwcl);
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

        private static int Max_FWCL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ���Ĵ�����������ID
        public int GetMax_FWCL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_FWCL_ID == 0)
                {
                    EDU_OAXT_03_01_FWCL fwcl = db_oaxt.EDU_OAXT_03_01_FWCL.FirstOrDefault();
                    if (fwcl == null)
                    {
                        Max_FWCL_ID = 1;
                    }
                    else
                    {
                        //Max_FWCL_ID = db_oaxt.EDU_OAXT_03_01_FWCL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_FWCL_ID++;
                }
                maxId = Max_FWCL_ID;
            }
            return maxId;
        }

    }
}
