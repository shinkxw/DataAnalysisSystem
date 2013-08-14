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
    public class SWCLController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_02_01_SWCL_DISP> model = db_zxbg.VIEW_EDU_ZXBG_02_01_SWCL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSwcl(EDU_ZXBG_02_01_SWCL swcl)
        {
            swcl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSwcl(swcl);
        }

        public void UpdSwcl(EDU_ZXBG_02_01_SWCL swcl)
        {
            //����Ĭ��ֵ
            if (swcl.SCHOOLID == 0) swcl.SCHOOLID = 0;//ѧУ��ѧУID
            if (swcl.WJID == 0) swcl.WJID = 0;//�ļ�ID
            if (swcl.QSRID == 0) swcl.QSRID = 0;//ǩ����ID
            if (swcl.CFRID == 0) swcl.CFRID = 0;//�����ID
            if (swcl.DJRID == 0) swcl.DJRID = 0;//�Ǽ���ID
            if (string.IsNullOrEmpty(swcl.QSRGH)) swcl.QSRGH = "";//ǩ���˹��Ź���
            if (string.IsNullOrEmpty(swcl.CFRGH)) swcl.CFRGH = "";//����˹��Ź���
            if (string.IsNullOrEmpty(swcl.DJRGH)) swcl.DJRGH = "";//�Ǽ��˹��Ź���
            if (string.IsNullOrEmpty(swcl.SWRQ)) swcl.SWRQ = "";//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(swcl.LWDW)) swcl.LWDW = "";//���ĵ�λ��λ����
            if (swcl.FS == 0) swcl.FS = 0;//������λ���� 
            if (string.IsNullOrEmpty(swcl.CLQK)) swcl.CLQK = "";//�����������/��������д�ļ���Ҫ���������ͽ���������쵼��ʾ���а첿�ŵ� 
            if (swcl.FYFS == 0) swcl.FYFS = 0;//��ӡ������λ���� 
            EDU_ZXBG_02_01_SWCL swcl_model = db_zxbg.EDU_ZXBG_02_01_SWCL.FirstOrDefault(e => e.SCHOOLID == swcl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (swcl_model != null)
            {
                swcl_model.SCHOOLID = swcl.SCHOOLID;//ѧУ��ѧУID
                swcl_model.WJID = swcl.WJID;//�ļ�ID
                swcl_model.QSRID = swcl.QSRID;//ǩ����ID
                swcl_model.CFRID = swcl.CFRID;//�����ID
                swcl_model.DJRID = swcl.DJRID;//�Ǽ���ID
                swcl_model.QSRGH = swcl.QSRGH;//ǩ���˹��Ź���
                swcl_model.CFRGH = swcl.CFRGH;//����˹��Ź���
                swcl_model.DJRGH = swcl.DJRGH;//�Ǽ��˹��Ź���
                swcl_model.SWRQ = swcl.SWRQ;//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                swcl_model.LWDW = swcl.LWDW;//���ĵ�λ��λ����
                swcl_model.FS = swcl.FS;//������λ���� 
                swcl_model.CLQK = swcl.CLQK;//�����������/��������д�ļ���Ҫ���������ͽ���������쵼��ʾ���а첿�ŵ� 
                swcl_model.FYFS = swcl.FYFS;//��ӡ������λ���� 
                db_zxbg.Entry(swcl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxbg.EDU_ZXBG_02_01_SWCL.Add(swcl);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_02_01_SWCL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_02_01_SWCL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_02_01_SWCL swcl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSwcl(swcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(swcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(swcl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_02_01_SWCL swcl= db_zxbg.EDU_ZXBG_02_01_SWCL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(swcl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_02_01_SWCL swcl)
        {
            InitViewBag();
            try
            {
                
                
                UpdSwcl(swcl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(swcl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(swcl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_02_01_SWCL swcl = db_zxbg.EDU_ZXBG_02_01_SWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_02_01_SWCL.Remove(swcl);
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
                    EDU_ZXBG_02_01_SWCL swcl = db_zxbg.EDU_ZXBG_02_01_SWCL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_02_01_SWCL.Remove(swcl);
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

        private static int Max_SWCL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ���Ĵ�����������ID
        public int GetMax_SWCL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SWCL_ID == 0)
                {
                    EDU_ZXBG_02_01_SWCL swcl = db_zxbg.EDU_ZXBG_02_01_SWCL.FirstOrDefault();
                    if (swcl == null)
                    {
                        Max_SWCL_ID = 1;
                    }
                    else
                    {
                        //Max_SWCL_ID = db_zxbg.EDU_ZXBG_02_01_SWCL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SWCL_ID++;
                }
                maxId = Max_SWCL_ID;
            }
            return maxId;
        }

    }
}
