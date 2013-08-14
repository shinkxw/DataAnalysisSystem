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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class JZGJBSJController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP> model = db_zzjg.VIEW_EDU_ZZJG_01_01_JZGJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJzgjbsj(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
        {
            jzgjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgjbsj(jzgjbsj);
        }

        public void UpdJzgjbsj(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
        {
            //����Ĭ��ֵ
            if (jzgjbsj.ID == 0) jzgjbsj.ID = 0;//���
            if (jzgjbsj.SCHOOLID == 0) jzgjbsj.SCHOOLID = 0;//ѧУ��EDU_ZZXX_01_01_ZZXX
            if (string.IsNullOrEmpty(jzgjbsj.GH)) jzgjbsj.GH = "";//����
            if (string.IsNullOrEmpty(jzgjbsj.XM)) jzgjbsj.XM = "";//����
            if (string.IsNullOrEmpty(jzgjbsj.YWXM)) jzgjbsj.YWXM = "";//Ӣ������
            if (string.IsNullOrEmpty(jzgjbsj.XMPY)) jzgjbsj.XMPY = "";//����ƴ��
            if (string.IsNullOrEmpty(jzgjbsj.CYM)) jzgjbsj.CYM = "";//������
            if (string.IsNullOrEmpty(jzgjbsj.SFZJLXM)) jzgjbsj.SFZJLXM = "";//���֤��������EDU_JY_SFZJLX
            if (string.IsNullOrEmpty(jzgjbsj.SFZJH)) jzgjbsj.SFZJH = "";//���֤����
            if (string.IsNullOrEmpty(jzgjbsj.CSRQ)) jzgjbsj.CSRQ = "";//��������
            if (string.IsNullOrEmpty(jzgjbsj.XBM)) jzgjbsj.XBM = "";//�Ա���EDU_GB_RDXB
            if (string.IsNullOrEmpty(jzgjbsj.MZM)) jzgjbsj.MZM = "";//������EDU_GB_ZGGMZMCDLMZMPXF
            if (string.IsNullOrEmpty(jzgjbsj.XXM)) jzgjbsj.XXM = "";//Ѫ����EDU_JY_XX
            if (string.IsNullOrEmpty(jzgjbsj.JKZKM)) jzgjbsj.JKZKM = "";//����״����EDU_GB_ZZMM
            if (string.IsNullOrEmpty(jzgjbsj.HYZTM)) jzgjbsj.HYZTM = "";//����״̬��EDU_GB_HYZZ
            if (string.IsNullOrEmpty(jzgjbsj.ZZMMM)) jzgjbsj.ZZMMM = "";//������ò��EDU_GB_ZZMM
            if (string.IsNullOrEmpty(jzgjbsj.GATQWM)) jzgjbsj.GATQWM = "";//�۰�̨������EDU_JY_GATQW
            if (string.IsNullOrEmpty(jzgjbsj.JG)) jzgjbsj.JG = "";//����
            if (string.IsNullOrEmpty(jzgjbsj.GJDQM)) jzgjbsj.GJDQM = "";//����/������EDU_GB_SJGGHDQMC
            if (string.IsNullOrEmpty(jzgjbsj.CSDXZQHM)) jzgjbsj.CSDXZQHM = "";//����������������EDU_GB_ZHRMGHGXZQH
            if (string.IsNullOrEmpty(jzgjbsj.XYZJM)) jzgjbsj.XYZJM = "";//�����ڽ���EDU_GB_ZJXY
            if (string.IsNullOrEmpty(jzgjbsj.JZGHKSZDXZQHM)) jzgjbsj.JZGHKSZDXZQHM = "";//��ְ���������ڵ�����������EDU_GB_ZHRMGHGXZQH
            if (string.IsNullOrEmpty(jzgjbsj.HKLBM)) jzgjbsj.HKLBM = "";//���������EDU_GB_HKLB
            if (string.IsNullOrEmpty(jzgjbsj.DQZZ)) jzgjbsj.DQZZ = "";//��ǰסַ
            if (string.IsNullOrEmpty(jzgjbsj.DQZZYZBM)) jzgjbsj.DQZZYZBM = "";//��ǰסַ��������
            if (string.IsNullOrEmpty(jzgjbsj.CJGZNY)) jzgjbsj.CJGZNY = "";//�μӹ�������
            if (string.IsNullOrEmpty(jzgjbsj.CJNY)) jzgjbsj.CJNY = "";//�ӽ�����
            if (string.IsNullOrEmpty(jzgjbsj.LXNY)) jzgjbsj.LXNY = "";//��У����
            if (string.IsNullOrEmpty(jzgjbsj.BZLBM)) jzgjbsj.BZLBM = "";//���������EDU_JY_BZLB
            if (string.IsNullOrEmpty(jzgjbsj.JZGLBM)) jzgjbsj.JZGLBM = "";//��ְ�������EDU_JY_JZGLB
            if (string.IsNullOrEmpty(jzgjbsj.GWLBM)) jzgjbsj.GWLBM = "";//��λ�����EDU_JY_GWLB
            if (string.IsNullOrEmpty(jzgjbsj.SFJZJS)) jzgjbsj.SFJZJS = "";//�Ƿ��ְ��ʦEDU_JY_SFBZ
            if (string.IsNullOrEmpty(jzgjbsj.SFSSXJS)) jzgjbsj.SFSSXJS = "";//�Ƿ�˫ʦ�ͽ�EDU_JY_SFBZ
            if (string.IsNullOrEmpty(jzgjbsj.ZP)) jzgjbsj.ZP = "";//��Ƭ(·��)
            if (string.IsNullOrEmpty(jzgjbsj.DQZTM)) jzgjbsj.DQZTM = "";//��ǰ״̬��EDU_JY_JZGDQZT
            EDU_ZZJG_01_01_JZGJBSJ jzgjbsj_model = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.FirstOrDefault(e => e.ID == jzgjbsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgjbsj_model != null)
            {
                jzgjbsj_model.ID = jzgjbsj.ID;//���
                jzgjbsj_model.SCHOOLID = jzgjbsj.SCHOOLID;//ѧУ��EDU_ZZXX_01_01_ZZXX
                jzgjbsj_model.GH = jzgjbsj.GH;//����
                jzgjbsj_model.XM = jzgjbsj.XM;//����
                jzgjbsj_model.YWXM = jzgjbsj.YWXM;//Ӣ������
                jzgjbsj_model.XMPY = jzgjbsj.XMPY;//����ƴ��
                jzgjbsj_model.CYM = jzgjbsj.CYM;//������
                jzgjbsj_model.SFZJLXM = jzgjbsj.SFZJLXM;//���֤��������EDU_JY_SFZJLX
                jzgjbsj_model.SFZJH = jzgjbsj.SFZJH;//���֤����
                jzgjbsj_model.CSRQ = jzgjbsj.CSRQ;//��������
                jzgjbsj_model.XBM = jzgjbsj.XBM;//�Ա���EDU_GB_RDXB
                jzgjbsj_model.MZM = jzgjbsj.MZM;//������EDU_GB_ZGGMZMCDLMZMPXF
                jzgjbsj_model.XXM = jzgjbsj.XXM;//Ѫ����EDU_JY_XX
                jzgjbsj_model.JKZKM = jzgjbsj.JKZKM;//����״����EDU_GB_ZZMM
                jzgjbsj_model.HYZTM = jzgjbsj.HYZTM;//����״̬��EDU_GB_HYZZ
                jzgjbsj_model.ZZMMM = jzgjbsj.ZZMMM;//������ò��EDU_GB_ZZMM
                jzgjbsj_model.GATQWM = jzgjbsj.GATQWM;//�۰�̨������EDU_JY_GATQW
                jzgjbsj_model.JG = jzgjbsj.JG;//����
                jzgjbsj_model.GJDQM = jzgjbsj.GJDQM;//����/������EDU_GB_SJGGHDQMC
                jzgjbsj_model.CSDXZQHM = jzgjbsj.CSDXZQHM;//����������������EDU_GB_ZHRMGHGXZQH
                jzgjbsj_model.XYZJM = jzgjbsj.XYZJM;//�����ڽ���EDU_GB_ZJXY
                jzgjbsj_model.JZGHKSZDXZQHM = jzgjbsj.JZGHKSZDXZQHM;//��ְ���������ڵ�����������EDU_GB_ZHRMGHGXZQH
                jzgjbsj_model.HKLBM = jzgjbsj.HKLBM;//���������EDU_GB_HKLB
                jzgjbsj_model.DQZZ = jzgjbsj.DQZZ;//��ǰסַ
                jzgjbsj_model.DQZZYZBM = jzgjbsj.DQZZYZBM;//��ǰסַ��������
                jzgjbsj_model.CJGZNY = jzgjbsj.CJGZNY;//�μӹ�������
                jzgjbsj_model.CJNY = jzgjbsj.CJNY;//�ӽ�����
                jzgjbsj_model.LXNY = jzgjbsj.LXNY;//��У����
                jzgjbsj_model.BZLBM = jzgjbsj.BZLBM;//���������EDU_JY_BZLB
                jzgjbsj_model.JZGLBM = jzgjbsj.JZGLBM;//��ְ�������EDU_JY_JZGLB
                jzgjbsj_model.GWLBM = jzgjbsj.GWLBM;//��λ�����EDU_JY_GWLB
                jzgjbsj_model.SFJZJS = jzgjbsj.SFJZJS;//�Ƿ��ְ��ʦEDU_JY_SFBZ
                jzgjbsj_model.SFSSXJS = jzgjbsj.SFSSXJS;//�Ƿ�˫ʦ�ͽ�EDU_JY_SFBZ
                jzgjbsj_model.ZP = jzgjbsj.ZP;//��Ƭ(·��)
                jzgjbsj_model.DQZTM = jzgjbsj.DQZTM;//��ǰ״̬��EDU_JY_JZGDQZT
                db_zzjg.Entry(jzgjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Add(jzgjbsj);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_01_01_JZGJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_01_01_JZGJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_01_01_JZGJBSJ jzgjbsj= db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_01_01_JZGJBSJ jzgjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzgjbsj(jzgjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgjbsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_01_01_JZGJBSJ jzgjbsj = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Remove(jzgjbsj);
                db_zzjg.SaveChanges();
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
                    EDU_ZZJG_01_01_JZGJBSJ jzgjbsj = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Remove(jzgjbsj);
                    db_zzjg.SaveChanges();
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

        private static int Max_JZGJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��ְ������������������ID
        public int GetMax_JZGJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGJBSJ_ID == 0)
                {
                    EDU_ZZJG_01_01_JZGJBSJ jzgjbsj = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.FirstOrDefault();
                    if (jzgjbsj == null)
                    {
                        Max_JZGJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_JZGJBSJ_ID = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGJBSJ_ID++;
                }
                maxId = Max_JZGJBSJ_ID;
            }
            return maxId;
        }

    }
}
