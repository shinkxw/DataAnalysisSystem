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
    public class XQHDController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A06_XQHD_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A06_XQHD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXqhd(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            xqhd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXqhd(xqhd);
        }

        public void UpdXqhd(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            //����Ĭ��ֵ
            if (xqhd.ID == 0) xqhd.ID = 0;//У�󻥶���ϢID
            if (xqhd.SCHOOLID == 0) xqhd.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xqhd.QYID == 0) xqhd.QYID = 0;//��ҵID   У��ʵϰ������Ϣ���������
            if (string.IsNullOrEmpty(xqhd.XXJY)) xqhd.XXJY = "";//��ҵ��ѧУ��������
            if (string.IsNullOrEmpty(xqhd.XSJY)) xqhd.XSJY = "";//��ҵ��ѧ��ְҵ���ܽ���
            if (string.IsNullOrEmpty(xqhd.GLJY)) xqhd.GLJY = "";//ʵϰ���������Ľ���
            if (string.IsNullOrEmpty(xqhd.QTJY)) xqhd.QTJY = "";//��������
            if (string.IsNullOrEmpty(xqhd.FKNR)) xqhd.FKNR = "";//��������
            if (xqhd.FKSJ == 0) xqhd.FKSJ = 0;//����ʱ��
            EDU_ZZJX_07_A06_XQHD xqhd_model = db_zzjx.EDU_ZZJX_07_A06_XQHD.FirstOrDefault(e => e.ID == xqhd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xqhd_model != null)
            {
                xqhd_model.ID = xqhd.ID;//У�󻥶���ϢID
                xqhd_model.SCHOOLID = xqhd.SCHOOLID;//ѧУID   ѧУ���ñ�
                xqhd_model.QYID = xqhd.QYID;//��ҵID   У��ʵϰ������Ϣ���������
                xqhd_model.XXJY = xqhd.XXJY;//��ҵ��ѧУ��������
                xqhd_model.XSJY = xqhd.XSJY;//��ҵ��ѧ��ְҵ���ܽ���
                xqhd_model.GLJY = xqhd.GLJY;//ʵϰ���������Ľ���
                xqhd_model.QTJY = xqhd.QTJY;//��������
                xqhd_model.FKNR = xqhd.FKNR;//��������
                xqhd_model.FKSJ = xqhd.FKSJ;//����ʱ��
                db_zzjx.Entry(xqhd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A06_XQHD.Add(xqhd);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A06_XQHD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A06_XQHD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXqhd(xqhd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xqhd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xqhd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A06_XQHD xqhd= db_zzjx.EDU_ZZJX_07_A06_XQHD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xqhd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A06_XQHD xqhd)
        {
            InitViewBag();
            try
            {
                
                
                UpdXqhd(xqhd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xqhd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xqhd);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A06_XQHD xqhd = db_zzjx.EDU_ZZJX_07_A06_XQHD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A06_XQHD.Remove(xqhd);
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
                    EDU_ZZJX_07_A06_XQHD xqhd = db_zzjx.EDU_ZZJX_07_A06_XQHD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A06_XQHD.Remove(xqhd);
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

        private static int Max_XQHD_ID = 0;
        private static object syncIDLock = new object();
        //��ȡУ�󻥶������ID
        public int GetMax_XQHD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XQHD_ID == 0)
                {
                    EDU_ZZJX_07_A06_XQHD xqhd = db_zzjx.EDU_ZZJX_07_A06_XQHD.FirstOrDefault();
                    if (xqhd == null)
                    {
                        Max_XQHD_ID = 1;
                    }
                    else
                    {
                        //Max_XQHD_ID = db_zzjx.EDU_ZZJX_07_A06_XQHD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XQHD_ID++;
                }
                maxId = Max_XQHD_ID;
            }
            return maxId;
        }

    }
}
