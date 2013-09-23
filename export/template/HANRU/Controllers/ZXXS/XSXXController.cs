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
    public class XSXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXS_01_01_XSXX_DISP> model = db_zxxs.VIEW_EDU_ZXXS_01_01_XSXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsxx(EDU_ZXXS_01_01_XSXX xsxx)
        {
            xsxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsxx(xsxx);
        }

        public void UpdXsxx(EDU_ZXXS_01_01_XSXX xsxx)
        {
            //����Ĭ��ֵ
            if (xsxx.ID == 0) xsxx.ID = 0;//���
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//ѧ��
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//����
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//Ӣ������
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//����ƴ��
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//������
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//�Ա���   �˵��Ա����
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//��������
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//��������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//����
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//������   �й����������Ƶ�������ĸƴд���ʹ���
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//����/������   ��������͵������ƴ���
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//���֤��������   ���֤�����ʹ����
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//���֤����
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//����״����   ����״������
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//�۰�̨������   �۰�̨��������
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//������ò��   ������ò����
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//����״����   ����״��1λ���ִ���
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//�����ڽ���   �ڽ���������
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//Ѫ����   Ѫ�ʹ����
            if (string.IsNullOrEmpty(xsxx.ZP)) xsxx.ZP = "";//��Ƭ
            if (string.IsNullOrEmpty(xsxx.SFZJYXQ)) xsxx.SFZJYXQ = "";//���֤����Ч��
            if (string.IsNullOrEmpty(xsxx.DSZYBZ)) xsxx.DSZYBZ = "";//������Ů��־   �Ƿ��־�����
            if (string.IsNullOrEmpty(xsxx.RXNY)) xsxx.RXNY = "";//��ѧ����
            if (string.IsNullOrEmpty(xsxx.NJ)) xsxx.NJ = "";//�꼶   �꼶�������
            if (string.IsNullOrEmpty(xsxx.BH)) xsxx.BH = "";//���   �༶�������
            if (string.IsNullOrEmpty(xsxx.XSLBM)) xsxx.XSLBM = "";//ѧ�������   ѧ���������
            if (string.IsNullOrEmpty(xsxx.XZZ)) xsxx.XZZ = "";//��סַ
            if (string.IsNullOrEmpty(xsxx.HKSZD)) xsxx.HKSZD = "";//�������ڵ�
            if (string.IsNullOrEmpty(xsxx.HKXZM)) xsxx.HKXZM = "";//����������   ����������
            if (string.IsNullOrEmpty(xsxx.SFLDRK)) xsxx.SFLDRK = "";//�Ƿ������˿�   �Ƿ��־�����
            if (string.IsNullOrEmpty(xsxx.TC)) xsxx.TC = "";//�س�
            if (string.IsNullOrEmpty(xsxx.LXDH)) xsxx.LXDH = "";//��ϵ�绰
            if (string.IsNullOrEmpty(xsxx.TXDZ)) xsxx.TXDZ = "";//ͨ�ŵ�ַ
            if (string.IsNullOrEmpty(xsxx.YZBM)) xsxx.YZBM = "";//��������
            if (string.IsNullOrEmpty(xsxx.DZXX)) xsxx.DZXX = "";//��������
            if (string.IsNullOrEmpty(xsxx.ZYDZ)) xsxx.ZYDZ = "";//��ҳ��ַ
            if (string.IsNullOrEmpty(xsxx.XJH)) xsxx.XJH = "";//ѧ����
            EDU_ZXXS_01_01_XSXX xsxx_model = db_zxxs.EDU_ZXXS_01_01_XSXX.FirstOrDefault(e => e.ID == xsxx.ID
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
                xsxx_model.XBM = xsxx.XBM;//�Ա���   �˵��Ա����
                xsxx_model.CSRQ = xsxx.CSRQ;//��������
                xsxx_model.CSDM = xsxx.CSDM;//��������   �л����񹲺͹�������������
                xsxx_model.JG = xsxx.JG;//����
                xsxx_model.MZM = xsxx.MZM;//������   �й����������Ƶ�������ĸƴд���ʹ���
                xsxx_model.GJDQM = xsxx.GJDQM;//����/������   ��������͵������ƴ���
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//���֤��������   ���֤�����ʹ����
                xsxx_model.SFZJH = xsxx.SFZJH;//���֤����
                xsxx_model.HYZKM = xsxx.HYZKM;//����״����   ����״������
                xsxx_model.GATQWM = xsxx.GATQWM;//�۰�̨������   �۰�̨��������
                xsxx_model.ZZMMM = xsxx.ZZMMM;//������ò��   ������ò����
                xsxx_model.JKZKM = xsxx.JKZKM;//����״����   ����״��1λ���ִ���
                xsxx_model.XYZJM = xsxx.XYZJM;//�����ڽ���   �ڽ���������
                xsxx_model.XXM = xsxx.XXM;//Ѫ����   Ѫ�ʹ����
                xsxx_model.ZP = xsxx.ZP;//��Ƭ
                xsxx_model.SFZJYXQ = xsxx.SFZJYXQ;//���֤����Ч��
                xsxx_model.DSZYBZ = xsxx.DSZYBZ;//������Ů��־   �Ƿ��־�����
                xsxx_model.RXNY = xsxx.RXNY;//��ѧ����
                xsxx_model.NJ = xsxx.NJ;//�꼶   �꼶�������
                xsxx_model.BH = xsxx.BH;//���   �༶�������
                xsxx_model.XSLBM = xsxx.XSLBM;//ѧ�������   ѧ���������
                xsxx_model.XZZ = xsxx.XZZ;//��סַ
                xsxx_model.HKSZD = xsxx.HKSZD;//�������ڵ�
                xsxx_model.HKXZM = xsxx.HKXZM;//����������   ����������
                xsxx_model.SFLDRK = xsxx.SFLDRK;//�Ƿ������˿�   �Ƿ��־�����
                xsxx_model.TC = xsxx.TC;//�س�
                xsxx_model.LXDH = xsxx.LXDH;//��ϵ�绰
                xsxx_model.TXDZ = xsxx.TXDZ;//ͨ�ŵ�ַ
                xsxx_model.YZBM = xsxx.YZBM;//��������
                xsxx_model.DZXX = xsxx.DZXX;//��������
                xsxx_model.ZYDZ = xsxx.ZYDZ;//��ҳ��ַ
                xsxx_model.XJH = xsxx.XJH;//ѧ����
                db_zxxs.Entry(xsxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxxs.EDU_ZXXS_01_01_XSXX.Add(xsxx);
            }
            db_zxxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_ZGGMZMCDLMZMPXFLst = GBLDAL.GetGB_ZGGMZMCDLMZMPXFSelLst();
            ViewBag.GB_SJGGHDQMCLst = GBLDAL.GetGB_SJGGHDQMCSelLst();
            ViewBag.JY_SFZJLXLst = JBLDAL.GetJY_SFZJLXSelLst();
            ViewBag.GB_HYZZLst = GBLDAL.GetGB_HYZZSelLst();
            ViewBag.JY_GATQWLst = JBLDAL.GetJY_GATQWSelLst();
            ViewBag.GB_ZZMMLst = GBLDAL.GetGB_ZZMMSelLst();
            ViewBag.GB_JKZKYWSZLst = GBLDAL.GetGB_JKZKYWSZSelLst();
            ViewBag.GB_ZJXYLst = GBLDAL.GetGB_ZJXYSelLst();
            ViewBag.JY_XXLst = JBLDAL.GetJY_XXSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.JY_XSLBLst = JBLDAL.GetJY_XSLBSelLst();
            ViewBag.GB_HKLBLst = GBLDAL.GetGB_HKLBSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXS_01_01_XSXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXS_01_01_XSXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXS_01_01_XSXX xsxx)
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
            
            EDU_ZXXS_01_01_XSXX xsxx= db_zxxs.EDU_ZXXS_01_01_XSXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXS_01_01_XSXX xsxx)
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

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXS_01_01_XSXX xsxx = db_zxxs.EDU_ZXXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxs.EDU_ZXXS_01_01_XSXX.Remove(xsxx);
                db_zxxs.SaveChanges();
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
                    EDU_ZXXS_01_01_XSXX xsxx = db_zxxs.EDU_ZXXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxs.EDU_ZXXS_01_01_XSXX.Remove(xsxx);
                    db_zxxs.SaveChanges();
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

        private static int Max_XSXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ������������������ID
        public int GetMax_XSXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSXX_ID == 0)
                {
                    EDU_ZXXS_01_01_XSXX xsxx = db_zxxs.EDU_ZXXS_01_01_XSXX.FirstOrDefault();
                    if (xsxx == null)
                    {
                        Max_XSXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSXX_ID = db_zxxs.EDU_ZXXS_01_01_XSXX.Max(e => e.ID) + 1;
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
