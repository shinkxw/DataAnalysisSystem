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
    public class XJYDController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_07_02_XJYD_DISP> model = db_zzxs.VIEW_EDU_ZZXS_07_02_XJYD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXjyd(EDU_ZZXS_07_02_XJYD xjyd)
        {
            xjyd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXjyd(xjyd);
        }

        public void UpdXjyd(EDU_ZZXS_07_02_XJYD xjyd)
        {
            //����Ĭ��ֵ
            if (xjyd.ID == 0) xjyd.ID = 0;//ѧ���춯����
            if (xjyd.XSXXID == 0) xjyd.XSXXID = 0;//ѧ��ID   ѧ����Ϣ���ݱ�
            if (xjyd.SCHOOLID == 0) xjyd.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(xjyd.YDLBM)) xjyd.YDLBM = "";//�춯�����   ѧ���춯�������
            if (string.IsNullOrEmpty(xjyd.YDRQ)) xjyd.YDRQ = "";//�춯����
            if (string.IsNullOrEmpty(xjyd.YDYYM)) xjyd.YDYYM = "";//�춯ԭ����   ѧ���춯ԭ������
            if (string.IsNullOrEmpty(xjyd.SPRQ)) xjyd.SPRQ = "";//��������
            if (string.IsNullOrEmpty(xjyd.SPWH)) xjyd.SPWH = "";//�����ĺ�
            if (xjyd.JBRID == 0) xjyd.JBRID = 0;//������ID   ��ְ���������������
            if (string.IsNullOrEmpty(xjyd.JBRGH)) xjyd.JBRGH = "";//�����˹���
            if (string.IsNullOrEmpty(xjyd.YDLYXXM)) xjyd.YDLYXXM = "";//�춯��ԴѧУ��
            if (string.IsNullOrEmpty(xjyd.YDQXXXM)) xjyd.YDQXXXM = "";//�춯ȥ��ѧУ��
            if (string.IsNullOrEmpty(xjyd.YDSM)) xjyd.YDSM = "";//�춯˵��
            if (string.IsNullOrEmpty(xjyd.YZYM)) xjyd.YZYM = "";//ԭרҵ��
            if (xjyd.YZYID == 0) xjyd.YZYID = 0;//ԭרҵID   רҵ������Ϣ���ݱ�
            if (string.IsNullOrEmpty(xjyd.YBH)) xjyd.YBH = "";//ԭ���   ѧУ�༶���ݱ�
            if (string.IsNullOrEmpty(xjyd.YNJ)) xjyd.YNJ = "";//ԭ�꼶   ѧУ�꼶���ݱ�
            if (string.IsNullOrEmpty(xjyd.XZYM)) xjyd.XZYM = "";//��רҵ��
            if (xjyd.XZYID == 0) xjyd.XZYID = 0;//��רҵID   רҵ������Ϣ���ݱ�
            if (string.IsNullOrEmpty(xjyd.XBH)) xjyd.XBH = "";//�ְ��   ѧУ�༶���ݱ�
            if (string.IsNullOrEmpty(xjyd.XNJ)) xjyd.XNJ = "";//���꼶   ѧУ�꼶���ݱ�
            EDU_ZZXS_07_02_XJYD xjyd_model = db_zzxs.EDU_ZZXS_07_02_XJYD.FirstOrDefault(e => e.ID == xjyd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xjyd_model != null)
            {
                xjyd_model.ID = xjyd.ID;//ѧ���춯����
                xjyd_model.XSXXID = xjyd.XSXXID;//ѧ��ID   ѧ����Ϣ���ݱ�
                xjyd_model.SCHOOLID = xjyd.SCHOOLID;//ѧУID   ѧУ���ñ�
                xjyd_model.YDLBM = xjyd.YDLBM;//�춯�����   ѧ���춯�������
                xjyd_model.YDRQ = xjyd.YDRQ;//�춯����
                xjyd_model.YDYYM = xjyd.YDYYM;//�춯ԭ����   ѧ���춯ԭ������
                xjyd_model.SPRQ = xjyd.SPRQ;//��������
                xjyd_model.SPWH = xjyd.SPWH;//�����ĺ�
                xjyd_model.JBRID = xjyd.JBRID;//������ID   ��ְ���������������
                xjyd_model.JBRGH = xjyd.JBRGH;//�����˹���
                xjyd_model.YDLYXXM = xjyd.YDLYXXM;//�춯��ԴѧУ��
                xjyd_model.YDQXXXM = xjyd.YDQXXXM;//�춯ȥ��ѧУ��
                xjyd_model.YDSM = xjyd.YDSM;//�춯˵��
                xjyd_model.YZYM = xjyd.YZYM;//ԭרҵ��
                xjyd_model.YZYID = xjyd.YZYID;//ԭרҵID   רҵ������Ϣ���ݱ�
                xjyd_model.YBH = xjyd.YBH;//ԭ���   ѧУ�༶���ݱ�
                xjyd_model.YNJ = xjyd.YNJ;//ԭ�꼶   ѧУ�꼶���ݱ�
                xjyd_model.XZYM = xjyd.XZYM;//��רҵ��
                xjyd_model.XZYID = xjyd.XZYID;//��רҵID   רҵ������Ϣ���ݱ�
                xjyd_model.XBH = xjyd.XBH;//�ְ��   ѧУ�༶���ݱ�
                xjyd_model.XNJ = xjyd.XNJ;//���꼶   ѧУ�꼶���ݱ�
                db_zzxs.Entry(xjyd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_07_02_XJYD.Add(xjyd);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_XJYDLBLst = JBLDAL.GetJY_XJYDLBSelLst();
            ViewBag.JY_XJYDYYLst = JBLDAL.GetJY_XJYDYYSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_07_02_XJYD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_07_02_XJYD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_07_02_XJYD xjyd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXjyd(xjyd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjyd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjyd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_07_02_XJYD xjyd= db_zzxs.EDU_ZZXS_07_02_XJYD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xjyd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_07_02_XJYD xjyd)
        {
            InitViewBag();
            try
            {
                
                
                UpdXjyd(xjyd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xjyd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xjyd);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_07_02_XJYD xjyd = db_zzxs.EDU_ZZXS_07_02_XJYD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_07_02_XJYD.Remove(xjyd);
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
                    EDU_ZZXS_07_02_XJYD xjyd = db_zzxs.EDU_ZZXS_07_02_XJYD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_07_02_XJYD.Remove(xjyd);
                    db_zzxs.SaveChanges();
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

        private static int Max_XJYD_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ���춯������������ID
        public int GetMax_XJYD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XJYD_ID == 0)
                {
                    EDU_ZZXS_07_02_XJYD xjyd = db_zzxs.EDU_ZZXS_07_02_XJYD.FirstOrDefault();
                    if (xjyd == null)
                    {
                        Max_XJYD_ID = 1;
                    }
                    else
                    {
                        //Max_XJYD_ID = db_zzxs.EDU_ZZXS_07_02_XJYD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XJYD_ID++;
                }
                maxId = Max_XJYD_ID;
            }
            return maxId;
        }

    }
}
