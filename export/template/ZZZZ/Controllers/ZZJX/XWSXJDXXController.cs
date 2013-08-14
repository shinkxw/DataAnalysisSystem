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
    public class XWSXJDXXController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_01_XWSXJDXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXwsxjdxx(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            xwsxjdxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXwsxjdxx(xwsxjdxx);
        }

        public void UpdXwsxjdxx(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            //����Ĭ��ֵ
            if (xwsxjdxx.SCHOOLID == 0) xwsxjdxx.SCHOOLID = 0;//ѧУ��ѧУID
            if (xwsxjdxx.ID == 0) xwsxjdxx.ID = 0;//��ҵ��ID
            if (string.IsNullOrEmpty(xwsxjdxx.QYBH)) xwsxjdxx.QYBH = "";//��ҵ�����ҵ��� ��ţ�ZZJX070101 ����/��������ҵע��ʱ�ı�� 
            if (string.IsNullOrEmpty(xwsxjdxx.JDHZHTBH)) xwsxjdxx.JDHZHTBH = "";//���غ�����ͬ��Ż��غ�����ͬ��� ��ţ�ZZJX070102 
            if (string.IsNullOrEmpty(xwsxjdxx.JDHZHTMC)) xwsxjdxx.JDHZHTMC = "";//���غ�����ͬ���ƻ��غ�����ͬ���� ��ţ�ZZJX070103 
            if (string.IsNullOrEmpty(xwsxjdxx.JDLBM)) xwsxjdxx.JDLBM = "";//����������������� ��ţ�ZZJX070104 ֵ�ռ䣺SXJDLBʵϰ���������� 
            if (string.IsNullOrEmpty(xwsxjdxx.DWMC)) xwsxjdxx.DWMC = "";//��λ���Ƶ�λ���� ��ţ�ZZJX070105 ����/��������ҵע��ʱ��ȫ�� 
            if (string.IsNullOrEmpty(xwsxjdxx.QYXZQ)) xwsxjdxx.QYXZQ = "";//��ҵ��������ҵ������ ��ţ�ZZJX070106 ������JCXX010106 XZQHM ���������� C 6 M GB/T2260 ѧУ���ڵ����������� NULL
            if (string.IsNullOrEmpty(xwsxjdxx.QYDZ)) xwsxjdxx.QYDZ = "";//��ҵ��ַ��ҵ��ַ ��ţ�ZZJX070107 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
            if (string.IsNullOrEmpty(xwsxjdxx.QYXZ)) xwsxjdxx.QYXZ = "";//��ҵ������ҵ���� ��ţ�ZZJX070108 ֵ�ռ䣺GB/T12402 EDU_GB_JJLXFL
            if (string.IsNullOrEmpty(xwsxjdxx.FRDB)) xwsxjdxx.FRDB = "";//���˴����˴��� ��ţ�ZZJX070109 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
            if (string.IsNullOrEmpty(xwsxjdxx.QYLXR)) xwsxjdxx.QYLXR = "";//��ҵ��ϵ����ҵ��ϵ�� ��ţ�ZZJX070110 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
            if (string.IsNullOrEmpty(xwsxjdxx.QYYZBM)) xwsxjdxx.QYYZBM = "";//��ҵ����������ҵ�������� ��ţ�ZZJX070111 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(xwsxjdxx.QYLXDH)) xwsxjdxx.QYLXDH = "";//��ҵ��ϵ�绰��ҵ��ϵ�绰 ��ţ�ZZJX070112 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
            if (string.IsNullOrEmpty(xwsxjdxx.QYYYZZ)) xwsxjdxx.QYYYZZ = "";//��ҵӪҵִ��
            if (string.IsNullOrEmpty(xwsxjdxx.QYLX)) xwsxjdxx.QYLX = "";//��ҵ���Ͷ���ʵϰ��ҵ����ϰ��ҵ����������������ѧУ
            if (xwsxjdxx.QYRS == 0) xwsxjdxx.QYRS = 0;//��ҵ����
            if (string.IsNullOrEmpty(xwsxjdxx.QYZCZJ)) xwsxjdxx.QYZCZJ = "";//��ҵע���ʽ�
            if (string.IsNullOrEmpty(xwsxjdxx.QYCZ)) xwsxjdxx.QYCZ = "";//��ҵ����
            if (string.IsNullOrEmpty(xwsxjdxx.QYFZR)) xwsxjdxx.QYFZR = "";//��ҵ������
            if (string.IsNullOrEmpty(xwsxjdxx.FZRZW)) xwsxjdxx.FZRZW = "";//������ְλ
            if (string.IsNullOrEmpty(xwsxjdxx.FZRLXDH)) xwsxjdxx.FZRLXDH = "";//��������ϵ�绰
            if (string.IsNullOrEmpty(xwsxjdxx.QYYXDZ)) xwsxjdxx.QYYXDZ = "";//��ҵ�����ַ
            if (string.IsNullOrEmpty(xwsxjdxx.QYQQ)) xwsxjdxx.QYQQ = "";//��ҵQQ
            if (string.IsNullOrEmpty(xwsxjdxx.QYMSN)) xwsxjdxx.QYMSN = "";//��ҵMSN
            if (string.IsNullOrEmpty(xwsxjdxx.QYWZ)) xwsxjdxx.QYWZ = "";//��ҵ��ַ
            if (string.IsNullOrEmpty(xwsxjdxx.QYJJ)) xwsxjdxx.QYJJ = "";//��ҵ���
            if (xwsxjdxx.SHZT == 0) xwsxjdxx.SHZT = 0;//���״̬
            EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx_model = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.FirstOrDefault(e => e.SCHOOLID == xwsxjdxx.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xwsxjdxx_model != null)
            {
                xwsxjdxx_model.SCHOOLID = xwsxjdxx.SCHOOLID;//ѧУ��ѧУID
                xwsxjdxx_model.ID = xwsxjdxx.ID;//��ҵ��ID
                xwsxjdxx_model.QYBH = xwsxjdxx.QYBH;//��ҵ�����ҵ��� ��ţ�ZZJX070101 ����/��������ҵע��ʱ�ı�� 
                xwsxjdxx_model.JDHZHTBH = xwsxjdxx.JDHZHTBH;//���غ�����ͬ��Ż��غ�����ͬ��� ��ţ�ZZJX070102 
                xwsxjdxx_model.JDHZHTMC = xwsxjdxx.JDHZHTMC;//���غ�����ͬ���ƻ��غ�����ͬ���� ��ţ�ZZJX070103 
                xwsxjdxx_model.JDLBM = xwsxjdxx.JDLBM;//����������������� ��ţ�ZZJX070104 ֵ�ռ䣺SXJDLBʵϰ���������� 
                xwsxjdxx_model.DWMC = xwsxjdxx.DWMC;//��λ���Ƶ�λ���� ��ţ�ZZJX070105 ����/��������ҵע��ʱ��ȫ�� 
                xwsxjdxx_model.QYXZQ = xwsxjdxx.QYXZQ;//��ҵ��������ҵ������ ��ţ�ZZJX070106 ������JCXX010106 XZQHM ���������� C 6 M GB/T2260 ѧУ���ڵ����������� NULL
                xwsxjdxx_model.QYDZ = xwsxjdxx.QYDZ;//��ҵ��ַ��ҵ��ַ ��ţ�ZZJX070107 ������JCTB010102 TXDZ ͨ�ŵ�ַ C 180 NULL NULL ָ����ʡ����������ֱϽ�У�/�أ��С��ݣ�/�أ������죩/�磨��/�֣��壩/���ƺŵ���ϸ��ַ NULL
                xwsxjdxx_model.QYXZ = xwsxjdxx.QYXZ;//��ҵ������ҵ���� ��ţ�ZZJX070108 ֵ�ռ䣺GB/T12402 EDU_GB_JJLXFL
                xwsxjdxx_model.FRDB = xwsxjdxx.FRDB;//���˴����˴��� ��ţ�ZZJX070109 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
                xwsxjdxx_model.QYLXR = xwsxjdxx.QYLXR;//��ҵ��ϵ����ҵ��ϵ�� ��ţ�ZZJX070110 ������JCTB020101 XM ���� C 36 NULL NULL �������񻪣������ᡤ����������ľ NULL
                xwsxjdxx_model.QYYZBM = xwsxjdxx.QYYZBM;//��ҵ����������ҵ�������� ��ţ�ZZJX070111 ������JCTB010101 YZBM �������� C 6 NULL NULL NULL NULL
                xwsxjdxx_model.QYLXDH = xwsxjdxx.QYLXDH;//��ҵ��ϵ�绰��ҵ��ϵ�绰 ��ţ�ZZJX070112 ������JCTB010103 DH �绰 C 30 NULL NULL ���绰���� NULL
                xwsxjdxx_model.QYYYZZ = xwsxjdxx.QYYYZZ;//��ҵӪҵִ��
                xwsxjdxx_model.QYLX = xwsxjdxx.QYLX;//��ҵ���Ͷ���ʵϰ��ҵ����ϰ��ҵ����������������ѧУ
                xwsxjdxx_model.QYRS = xwsxjdxx.QYRS;//��ҵ����
                xwsxjdxx_model.QYZCZJ = xwsxjdxx.QYZCZJ;//��ҵע���ʽ�
                xwsxjdxx_model.QYCZ = xwsxjdxx.QYCZ;//��ҵ����
                xwsxjdxx_model.QYFZR = xwsxjdxx.QYFZR;//��ҵ������
                xwsxjdxx_model.FZRZW = xwsxjdxx.FZRZW;//������ְλ
                xwsxjdxx_model.FZRLXDH = xwsxjdxx.FZRLXDH;//��������ϵ�绰
                xwsxjdxx_model.QYYXDZ = xwsxjdxx.QYYXDZ;//��ҵ�����ַ
                xwsxjdxx_model.QYQQ = xwsxjdxx.QYQQ;//��ҵQQ
                xwsxjdxx_model.QYMSN = xwsxjdxx.QYMSN;//��ҵMSN
                xwsxjdxx_model.QYWZ = xwsxjdxx.QYWZ;//��ҵ��ַ
                xwsxjdxx_model.QYJJ = xwsxjdxx.QYJJ;//��ҵ���
                xwsxjdxx_model.SHZT = xwsxjdxx.SHZT;//���״̬
                db_zzjx.Entry(xwsxjdxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Add(xwsxjdxx);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_01_XWSXJDXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_01_XWSXJDXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXwsxjdxx(xwsxjdxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xwsxjdxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xwsxjdxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx= db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xwsxjdxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXwsxjdxx(xwsxjdxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xwsxjdxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xwsxjdxx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Remove(xwsxjdxx);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Remove(xwsxjdxx);
                    db_zzjx.SaveChanges();
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

        private static int Max_XWSXJDXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡУ��ʵϰ������Ϣ������������ID
        public int GetMax_XWSXJDXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XWSXJDXX_ID == 0)
                {
                    EDU_ZZJX_07_01_XWSXJDXX xwsxjdxx = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.FirstOrDefault();
                    if (xwsxjdxx == null)
                    {
                        Max_XWSXJDXX_ID = 1;
                    }
                    else
                    {
                        //Max_XWSXJDXX_ID = db_zzjx.EDU_ZZJX_07_01_XWSXJDXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XWSXJDXX_ID++;
                }
                maxId = Max_XWSXJDXX_ID;
            }
            return maxId;
        }

    }
}
