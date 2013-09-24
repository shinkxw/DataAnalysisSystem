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
    public class ZZXXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXX_01_01_ZZXX_DISP> model = db_zzxx.VIEW_EDU_ZZXX_01_01_ZZXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzxx(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            zzxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzxx(zzxx);
        }

        public void UpdZzxx(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            //����Ĭ��ֵ
            if (zzxx.ID == 0) zzxx.ID = 0;//���
            if (string.IsNullOrEmpty(zzxx.XXDM)) zzxx.XXDM = "";//ѧУ����
            if (string.IsNullOrEmpty(zzxx.XXMC)) zzxx.XXMC = "";//ѧУ����
            if (string.IsNullOrEmpty(zzxx.XXYWMC)) zzxx.XXYWMC = "";//ѧУӢ������
            if (string.IsNullOrEmpty(zzxx.XXJBZM)) zzxx.XXJBZM = "";//ѧУ�ٰ�����   ѧУ�������������ٰ��ߴ����
            if (string.IsNullOrEmpty(zzxx.XXZGBMM)) zzxx.XXZGBMM = "";//ѧУ���ܲ�����   ѧУ�������������ٰ��ߴ����
            if (string.IsNullOrEmpty(zzxx.XXDZ)) zzxx.XXDZ = "";//ѧУ��ַ
            if (string.IsNullOrEmpty(zzxx.XXYZBM)) zzxx.XXYZBM = "";//ѧУ��������
            if (string.IsNullOrEmpty(zzxx.XZQHM)) zzxx.XZQHM = "";//����������   �л����񹲺͹�������������
            if (string.IsNullOrEmpty(zzxx.JXNY)) zzxx.JXNY = "";//��У����
            if (string.IsNullOrEmpty(zzxx.XQR)) zzxx.XQR = "";//У����
            if (string.IsNullOrEmpty(zzxx.CLBJ)) zzxx.CLBJ = "";//��������
            if (string.IsNullOrEmpty(zzxx.LSYG)) zzxx.LSYG = "";//��ʷ�ظ�
            if (zzxx.XXXQS == 0) zzxx.XXXQS = 0;//ѧУУ����
            if (string.IsNullOrEmpty(zzxx.XXPGLX)) zzxx.XXPGLX = "";//ѧУ��������   �����������
            if (string.IsNullOrEmpty(zzxx.XXPGQKSM)) zzxx.XXPGQKSM = "";//ѧУ�������˵��
            if (string.IsNullOrEmpty(zzxx.ZYDZ)) zzxx.ZYDZ = "";//��ҳ��ַ
            if (string.IsNullOrEmpty(zzxx.FDDBRH)) zzxx.FDDBRH = "";//���������˺�
            if (string.IsNullOrEmpty(zzxx.FRZSH)) zzxx.FRZSH = "";//����֤���
            if (string.IsNullOrEmpty(zzxx.LXDH)) zzxx.LXDH = "";//��ϵ�绰
            if (string.IsNullOrEmpty(zzxx.CZDH)) zzxx.CZDH = "";//����绰
            if (string.IsNullOrEmpty(zzxx.DZXX)) zzxx.DZXX = "";//��������
            EDU_ZZXX_01_01_ZZXX zzxx_model = db_zzxx.EDU_ZZXX_01_01_ZZXX.FirstOrDefault(e => e.ID == zzxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzxx_model != null)
            {
                zzxx_model.ID = zzxx.ID;//���
                zzxx_model.XXDM = zzxx.XXDM;//ѧУ����
                zzxx_model.XXMC = zzxx.XXMC;//ѧУ����
                zzxx_model.XXYWMC = zzxx.XXYWMC;//ѧУӢ������
                zzxx_model.XXJBZM = zzxx.XXJBZM;//ѧУ�ٰ�����   ѧУ�������������ٰ��ߴ����
                zzxx_model.XXZGBMM = zzxx.XXZGBMM;//ѧУ���ܲ�����   ѧУ�������������ٰ��ߴ����
                zzxx_model.XXDZ = zzxx.XXDZ;//ѧУ��ַ
                zzxx_model.XXYZBM = zzxx.XXYZBM;//ѧУ��������
                zzxx_model.XZQHM = zzxx.XZQHM;//����������   �л����񹲺͹�������������
                zzxx_model.JXNY = zzxx.JXNY;//��У����
                zzxx_model.XQR = zzxx.XQR;//У����
                zzxx_model.CLBJ = zzxx.CLBJ;//��������
                zzxx_model.LSYG = zzxx.LSYG;//��ʷ�ظ�
                zzxx_model.XXXQS = zzxx.XXXQS;//ѧУУ����
                zzxx_model.XXPGLX = zzxx.XXPGLX;//ѧУ��������   �����������
                zzxx_model.XXPGQKSM = zzxx.XXPGQKSM;//ѧУ�������˵��
                zzxx_model.ZYDZ = zzxx.ZYDZ;//��ҳ��ַ
                zzxx_model.FDDBRH = zzxx.FDDBRH;//���������˺�
                zzxx_model.FRZSH = zzxx.FRZSH;//����֤���
                zzxx_model.LXDH = zzxx.LXDH;//��ϵ�绰
                zzxx_model.CZDH = zzxx.CZDH;//����绰
                zzxx_model.DZXX = zzxx.DZXX;//��������
                db_zzxx.Entry(zzxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxx.EDU_ZZXX_01_01_ZZXX.Add(zzxx);
            }
            db_zzxx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.ZZ_PGQKLst = ZZBLDAL.GetZZ_PGQKSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXX_01_01_ZZXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXX_01_01_ZZXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzxx(zzxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXX_01_01_ZZXX zzxx= db_zzxx.EDU_ZZXX_01_01_ZZXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXX_01_01_ZZXX zzxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzxx(zzxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZXX_01_01_ZZXX zzxx = db_zzxx.EDU_ZZXX_01_01_ZZXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxx.EDU_ZZXX_01_01_ZZXX.Remove(zzxx);
                db_zzxx.SaveChanges();
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
                    EDU_ZZXX_01_01_ZZXX zzxx = db_zzxx.EDU_ZZXX_01_01_ZZXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxx.EDU_ZZXX_01_01_ZZXX.Remove(zzxx);
                    db_zzxx.SaveChanges();
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

        private static int Max_ZZXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧУ�������ݱ����ID
        public int GetMax_ZZXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZXX_ID == 0)
                {
                    EDU_ZZXX_01_01_ZZXX zzxx = db_zzxx.EDU_ZZXX_01_01_ZZXX.FirstOrDefault();
                    if (zzxx == null)
                    {
                        Max_ZZXX_ID = 1;
                    }
                    else
                    {
                        //Max_ZZXX_ID = db_zzxx.EDU_ZZXX_01_01_ZZXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZXX_ID++;
                }
                maxId = Max_ZZXX_ID;
            }
            return maxId;
        }

    }
}
