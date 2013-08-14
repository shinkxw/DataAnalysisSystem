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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class FWCLController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_03_01_FWCL_DISP> model = db_zxbg.VIEW_EDU_ZXBG_03_01_FWCL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddFwcl(EDU_ZXBG_03_01_FWCL fwcl)
        {
            fwcl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdFwcl(fwcl);
        }

        public void UpdFwcl(EDU_ZXBG_03_01_FWCL fwcl)
        {
            //����Ĭ��ֵ
            if (fwcl.SCHOOLID == 0) fwcl.SCHOOLID = 0;//ѧУ��ѧУID
            if (fwcl.WJID == 0) fwcl.WJID = 0;//�ļ�ID
            if (fwcl.NGRID == 0) fwcl.NGRID = 0;//�����ID
            if (fwcl.QFRID == 0) fwcl.QFRID = 0;//ǩ����ID
            if (fwcl.DJRID == 0) fwcl.DJRID = 0;//�Ǽ���ID
            if (fwcl.DZRID == 0) fwcl.DZRID = 0;//������ID
            if (fwcl.JDRID == 0) fwcl.JDRID = 0;//У����ID
            if (string.IsNullOrEmpty(fwcl.NGRGH)) fwcl.NGRGH = "";//����˹���
            if (string.IsNullOrEmpty(fwcl.NGRQ)) fwcl.NGRQ = "";//������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(fwcl.QFRGH)) fwcl.QFRGH = "";//ǩ���˹��Ź���
            if (string.IsNullOrEmpty(fwcl.QFRQ)) fwcl.QFRQ = "";//ǩ�����ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(fwcl.FSFW)) fwcl.FSFW = "";//���ͷ�Χ����/������ǩ���ļ���ָ�����ͷ�Χ 
            if (string.IsNullOrEmpty(fwcl.FSFSM)) fwcl.FSFSM = "";//���ͷ�ʽ��ֵ�ռ䣺JY/T1001FSFS���ͷ�ʽ���� 
            if (string.IsNullOrEmpty(fwcl.DJRGH)) fwcl.DJRGH = "";//�Ǽ��˹��Ź���
            if (string.IsNullOrEmpty(fwcl.DJRQ)) fwcl.DJRQ = "";//�Ǽ����ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            if (fwcl.FWJS == 0) fwcl.FWJS = 0;//���ļ�������/�����������ļ�����������λ���� 
            if (string.IsNullOrEmpty(fwcl.GWFWRQ)) fwcl.GWFWRQ = "";//���ķ������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(fwcl.CLQK)) fwcl.CLQK = "";//�����������/������ָ�����Ʒ����ļ����к���Ĵ��� 
            if (string.IsNullOrEmpty(fwcl.DZRGH)) fwcl.DZRGH = "";//�����˹���ѧ�Ż򹤺�
            if (string.IsNullOrEmpty(fwcl.JDRGH)) fwcl.JDRGH = "";//У���˹���ѧ�Ż򹤺�
            if (string.IsNullOrEmpty(fwcl.FZFSM)) fwcl.FZFSM = "";//��װ��ʽ��ֵ�ռ䣺JY/T1001GWFZFS��װ��ʽ���� 
            EDU_ZXBG_03_01_FWCL fwcl_model = db_zxbg.EDU_ZXBG_03_01_FWCL.FirstOrDefault(e => e.SCHOOLID == fwcl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (fwcl_model != null)
            {
                fwcl_model.SCHOOLID = fwcl.SCHOOLID;//ѧУ��ѧУID
                fwcl_model.WJID = fwcl.WJID;//�ļ�ID
                fwcl_model.NGRID = fwcl.NGRID;//�����ID
                fwcl_model.QFRID = fwcl.QFRID;//ǩ����ID
                fwcl_model.DJRID = fwcl.DJRID;//�Ǽ���ID
                fwcl_model.DZRID = fwcl.DZRID;//������ID
                fwcl_model.JDRID = fwcl.JDRID;//У����ID
                fwcl_model.NGRGH = fwcl.NGRGH;//����˹���
                fwcl_model.NGRQ = fwcl.NGRQ;//������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                fwcl_model.QFRGH = fwcl.QFRGH;//ǩ���˹��Ź���
                fwcl_model.QFRQ = fwcl.QFRQ;//ǩ�����ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                fwcl_model.FSFW = fwcl.FSFW;//���ͷ�Χ����/������ǩ���ļ���ָ�����ͷ�Χ 
                fwcl_model.FSFSM = fwcl.FSFSM;//���ͷ�ʽ��ֵ�ռ䣺JY/T1001FSFS���ͷ�ʽ���� 
                fwcl_model.DJRGH = fwcl.DJRGH;//�Ǽ��˹��Ź���
                fwcl_model.DJRQ = fwcl.DJRQ;//�Ǽ����ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                fwcl_model.FWJS = fwcl.FWJS;//���ļ�������/�����������ļ�����������λ���� 
                fwcl_model.GWFWRQ = fwcl.GWFWRQ;//���ķ������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                fwcl_model.CLQK = fwcl.CLQK;//�����������/������ָ�����Ʒ����ļ����к���Ĵ��� 
                fwcl_model.DZRGH = fwcl.DZRGH;//�����˹���ѧ�Ż򹤺�
                fwcl_model.JDRGH = fwcl.JDRGH;//У���˹���ѧ�Ż򹤺�
                fwcl_model.FZFSM = fwcl.FZFSM;//��װ��ʽ��ֵ�ռ䣺JY/T1001GWFZFS��װ��ʽ���� 
                db_zxbg.Entry(fwcl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxbg.EDU_ZXBG_03_01_FWCL.Add(fwcl);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_03_01_FWCL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_03_01_FWCL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_03_01_FWCL fwcl)
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
            
            EDU_ZXBG_03_01_FWCL fwcl= db_zxbg.EDU_ZXBG_03_01_FWCL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(fwcl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_03_01_FWCL fwcl)
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

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_03_01_FWCL fwcl = db_zxbg.EDU_ZXBG_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_03_01_FWCL.Remove(fwcl);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_03_01_FWCL fwcl = db_zxbg.EDU_ZXBG_03_01_FWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_03_01_FWCL.Remove(fwcl);
                    db_zxbg.SaveChanges();
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
                    EDU_ZXBG_03_01_FWCL fwcl = db_zxbg.EDU_ZXBG_03_01_FWCL.FirstOrDefault();
                    if (fwcl == null)
                    {
                        Max_FWCL_ID = 1;
                    }
                    else
                    {
                        //Max_FWCL_ID = db_zxbg.EDU_ZXBG_03_01_FWCL.Max(e => e.ID) + 1;
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
