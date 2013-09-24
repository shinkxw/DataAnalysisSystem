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
    public class XSXXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_01_01_XSXX_DISP> model = db_zzxs.VIEW_EDU_ZZXS_01_01_XSXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsxx(EDU_ZZXS_01_01_XSXX xsxx)
        {
            xsxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsxx(xsxx);
        }

        public void UpdXsxx(EDU_ZZXS_01_01_XSXX xsxx)
        {
            //����Ĭ��ֵ
            if (xsxx.ID == 0) xsxx.ID = 0;//���
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//ѧ��
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//����
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//Ӣ������
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//����ƴ��
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//������
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//���֤��������   ���֤�����ʹ����
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//���֤����
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//�Ա���   �˵��Ա����
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//Ѫ����   Ѫ�ʹ����
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//��������
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//��������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//����
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//������   �й����������Ƶ�������ĸƴд���ʹ���
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//����״����   ����״������
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//�����ڽ���   �ڽ���������
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//�۰�̨������   �۰�̨��������
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//����״����   ����״��1λ���ִ���
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//������ò��   ������ò����
            if (string.IsNullOrEmpty(xsxx.HKSZDXZQHM)) xsxx.HKSZDXZQHM = "";//�������ڵ�����������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(xsxx.HKLBM)) xsxx.HKLBM = "";//���������   ����������
            if (string.IsNullOrEmpty(xsxx.SFSLDRK)) xsxx.SFSLDRK = "";//�Ƿ��������˿�   �Ƿ��־�����
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//����/����   ��������͵������ƴ���
            if (string.IsNullOrEmpty(xsxx.TC)) xsxx.TC = "";//�س�
            if (string.IsNullOrEmpty(xsxx.XSLXDH)) xsxx.XSLXDH = "";//ѧ����ϵ�绰
            if (string.IsNullOrEmpty(xsxx.WLDZ)) xsxx.WLDZ = "";//�����ַ
            if (string.IsNullOrEmpty(xsxx.JSTXH)) xsxx.JSTXH = "";//��ʱͨѶ��
            if (string.IsNullOrEmpty(xsxx.DZXX)) xsxx.DZXX = "";//��������
            if (string.IsNullOrEmpty(xsxx.ZP)) xsxx.ZP = "";//��Ƭ(·��)
            EDU_ZZXS_01_01_XSXX xsxx_model = db_zzxs.EDU_ZZXS_01_01_XSXX.FirstOrDefault(e => e.ID == xsxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxx_model != null)
            {
                xsxx_model.ID = xsxx.ID;//���
                xsxx_model.SCHOOLID = xsxx.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xsxx_model.XH = xsxx.XH;//ѧ��
                xsxx_model.XM = xsxx.XM;//����
                xsxx_model.YWXM = xsxx.YWXM;//Ӣ������
                xsxx_model.XMPY = xsxx.XMPY;//����ƴ��
                xsxx_model.CYM = xsxx.CYM;//������
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//���֤��������   ���֤�����ʹ����
                xsxx_model.SFZJH = xsxx.SFZJH;//���֤����
                xsxx_model.XBM = xsxx.XBM;//�Ա���   �˵��Ա����
                xsxx_model.XXM = xsxx.XXM;//Ѫ����   Ѫ�ʹ����
                xsxx_model.CSRQ = xsxx.CSRQ;//��������
                xsxx_model.CSDM = xsxx.CSDM;//��������   �л����񹲺͹�������������
                xsxx_model.JG = xsxx.JG;//����
                xsxx_model.MZM = xsxx.MZM;//������   �й����������Ƶ�������ĸƴд���ʹ���
                xsxx_model.HYZKM = xsxx.HYZKM;//����״����   ����״������
                xsxx_model.XYZJM = xsxx.XYZJM;//�����ڽ���   �ڽ���������
                xsxx_model.GATQWM = xsxx.GATQWM;//�۰�̨������   �۰�̨��������
                xsxx_model.JKZKM = xsxx.JKZKM;//����״����   ����״��1λ���ִ���
                xsxx_model.ZZMMM = xsxx.ZZMMM;//������ò��   ������ò����
                xsxx_model.HKSZDXZQHM = xsxx.HKSZDXZQHM;//�������ڵ�����������   �л����񹲺͹�������������
                xsxx_model.HKLBM = xsxx.HKLBM;//���������   ����������
                xsxx_model.SFSLDRK = xsxx.SFSLDRK;//�Ƿ��������˿�   �Ƿ��־�����
                xsxx_model.GJDQM = xsxx.GJDQM;//����/����   ��������͵������ƴ���
                xsxx_model.TC = xsxx.TC;//�س�
                xsxx_model.XSLXDH = xsxx.XSLXDH;//ѧ����ϵ�绰
                xsxx_model.WLDZ = xsxx.WLDZ;//�����ַ
                xsxx_model.JSTXH = xsxx.JSTXH;//��ʱͨѶ��
                xsxx_model.DZXX = xsxx.DZXX;//��������
                xsxx_model.ZP = xsxx.ZP;//��Ƭ(·��)
                db_zzxs.Entry(xsxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_01_01_XSXX.Add(xsxx);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFZJLXLst = JBLDAL.GetJY_SFZJLXSelLst();
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.JY_XXLst = JBLDAL.GetJY_XXSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.GB_HYZZLst = GBLDAL.GetGB_HYZZSelLst();
            ViewBag.GB_ZJXYLst = GBLDAL.GetGB_ZJXYSelLst();
            ViewBag.JY_GATQWLst = JBLDAL.GetJY_GATQWSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_ZZMMLst = GBLDAL.GetGB_ZZMMSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_HKLBLst = GBLDAL.GetGB_HKLBSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_01_01_XSXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_01_01_XSXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_01_01_XSXX xsxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsxx(xsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_01_01_XSXX xsxx= db_zzxs.EDU_ZZXS_01_01_XSXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_01_01_XSXX xsxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsxx(xsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_01_01_XSXX.Remove(xsxx);
                db_zzxs.SaveChanges();
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
                    EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_01_01_XSXX.Remove(xsxx);
                    db_zzxs.SaveChanges();
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

        private static int Max_XSXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ����Ϣ���ݱ����ID
        public int GetMax_XSXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSXX_ID == 0)
                {
                    EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.FirstOrDefault();
                    if (xsxx == null)
                    {
                        Max_XSXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSXX_ID = db_zzxs.EDU_ZZXS_01_01_XSXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSXX_ID++;
                }
                maxId = Max_XSXX_ID;
            }
            return maxId;
        }

    }
}
