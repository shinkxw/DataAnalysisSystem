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
    public class XSXXController : XGXTController
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
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//ѧУ��ѧУID
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//ѧ��
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//����
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//Ӣ������
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//����ƴ��
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//������
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//�Ա���GB/T2261.1
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//���������磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//��������GB/T2260
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//����
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//������GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ���
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//����/������GB/T2659 ��������ĸ���룬�磺CHN�й���USA����
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//���֤��������JY/T1001SFZJLX���֤�����ʹ���
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//���֤����
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//����״������Сѧ������д
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//�۰�̨������
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//������ò��ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//����״�������1λ���ִ��� NULL
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//�����ڽ���
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//Ѫ����
            if (string.IsNullOrEmpty(xsxx.ZP)) xsxx.ZP = "";//��Ƭ
            if (string.IsNullOrEmpty(xsxx.SFZJYXQ)) xsxx.SFZJYXQ = "";//���֤����Ч�ڸ�ʽ��YYYYMMDD-YYYYMMDD
            if (string.IsNullOrEmpty(xsxx.DSZYBZ)) xsxx.DSZYBZ = "";//������Ů��־����/������1�Ƕ�����Ů0���Ƕ�����Ů
            if (string.IsNullOrEmpty(xsxx.RXNY)) xsxx.RXNY = "";//��ѧ����
            if (string.IsNullOrEmpty(xsxx.NJ)) xsxx.NJ = "";//�꼶
            if (string.IsNullOrEmpty(xsxx.BH)) xsxx.BH = "";//���
            if (string.IsNullOrEmpty(xsxx.XSLBM)) xsxx.XSLBM = "";//ѧ�������ֵ�ռ䣺JY/T1001XSLBѧ�������� 
            if (string.IsNullOrEmpty(xsxx.XZZ)) xsxx.XZZ = "";//��סַ����/������ָ���˵ĳ�ס��ַ
            if (string.IsNullOrEmpty(xsxx.HKSZD)) xsxx.HKSZD = "";//�������ڵؽ���/������ָ�������ڵ�ַ
            if (string.IsNullOrEmpty(xsxx.HKXZM)) xsxx.HKXZM = "";//����������ֵ�ռ䣺GA324.1 ����/������ָ������������ȷ�ϵ�ũҵ���ڻ��ũҵ���� 
            if (string.IsNullOrEmpty(xsxx.SFLDRK)) xsxx.SFLDRK = "";//�Ƿ������˿�ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(xsxx.TC)) xsxx.TC = "";//�س��س� ��ţ�ZXXS010108 ����/������ָĳһ����������������� 
            if (string.IsNullOrEmpty(xsxx.LXDH)) xsxx.LXDH = "";//��ϵ�绰���˵���ϵ�绰����
            if (string.IsNullOrEmpty(xsxx.TXDZ)) xsxx.TXDZ = "";//ͨ�ŵ�ַ
            if (string.IsNullOrEmpty(xsxx.YZBM)) xsxx.YZBM = "";//��������
            if (string.IsNullOrEmpty(xsxx.DZXX)) xsxx.DZXX = "";//��������ѧ���ڻ������ϵĵ����ʼ������ַ
            if (string.IsNullOrEmpty(xsxx.ZYDZ)) xsxx.ZYDZ = "";//��ҳ��ַѧ���ڻ������ϵĸ�����ҳ��ַ
            if (string.IsNullOrEmpty(xsxx.XJH)) xsxx.XJH = "";//ѧ����ȫ��Ψһ��ѧ����
            EDU_ZXXS_01_01_XSXX xsxx_model = db_zxxs.EDU_ZXXS_01_01_XSXX.FirstOrDefault(e => e.ID == xsxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxx_model != null)
            {
                xsxx_model.ID = xsxx.ID;//���
                xsxx_model.SCHOOLID = xsxx.SCHOOLID;//ѧУ��ѧУID
                xsxx_model.XH = xsxx.XH;//ѧ��
                xsxx_model.XM = xsxx.XM;//����
                xsxx_model.YWXM = xsxx.YWXM;//Ӣ������
                xsxx_model.XMPY = xsxx.XMPY;//����ƴ��
                xsxx_model.CYM = xsxx.CYM;//������
                xsxx_model.XBM = xsxx.XBM;//�Ա���GB/T2261.1
                xsxx_model.CSRQ = xsxx.CSRQ;//���������磺20060412��ʾ2006��4��12��
                xsxx_model.CSDM = xsxx.CSDM;//��������GB/T2260
                xsxx_model.JG = xsxx.JG;//����
                xsxx_model.MZM = xsxx.MZM;//������GB/T3304 ȡ��2λ���ִ��룬�磺01���壬02�ɹ���
                xsxx_model.GJDQM = xsxx.GJDQM;//����/������GB/T2659 ��������ĸ���룬�磺CHN�й���USA����
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//���֤��������JY/T1001SFZJLX���֤�����ʹ���
                xsxx_model.SFZJH = xsxx.SFZJH;//���֤����
                xsxx_model.HYZKM = xsxx.HYZKM;//����״������Сѧ������д
                xsxx_model.GATQWM = xsxx.GATQWM;//�۰�̨������
                xsxx_model.ZZMMM = xsxx.ZZMMM;//������ò��ɲ��ü�ƣ��磺01�й���Ա��04����Ա NULL
                xsxx_model.JKZKM = xsxx.JKZKM;//����״�������1λ���ִ��� NULL
                xsxx_model.XYZJM = xsxx.XYZJM;//�����ڽ���
                xsxx_model.XXM = xsxx.XXM;//Ѫ����
                xsxx_model.ZP = xsxx.ZP;//��Ƭ
                xsxx_model.SFZJYXQ = xsxx.SFZJYXQ;//���֤����Ч�ڸ�ʽ��YYYYMMDD-YYYYMMDD
                xsxx_model.DSZYBZ = xsxx.DSZYBZ;//������Ů��־����/������1�Ƕ�����Ů0���Ƕ�����Ů
                xsxx_model.RXNY = xsxx.RXNY;//��ѧ����
                xsxx_model.NJ = xsxx.NJ;//�꼶
                xsxx_model.BH = xsxx.BH;//���
                xsxx_model.XSLBM = xsxx.XSLBM;//ѧ�������ֵ�ռ䣺JY/T1001XSLBѧ�������� 
                xsxx_model.XZZ = xsxx.XZZ;//��סַ����/������ָ���˵ĳ�ס��ַ
                xsxx_model.HKSZD = xsxx.HKSZD;//�������ڵؽ���/������ָ�������ڵ�ַ
                xsxx_model.HKXZM = xsxx.HKXZM;//����������ֵ�ռ䣺GA324.1 ����/������ָ������������ȷ�ϵ�ũҵ���ڻ��ũҵ���� 
                xsxx_model.SFLDRK = xsxx.SFLDRK;//�Ƿ������˿�ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                xsxx_model.TC = xsxx.TC;//�س��س� ��ţ�ZXXS010108 ����/������ָĳһ����������������� 
                xsxx_model.LXDH = xsxx.LXDH;//��ϵ�绰���˵���ϵ�绰����
                xsxx_model.TXDZ = xsxx.TXDZ;//ͨ�ŵ�ַ
                xsxx_model.YZBM = xsxx.YZBM;//��������
                xsxx_model.DZXX = xsxx.DZXX;//��������ѧ���ڻ������ϵĵ����ʼ������ַ
                xsxx_model.ZYDZ = xsxx.ZYDZ;//��ҳ��ַѧ���ڻ������ϵĸ�����ҳ��ַ
                xsxx_model.XJH = xsxx.XJH;//ѧ����ȫ��Ψһ��ѧ����
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
            //ViewBag.
            
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
