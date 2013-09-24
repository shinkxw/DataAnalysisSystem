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
    public class XYKSJGController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_03_02_XYKSJG_DISP> model = db_jpxt.VIEW_EDU_JPXT_03_02_XYKSJG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXyksjg(EDU_JPXT_03_02_XYKSJG xyksjg)
        {
            xyksjg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXyksjg(xyksjg);
        }

        public void UpdXyksjg(EDU_JPXT_03_02_XYKSJG xyksjg)
        {
            //����Ĭ��ֵ
            if (xyksjg.ID == 0) xyksjg.ID = 0;//���
            if (xyksjg.XYID == 0) xyksjg.XYID = 0;//ѧԱID   ѧԱ���ݱ�
            if (xyksjg.SCHOOLID == 0) xyksjg.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xyksjg.KMKSID == 0) xyksjg.KMKSID = 0;//��Ŀ����ID   ��Ŀ���Ա�
            if (string.IsNullOrEmpty(xyksjg.KSKMDM)) xyksjg.KSKMDM = "";//���Կ�Ŀ����   �ݿ���Ŀ����
            if (xyksjg.KSJG == 0) xyksjg.KSJG = 0;//���Խ��
            EDU_JPXT_03_02_XYKSJG xyksjg_model = db_jpxt.EDU_JPXT_03_02_XYKSJG.FirstOrDefault(e => e.ID == xyksjg.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xyksjg_model != null)
            {
                xyksjg_model.ID = xyksjg.ID;//���
                xyksjg_model.XYID = xyksjg.XYID;//ѧԱID   ѧԱ���ݱ�
                xyksjg_model.SCHOOLID = xyksjg.SCHOOLID;//ѧУID   ѧУ���ñ�
                xyksjg_model.KMKSID = xyksjg.KMKSID;//��Ŀ����ID   ��Ŀ���Ա�
                xyksjg_model.KSKMDM = xyksjg.KSKMDM;//���Կ�Ŀ����   �ݿ���Ŀ����
                xyksjg_model.KSJG = xyksjg.KSJG;//���Խ��
                db_jpxt.Entry(xyksjg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_03_02_XYKSJG.Add(xyksjg);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZZ_JKKMLst = ZZBLDAL.GetZZ_JKKMSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_03_02_XYKSJG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_03_02_XYKSJG());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_03_02_XYKSJG xyksjg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXyksjg(xyksjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyksjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyksjg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_03_02_XYKSJG xyksjg= db_jpxt.EDU_JPXT_03_02_XYKSJG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xyksjg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_03_02_XYKSJG xyksjg)
        {
            InitViewBag();
            try
            {
                
                
                UpdXyksjg(xyksjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyksjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyksjg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_03_02_XYKSJG xyksjg = db_jpxt.EDU_JPXT_03_02_XYKSJG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_03_02_XYKSJG.Remove(xyksjg);
                db_jpxt.SaveChanges();
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
                    EDU_JPXT_03_02_XYKSJG xyksjg = db_jpxt.EDU_JPXT_03_02_XYKSJG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_03_02_XYKSJG.Remove(xyksjg);
                    db_jpxt.SaveChanges();
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

        private static int Max_XYKSJG_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧԱ���Խ�������ID
        public int GetMax_XYKSJG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XYKSJG_ID == 0)
                {
                    EDU_JPXT_03_02_XYKSJG xyksjg = db_jpxt.EDU_JPXT_03_02_XYKSJG.FirstOrDefault();
                    if (xyksjg == null)
                    {
                        Max_XYKSJG_ID = 1;
                    }
                    else
                    {
                        //Max_XYKSJG_ID = db_jpxt.EDU_JPXT_03_02_XYKSJG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XYKSJG_ID++;
                }
                maxId = Max_XYKSJG_ID;
            }
            return maxId;
        }

    }
}
