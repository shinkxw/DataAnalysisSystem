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
    public class JZGJBSJController : JWXTController
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
            if (jzgjbsj.SCHOOLID == 0) jzgjbsj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(jzgjbsj.GH)) jzgjbsj.GH = "";//����
            if (string.IsNullOrEmpty(jzgjbsj.XM)) jzgjbsj.XM = "";//����
            if (string.IsNullOrEmpty(jzgjbsj.YWXM)) jzgjbsj.YWXM = "";//Ӣ������
            if (string.IsNullOrEmpty(jzgjbsj.XMPY)) jzgjbsj.XMPY = "";//����ƴ��
            if (string.IsNullOrEmpty(jzgjbsj.CYM)) jzgjbsj.CYM = "";//������
            if (string.IsNullOrEmpty(jzgjbsj.SFZJLXM)) jzgjbsj.SFZJLXM = "";//���֤��������   ���֤�����ʹ����
            if (string.IsNullOrEmpty(jzgjbsj.SFZJH)) jzgjbsj.SFZJH = "";//���֤����
            if (string.IsNullOrEmpty(jzgjbsj.CSRQ)) jzgjbsj.CSRQ = "";//��������
            if (string.IsNullOrEmpty(jzgjbsj.XBM)) jzgjbsj.XBM = "";//�Ա���   �˵��Ա����
            if (string.IsNullOrEmpty(jzgjbsj.MZM)) jzgjbsj.MZM = "";//������   �й����������Ƶ�������ĸƴд���ʹ���
            if (string.IsNullOrEmpty(jzgjbsj.XXM)) jzgjbsj.XXM = "";//Ѫ����   Ѫ�ʹ����
            if (string.IsNullOrEmpty(jzgjbsj.JKZKM)) jzgjbsj.JKZKM = "";//����״����   ����״��1λ���ִ���
            if (string.IsNullOrEmpty(jzgjbsj.HYZTM)) jzgjbsj.HYZTM = "";//����״̬��   ����״������
            if (string.IsNullOrEmpty(jzgjbsj.ZZMMM)) jzgjbsj.ZZMMM = "";//������ò��   ������ò����
            if (string.IsNullOrEmpty(jzgjbsj.GATQWM)) jzgjbsj.GATQWM = "";//�۰�̨������   �۰�̨��������
            if (string.IsNullOrEmpty(jzgjbsj.JG)) jzgjbsj.JG = "";//����
            if (string.IsNullOrEmpty(jzgjbsj.GJDQM)) jzgjbsj.GJDQM = "";//����/������   ��������͵������ƴ���
            if (string.IsNullOrEmpty(jzgjbsj.CSDXZQHM)) jzgjbsj.CSDXZQHM = "";//����������������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(jzgjbsj.XYZJM)) jzgjbsj.XYZJM = "";//�����ڽ���   �ڽ���������
            if (string.IsNullOrEmpty(jzgjbsj.JZGHKSZDXZQHM)) jzgjbsj.JZGHKSZDXZQHM = "";//��ְ���������ڵ�����������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(jzgjbsj.HKLBM)) jzgjbsj.HKLBM = "";//���������   ����������
            if (string.IsNullOrEmpty(jzgjbsj.DQZZ)) jzgjbsj.DQZZ = "";//��ǰסַ
            if (string.IsNullOrEmpty(jzgjbsj.DQZZYZBM)) jzgjbsj.DQZZYZBM = "";//��ǰסַ��������
            if (string.IsNullOrEmpty(jzgjbsj.CJGZNY)) jzgjbsj.CJGZNY = "";//�μӹ�������
            if (string.IsNullOrEmpty(jzgjbsj.CJNY)) jzgjbsj.CJNY = "";//�ӽ�����
            if (string.IsNullOrEmpty(jzgjbsj.LXNY)) jzgjbsj.LXNY = "";//��У����
            if (string.IsNullOrEmpty(jzgjbsj.BZLBM)) jzgjbsj.BZLBM = "";//���������   �����������
            if (string.IsNullOrEmpty(jzgjbsj.JZGLBM)) jzgjbsj.JZGLBM = "";//��ְ�������   ��ְ���������
            if (string.IsNullOrEmpty(jzgjbsj.GWLBM)) jzgjbsj.GWLBM = "";//��λ�����   ��λ�������
            if (string.IsNullOrEmpty(jzgjbsj.SFJZJS)) jzgjbsj.SFJZJS = "";//�Ƿ��ְ��ʦ   �Ƿ��־�����
            if (string.IsNullOrEmpty(jzgjbsj.SFSSXJS)) jzgjbsj.SFSSXJS = "";//�Ƿ�˫ʦ�ͽ�ʦ   �Ƿ��־�����
            if (string.IsNullOrEmpty(jzgjbsj.ZP)) jzgjbsj.ZP = "";//��Ƭ(·��)
            if (string.IsNullOrEmpty(jzgjbsj.DQZTM)) jzgjbsj.DQZTM = "";//��ǰ״̬��   ��ְ����ǰ״̬�����
            if (string.IsNullOrEmpty(jzgjbsj.YDDH)) jzgjbsj.YDDH = "";//�ƶ��绰
            if (string.IsNullOrEmpty(jzgjbsj.GDDH)) jzgjbsj.GDDH = "";//�̶��绰
            if (string.IsNullOrEmpty(jzgjbsj.TXDZYZBM)) jzgjbsj.TXDZYZBM = "";//ͨ�ŵ�ַ��������
            if (string.IsNullOrEmpty(jzgjbsj.TXDZ)) jzgjbsj.TXDZ = "";//ͨ�ŵ�ַ
            if (string.IsNullOrEmpty(jzgjbsj.DZXX)) jzgjbsj.DZXX = "";//��������
            if (string.IsNullOrEmpty(jzgjbsj.WLDZ)) jzgjbsj.WLDZ = "";//�����ַ
            if (string.IsNullOrEmpty(jzgjbsj.JSTXH)) jzgjbsj.JSTXH = "";//��ʱͨѶ��
            EDU_ZZJG_01_01_JZGJBSJ jzgjbsj_model = db_zzjg.EDU_ZZJG_01_01_JZGJBSJ.FirstOrDefault(e => e.ID == jzgjbsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgjbsj_model != null)
            {
                jzgjbsj_model.ID = jzgjbsj.ID;//���
                jzgjbsj_model.SCHOOLID = jzgjbsj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                jzgjbsj_model.GH = jzgjbsj.GH;//����
                jzgjbsj_model.XM = jzgjbsj.XM;//����
                jzgjbsj_model.YWXM = jzgjbsj.YWXM;//Ӣ������
                jzgjbsj_model.XMPY = jzgjbsj.XMPY;//����ƴ��
                jzgjbsj_model.CYM = jzgjbsj.CYM;//������
                jzgjbsj_model.SFZJLXM = jzgjbsj.SFZJLXM;//���֤��������   ���֤�����ʹ����
                jzgjbsj_model.SFZJH = jzgjbsj.SFZJH;//���֤����
                jzgjbsj_model.CSRQ = jzgjbsj.CSRQ;//��������
                jzgjbsj_model.XBM = jzgjbsj.XBM;//�Ա���   �˵��Ա����
                jzgjbsj_model.MZM = jzgjbsj.MZM;//������   �й����������Ƶ�������ĸƴд���ʹ���
                jzgjbsj_model.XXM = jzgjbsj.XXM;//Ѫ����   Ѫ�ʹ����
                jzgjbsj_model.JKZKM = jzgjbsj.JKZKM;//����״����   ����״��1λ���ִ���
                jzgjbsj_model.HYZTM = jzgjbsj.HYZTM;//����״̬��   ����״������
                jzgjbsj_model.ZZMMM = jzgjbsj.ZZMMM;//������ò��   ������ò����
                jzgjbsj_model.GATQWM = jzgjbsj.GATQWM;//�۰�̨������   �۰�̨��������
                jzgjbsj_model.JG = jzgjbsj.JG;//����
                jzgjbsj_model.GJDQM = jzgjbsj.GJDQM;//����/������   ��������͵������ƴ���
                jzgjbsj_model.CSDXZQHM = jzgjbsj.CSDXZQHM;//����������������   �л����񹲺͹�������������
                jzgjbsj_model.XYZJM = jzgjbsj.XYZJM;//�����ڽ���   �ڽ���������
                jzgjbsj_model.JZGHKSZDXZQHM = jzgjbsj.JZGHKSZDXZQHM;//��ְ���������ڵ�����������   �л����񹲺͹�������������
                jzgjbsj_model.HKLBM = jzgjbsj.HKLBM;//���������   ����������
                jzgjbsj_model.DQZZ = jzgjbsj.DQZZ;//��ǰסַ
                jzgjbsj_model.DQZZYZBM = jzgjbsj.DQZZYZBM;//��ǰסַ��������
                jzgjbsj_model.CJGZNY = jzgjbsj.CJGZNY;//�μӹ�������
                jzgjbsj_model.CJNY = jzgjbsj.CJNY;//�ӽ�����
                jzgjbsj_model.LXNY = jzgjbsj.LXNY;//��У����
                jzgjbsj_model.BZLBM = jzgjbsj.BZLBM;//���������   �����������
                jzgjbsj_model.JZGLBM = jzgjbsj.JZGLBM;//��ְ�������   ��ְ���������
                jzgjbsj_model.GWLBM = jzgjbsj.GWLBM;//��λ�����   ��λ�������
                jzgjbsj_model.SFJZJS = jzgjbsj.SFJZJS;//�Ƿ��ְ��ʦ   �Ƿ��־�����
                jzgjbsj_model.SFSSXJS = jzgjbsj.SFSSXJS;//�Ƿ�˫ʦ�ͽ�ʦ   �Ƿ��־�����
                jzgjbsj_model.ZP = jzgjbsj.ZP;//��Ƭ(·��)
                jzgjbsj_model.DQZTM = jzgjbsj.DQZTM;//��ǰ״̬��   ��ְ����ǰ״̬�����
                jzgjbsj_model.YDDH = jzgjbsj.YDDH;//�ƶ��绰
                jzgjbsj_model.GDDH = jzgjbsj.GDDH;//�̶��绰
                jzgjbsj_model.TXDZYZBM = jzgjbsj.TXDZYZBM;//ͨ�ŵ�ַ��������
                jzgjbsj_model.TXDZ = jzgjbsj.TXDZ;//ͨ�ŵ�ַ
                jzgjbsj_model.DZXX = jzgjbsj.DZXX;//��������
                jzgjbsj_model.WLDZ = jzgjbsj.WLDZ;//�����ַ
                jzgjbsj_model.JSTXH = jzgjbsj.JSTXH;//��ʱͨѶ��
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
            ViewBag.JY_SFZJLXLst = JBLDAL.GetJY_SFZJLXSelLst();
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.JY_XXLst = JBLDAL.GetJY_XXSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_HYZZLst = GBLDAL.GetGB_HYZZSelLst();
            ViewBag.GB_ZZMMLst = GBLDAL.GetGB_ZZMMSelLst();
            ViewBag.JY_GATQWLst = JBLDAL.GetJY_GATQWSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_ZJXYLst = GBLDAL.GetGB_ZJXYSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_HKLBLst = GBLDAL.GetGB_HKLBSelLst();
            ViewBag.JY_BZLBLst = JBLDAL.GetJY_BZLBSelLst();
            ViewBag.JY_JZGLBLst = JBLDAL.GetJY_JZGLBSelLst();
            ViewBag.JY_GWLBLst = JBLDAL.GetJY_GWLBSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_JZGDQZTLst = JBLDAL.GetJY_JZGDQZTSelLst();
            
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

        /*public String Delete(String id)
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
