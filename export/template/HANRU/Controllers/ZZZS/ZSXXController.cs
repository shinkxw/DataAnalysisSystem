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
    public class ZSXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZZS_01_01_ZSXX_DISP> model = db_zzzs.VIEW_EDU_ZZZS_01_01_ZSXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddZsxx(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            zsxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZsxx(zsxx);
        }

        public void UpdZsxx(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            //����Ĭ��ֵ
            if (zsxx.XSXXID == 0) zsxx.XSXXID = 0;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
            if (zsxx.SCHOOLID == 0) zsxx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(zsxx.ZKZH)) zsxx.ZKZH = "";//׼��֤��
            if (string.IsNullOrEmpty(zsxx.KSH)) zsxx.KSH = "";//������
            if (string.IsNullOrEmpty(zsxx.KQXZQHM)) zsxx.KQXZQHM = "";//��������������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(zsxx.RXNY)) zsxx.RXNY = "";//��ѧ����
            if (string.IsNullOrEmpty(zsxx.YSWGYZM)) zsxx.YSWGYZM = "";//Ӧ�����������   �������ƴ���2��ĸ����
            if (string.IsNullOrEmpty(zsxx.BKZYM1)) zsxx.BKZYM1 = "";//����רҵ��1
            if (string.IsNullOrEmpty(zsxx.BKZYM2)) zsxx.BKZYM2 = "";//����רҵ��2
            if (string.IsNullOrEmpty(zsxx.BKZYM3)) zsxx.BKZYM3 = "";//����רҵ��3
            if (string.IsNullOrEmpty(zsxx.BKZYM4)) zsxx.BKZYM4 = "";//����רҵ��4
            if (string.IsNullOrEmpty(zsxx.BKZYM5)) zsxx.BKZYM5 = "";//����רҵ��5
            if (string.IsNullOrEmpty(zsxx.BKZYM6)) zsxx.BKZYM6 = "";//����רҵ��6
            if (string.IsNullOrEmpty(zsxx.KSFSM)) zsxx.KSFSM = "";//���Է�ʽ��   ���Է�ʽ�����
            if (string.IsNullOrEmpty(zsxx.BYZX)) zsxx.BYZX = "";//��ҵ��ѧ
            if (string.IsNullOrEmpty(zsxx.BYZXYZBM)) zsxx.BYZXYZBM = "";//��ҵ��ѧ��������
            if (string.IsNullOrEmpty(zsxx.KSTC)) zsxx.KSTC = "";//�����س�
            if (string.IsNullOrEmpty(zsxx.JLYCC)) zsxx.JLYCC = "";//������ʹ�
            if (string.IsNullOrEmpty(zsxx.JSHJ)) zsxx.JSHJ = "";//������
            if (string.IsNullOrEmpty(zsxx.SHGZ)) zsxx.SHGZ = "";//��Ṥ��
            if (string.IsNullOrEmpty(zsxx.TJJL)) zsxx.TJJL = "";//������
            if (string.IsNullOrEmpty(zsxx.JZBS)) zsxx.JZBS = "";//���岡ʷ
            if (string.IsNullOrEmpty(zsxx.KSJWBS)) zsxx.KSJWBS = "";//����������ʷ
            if (zsxx.SG == 0) zsxx.SG = 0;//���
            if (zsxx.KSSL == 0) zsxx.KSSL = 0;//��������
            EDU_ZZZS_01_01_ZSXX zsxx_model = db_zzzs.EDU_ZZZS_01_01_ZSXX.FirstOrDefault(e => e.XSXXID == zsxx.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zsxx_model != null)
            {
                zsxx_model.XSXXID = zsxx.XSXXID;//ѧ����Ϣ���ݱ�   ѧ����Ϣ���ݱ�
                zsxx_model.SCHOOLID = zsxx.SCHOOLID;//ѧУ��   ѧУ���ñ�
                zsxx_model.ZKZH = zsxx.ZKZH;//׼��֤��
                zsxx_model.KSH = zsxx.KSH;//������
                zsxx_model.KQXZQHM = zsxx.KQXZQHM;//��������������   �л����񹲺͹�������������
                zsxx_model.RXNY = zsxx.RXNY;//��ѧ����
                zsxx_model.YSWGYZM = zsxx.YSWGYZM;//Ӧ�����������   �������ƴ���2��ĸ����
                zsxx_model.BKZYM1 = zsxx.BKZYM1;//����רҵ��1
                zsxx_model.BKZYM2 = zsxx.BKZYM2;//����רҵ��2
                zsxx_model.BKZYM3 = zsxx.BKZYM3;//����רҵ��3
                zsxx_model.BKZYM4 = zsxx.BKZYM4;//����רҵ��4
                zsxx_model.BKZYM5 = zsxx.BKZYM5;//����רҵ��5
                zsxx_model.BKZYM6 = zsxx.BKZYM6;//����רҵ��6
                zsxx_model.KSFSM = zsxx.KSFSM;//���Է�ʽ��   ���Է�ʽ�����
                zsxx_model.BYZX = zsxx.BYZX;//��ҵ��ѧ
                zsxx_model.BYZXYZBM = zsxx.BYZXYZBM;//��ҵ��ѧ��������
                zsxx_model.KSTC = zsxx.KSTC;//�����س�
                zsxx_model.JLYCC = zsxx.JLYCC;//������ʹ�
                zsxx_model.JSHJ = zsxx.JSHJ;//������
                zsxx_model.SHGZ = zsxx.SHGZ;//��Ṥ��
                zsxx_model.TJJL = zsxx.TJJL;//������
                zsxx_model.JZBS = zsxx.JZBS;//���岡ʷ
                zsxx_model.KSJWBS = zsxx.KSJWBS;//����������ʷ
                zsxx_model.SG = zsxx.SG;//���
                zsxx_model.KSSL = zsxx.KSSL;//��������
                db_zzzs.Entry(zsxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzzs.EDU_ZZZS_01_01_ZSXX.Add(zsxx);
            }
            db_zzzs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_YZMCEZMLst = GBLDAL.GetGB_YZMCEZMSelLst();
            ViewBag.JY_KSFSLst = JBLDAL.GetJY_KSFSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZZS_01_01_ZSXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZZS_01_01_ZSXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZsxx(zsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZZS_01_01_ZSXX zsxx= db_zzzs.EDU_ZZZS_01_01_ZSXX.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zsxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdZsxx(zsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsxx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZZS_01_01_ZSXX zsxx = db_zzzs.EDU_ZZZS_01_01_ZSXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzzs.EDU_ZZZS_01_01_ZSXX.Remove(zsxx);
                db_zzzs.SaveChanges();
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
                    EDU_ZZZS_01_01_ZSXX zsxx = db_zzzs.EDU_ZZZS_01_01_ZSXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzzs.EDU_ZZZS_01_01_ZSXX.Remove(zsxx);
                    db_zzzs.SaveChanges();
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

        private static int Max_ZSXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�������ݱ����ID
        public int GetMax_ZSXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZSXX_ID == 0)
                {
                    EDU_ZZZS_01_01_ZSXX zsxx = db_zzzs.EDU_ZZZS_01_01_ZSXX.FirstOrDefault();
                    if (zsxx == null)
                    {
                        Max_ZSXX_ID = 1;
                    }
                    else
                    {
                        //Max_ZSXX_ID = db_zzzs.EDU_ZZZS_01_01_ZSXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZSXX_ID++;
                }
                maxId = Max_ZSXX_ID;
            }
            return maxId;
        }

    }
}
