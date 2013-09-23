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
    public class XWSXJDXXController : JWXTController
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
            if (xwsxjdxx.SCHOOLID == 0) xwsxjdxx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xwsxjdxx.ID == 0) xwsxjdxx.ID = 0;//��ҵ��ID
            if (string.IsNullOrEmpty(xwsxjdxx.QYBH)) xwsxjdxx.QYBH = "";//��ҵ���
            if (string.IsNullOrEmpty(xwsxjdxx.JDHZHTBH)) xwsxjdxx.JDHZHTBH = "";//���غ�����ͬ���
            if (string.IsNullOrEmpty(xwsxjdxx.JDHZHTMC)) xwsxjdxx.JDHZHTMC = "";//���غ�����ͬ����
            if (string.IsNullOrEmpty(xwsxjdxx.JDLBM)) xwsxjdxx.JDLBM = "";//���������   ʵϰ����������
            if (string.IsNullOrEmpty(xwsxjdxx.DWMC)) xwsxjdxx.DWMC = "";//��λ����
            if (string.IsNullOrEmpty(xwsxjdxx.QYXZQ)) xwsxjdxx.QYXZQ = "";//��ҵ������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(xwsxjdxx.QYDZ)) xwsxjdxx.QYDZ = "";//��ҵ��ַ
            if (string.IsNullOrEmpty(xwsxjdxx.QYXZ)) xwsxjdxx.QYXZ = "";//��ҵ����   �������ͷ��������
            if (string.IsNullOrEmpty(xwsxjdxx.FRDB)) xwsxjdxx.FRDB = "";//���˴���
            if (string.IsNullOrEmpty(xwsxjdxx.QYLXR)) xwsxjdxx.QYLXR = "";//��ҵ��ϵ��
            if (string.IsNullOrEmpty(xwsxjdxx.QYYZBM)) xwsxjdxx.QYYZBM = "";//��ҵ��������
            if (string.IsNullOrEmpty(xwsxjdxx.QYLXDH)) xwsxjdxx.QYLXDH = "";//��ҵ��ϵ�绰
            if (string.IsNullOrEmpty(xwsxjdxx.QYYYZZ)) xwsxjdxx.QYYYZZ = "";//��ҵӪҵִ��
            if (string.IsNullOrEmpty(xwsxjdxx.QYLX)) xwsxjdxx.QYLX = "";//��ҵ����
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
                xwsxjdxx_model.SCHOOLID = xwsxjdxx.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xwsxjdxx_model.ID = xwsxjdxx.ID;//��ҵ��ID
                xwsxjdxx_model.QYBH = xwsxjdxx.QYBH;//��ҵ���
                xwsxjdxx_model.JDHZHTBH = xwsxjdxx.JDHZHTBH;//���غ�����ͬ���
                xwsxjdxx_model.JDHZHTMC = xwsxjdxx.JDHZHTMC;//���غ�����ͬ����
                xwsxjdxx_model.JDLBM = xwsxjdxx.JDLBM;//���������   ʵϰ����������
                xwsxjdxx_model.DWMC = xwsxjdxx.DWMC;//��λ����
                xwsxjdxx_model.QYXZQ = xwsxjdxx.QYXZQ;//��ҵ������   �л����񹲺͹�������������
                xwsxjdxx_model.QYDZ = xwsxjdxx.QYDZ;//��ҵ��ַ
                xwsxjdxx_model.QYXZ = xwsxjdxx.QYXZ;//��ҵ����   �������ͷ��������
                xwsxjdxx_model.FRDB = xwsxjdxx.FRDB;//���˴���
                xwsxjdxx_model.QYLXR = xwsxjdxx.QYLXR;//��ҵ��ϵ��
                xwsxjdxx_model.QYYZBM = xwsxjdxx.QYYZBM;//��ҵ��������
                xwsxjdxx_model.QYLXDH = xwsxjdxx.QYLXDH;//��ҵ��ϵ�绰
                xwsxjdxx_model.QYYYZZ = xwsxjdxx.QYYYZZ;//��ҵӪҵִ��
                xwsxjdxx_model.QYLX = xwsxjdxx.QYLX;//��ҵ����
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
            ViewBag.ZZ_SXJDLBLst = ZZBLDAL.GetZZ_SXJDLBSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_JJLXFLLst = GBLDAL.GetGB_JJLXFLSelLst();
            
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

        /*public String Delete(String id)
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
