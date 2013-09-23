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
    public class ZXXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_01_01_ZXXX_DISP> model = db_zxxx.VIEW_EDU_ZXXX_01_01_ZXXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZxxx(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            zxxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZxxx(zxxx);
        }

        public void UpdZxxx(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            //����Ĭ��ֵ
            if (zxxx.ID == 0) zxxx.ID = 0;//ѧУID
            if (string.IsNullOrEmpty(zxxx.XXDM)) zxxx.XXDM = "";//ѧУ����
            if (string.IsNullOrEmpty(zxxx.XXMC)) zxxx.XXMC = "";//ѧУ����
            if (string.IsNullOrEmpty(zxxx.XXYWMC)) zxxx.XXYWMC = "";//ѧУӢ������
            if (string.IsNullOrEmpty(zxxx.XXDZ)) zxxx.XXDZ = "";//ѧУ��ַ
            if (string.IsNullOrEmpty(zxxx.XXYZBM)) zxxx.XXYZBM = "";//ѧУ��������
            if (string.IsNullOrEmpty(zxxx.XZQHM)) zxxx.XZQHM = "";//����������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(zxxx.JXNY)) zxxx.JXNY = "";//��У����
            if (string.IsNullOrEmpty(zxxx.XQR)) zxxx.XQR = "";//У����
            if (string.IsNullOrEmpty(zxxx.XXBXLXM)) zxxx.XXBXLXM = "";//ѧУ��ѧ������   ��ѧ���ʹ����
            if (string.IsNullOrEmpty(zxxx.XXZGBMM)) zxxx.XXZGBMM = "";//ѧУ���ܲ�����   ѧУ�������������ٰ��ߴ����
            if (string.IsNullOrEmpty(zxxx.FDDBRH)) zxxx.FDDBRH = "";//���������˺�
            if (string.IsNullOrEmpty(zxxx.FRZSH)) zxxx.FRZSH = "";//����֤���
            if (string.IsNullOrEmpty(zxxx.XZGH)) zxxx.XZGH = "";//У������
            if (string.IsNullOrEmpty(zxxx.XZXM)) zxxx.XZXM = "";//У������
            if (string.IsNullOrEmpty(zxxx.DWFZRH)) zxxx.DWFZRH = "";//��ί�����˺�
            if (string.IsNullOrEmpty(zxxx.ZZJGM)) zxxx.ZZJGM = "";//��֯������
            if (string.IsNullOrEmpty(zxxx.LXDH)) zxxx.LXDH = "";//��ϵ�绰
            if (string.IsNullOrEmpty(zxxx.CZDH)) zxxx.CZDH = "";//����绰
            if (string.IsNullOrEmpty(zxxx.DZXX)) zxxx.DZXX = "";//��������
            if (string.IsNullOrEmpty(zxxx.ZYDZ)) zxxx.ZYDZ = "";//��ҳ��ַ
            if (string.IsNullOrEmpty(zxxx.LSYG)) zxxx.LSYG = "";//��ʷ�ظ�
            if (string.IsNullOrEmpty(zxxx.XXBBM)) zxxx.XXBBM = "";//ѧУ�����   ѧУ�������
            if (string.IsNullOrEmpty(zxxx.SSZGDWM)) zxxx.SSZGDWM = "";//�������ܵ�λ��   ѧУ�������������ٰ��ߴ����
            if (string.IsNullOrEmpty(zxxx.SZDCXLXM)) zxxx.SZDCXLXM = "";//���ڵس���������   ���ڵس������ʹ����
            if (string.IsNullOrEmpty(zxxx.SZDJJSXM)) zxxx.SZDJJSXM = "";//���ڵؾ���������   ���ڵ����������Դ����
            if (string.IsNullOrEmpty(zxxx.SZDMZSX)) zxxx.SZDMZSX = "";//���ڵ���������   �Ƿ��־�����
            if (zxxx.XXXZ == 0) zxxx.XXXZ = 0;//Сѧѧ��
            if (zxxx.XXRXNL == 0) zxxx.XXRXNL = 0;//Сѧ��ѧ����
            if (zxxx.CZXZ == 0) zxxx.CZXZ = 0;//����ѧ��
            if (zxxx.CZRXNL == 0) zxxx.CZRXNL = 0;//������ѧ����
            if (zxxx.GZXZ == 0) zxxx.GZXZ = 0;//����ѧ��
            if (string.IsNullOrEmpty(zxxx.ZJXYYM)) zxxx.ZJXYYM = "";//����ѧ������   �й����ִ���
            if (string.IsNullOrEmpty(zxxx.FJXYYM)) zxxx.FJXYYM = "";//����ѧ������   �й����ִ���
            if (string.IsNullOrEmpty(zxxx.ZSBJ)) zxxx.ZSBJ = "";//�����뾶
            EDU_ZXXX_01_01_ZXXX zxxx_model = db_zxxx.EDU_ZXXX_01_01_ZXXX.FirstOrDefault(e => e.ID == zxxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zxxx_model != null)
            {
                zxxx_model.ID = zxxx.ID;//ѧУID
                zxxx_model.XXDM = zxxx.XXDM;//ѧУ����
                zxxx_model.XXMC = zxxx.XXMC;//ѧУ����
                zxxx_model.XXYWMC = zxxx.XXYWMC;//ѧУӢ������
                zxxx_model.XXDZ = zxxx.XXDZ;//ѧУ��ַ
                zxxx_model.XXYZBM = zxxx.XXYZBM;//ѧУ��������
                zxxx_model.XZQHM = zxxx.XZQHM;//����������   �л����񹲺͹�������������
                zxxx_model.JXNY = zxxx.JXNY;//��У����
                zxxx_model.XQR = zxxx.XQR;//У����
                zxxx_model.XXBXLXM = zxxx.XXBXLXM;//ѧУ��ѧ������   ��ѧ���ʹ����
                zxxx_model.XXZGBMM = zxxx.XXZGBMM;//ѧУ���ܲ�����   ѧУ�������������ٰ��ߴ����
                zxxx_model.FDDBRH = zxxx.FDDBRH;//���������˺�
                zxxx_model.FRZSH = zxxx.FRZSH;//����֤���
                zxxx_model.XZGH = zxxx.XZGH;//У������
                zxxx_model.XZXM = zxxx.XZXM;//У������
                zxxx_model.DWFZRH = zxxx.DWFZRH;//��ί�����˺�
                zxxx_model.ZZJGM = zxxx.ZZJGM;//��֯������
                zxxx_model.LXDH = zxxx.LXDH;//��ϵ�绰
                zxxx_model.CZDH = zxxx.CZDH;//����绰
                zxxx_model.DZXX = zxxx.DZXX;//��������
                zxxx_model.ZYDZ = zxxx.ZYDZ;//��ҳ��ַ
                zxxx_model.LSYG = zxxx.LSYG;//��ʷ�ظ�
                zxxx_model.XXBBM = zxxx.XXBBM;//ѧУ�����   ѧУ�������
                zxxx_model.SSZGDWM = zxxx.SSZGDWM;//�������ܵ�λ��   ѧУ�������������ٰ��ߴ����
                zxxx_model.SZDCXLXM = zxxx.SZDCXLXM;//���ڵس���������   ���ڵس������ʹ����
                zxxx_model.SZDJJSXM = zxxx.SZDJJSXM;//���ڵؾ���������   ���ڵ����������Դ����
                zxxx_model.SZDMZSX = zxxx.SZDMZSX;//���ڵ���������   �Ƿ��־�����
                zxxx_model.XXXZ = zxxx.XXXZ;//Сѧѧ��
                zxxx_model.XXRXNL = zxxx.XXRXNL;//Сѧ��ѧ����
                zxxx_model.CZXZ = zxxx.CZXZ;//����ѧ��
                zxxx_model.CZRXNL = zxxx.CZRXNL;//������ѧ����
                zxxx_model.GZXZ = zxxx.GZXZ;//����ѧ��
                zxxx_model.ZJXYYM = zxxx.ZJXYYM;//����ѧ������   �й����ִ���
                zxxx_model.FJXYYM = zxxx.FJXYYM;//����ѧ������   �й����ִ���
                zxxx_model.ZSBJ = zxxx.ZSBJ;//�����뾶
                db_zxxx.Entry(zxxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxxx.EDU_ZXXX_01_01_ZXXX.Add(zxxx);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.JY_BXLXLst = JBLDAL.GetJY_BXLXSelLst();
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.JY_XXBBLst = JBLDAL.GetJY_XXBBSelLst();
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.JY_SZDCXLXLst = JBLDAL.GetJY_SZDCXLXSelLst();
            ViewBag.JY_SZDQJJSXLst = JBLDAL.GetJY_SZDQJJSXSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.GB_ZGYZLst = GBLDAL.GetGB_ZGYZSelLst();
            ViewBag.GB_ZGYZLst = GBLDAL.GetGB_ZGYZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_01_01_ZXXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_01_01_ZXXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZxxx(zxxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_01_01_ZXXX zxxx= db_zxxx.EDU_ZXXX_01_01_ZXXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zxxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdZxxx(zxxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXX_01_01_ZXXX zxxx = db_zxxx.EDU_ZXXX_01_01_ZXXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_01_01_ZXXX.Remove(zxxx);
                db_zxxx.SaveChanges();
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
                    EDU_ZXXX_01_01_ZXXX zxxx = db_zxxx.EDU_ZXXX_01_01_ZXXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_01_01_ZXXX.Remove(zxxx);
                    db_zxxx.SaveChanges();
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

        private static int Max_ZXXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧУ����������������ID
        public int GetMax_ZXXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZXXX_ID == 0)
                {
                    EDU_ZXXX_01_01_ZXXX zxxx = db_zxxx.EDU_ZXXX_01_01_ZXXX.FirstOrDefault();
                    if (zxxx == null)
                    {
                        Max_ZXXX_ID = 1;
                    }
                    else
                    {
                        //Max_ZXXX_ID = db_zxxx.EDU_ZXXX_01_01_ZXXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZXXX_ID++;
                }
                maxId = Max_ZXXX_ID;
            }
            return maxId;
        }

    }
}
