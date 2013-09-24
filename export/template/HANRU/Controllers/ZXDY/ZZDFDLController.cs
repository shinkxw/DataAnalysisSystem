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
    public class ZZDFDLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP> model = db_zxdy.VIEW_EDU_ZXDY_05_A01_ZZDFDL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZzdfdl(EDU_ZXDY_05_A01_ZZDFDL zzdfdl)
        {
            zzdfdl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzdfdl(zzdfdl);
        }

        public void UpdZzdfdl(EDU_ZXDY_05_A01_ZZDFDL zzdfdl)
        {
            //����Ĭ��ֵ
            if (zzdfdl.ID == 0) zzdfdl.ID = 0;//ֵ�ܴ�ִ����ID
            if (zzdfdl.SCHOOLID == 0) zzdfdl.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (zzdfdl.XQID == 0) zzdfdl.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            if (string.IsNullOrEmpty(zzdfdl.DLMC)) zzdfdl.DLMC = "";//��������
            EDU_ZXDY_05_A01_ZZDFDL zzdfdl_model = db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.FirstOrDefault(e => e.ID == zzdfdl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzdfdl_model != null)
            {
                zzdfdl_model.ID = zzdfdl.ID;//ֵ�ܴ�ִ����ID
                zzdfdl_model.SCHOOLID = zzdfdl.SCHOOLID;//ѧУID   ѧУ���ñ�
                zzdfdl_model.XQID = zzdfdl.XQID;//ѧ��ID   ѧ�����ݱ�
                zzdfdl_model.DLMC = zzdfdl.DLMC;//��������
                db_zxdy.Entry(zzdfdl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.Add(zzdfdl);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_05_A01_ZZDFDL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_05_A01_ZZDFDL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_05_A01_ZZDFDL zzdfdl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzdfdl(zzdfdl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzdfdl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzdfdl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_05_A01_ZZDFDL zzdfdl= db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzdfdl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_05_A01_ZZDFDL zzdfdl)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzdfdl(zzdfdl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzdfdl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzdfdl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_05_A01_ZZDFDL zzdfdl = db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.Remove(zzdfdl);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_05_A01_ZZDFDL zzdfdl = db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.Remove(zzdfdl);
                    db_zxdy.SaveChanges();
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

        private static int Max_ZZDFDL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡֵ�ܴ�ִ�������ID
        public int GetMax_ZZDFDL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZDFDL_ID == 0)
                {
                    EDU_ZXDY_05_A01_ZZDFDL zzdfdl = db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.FirstOrDefault();
                    if (zzdfdl == null)
                    {
                        Max_ZZDFDL_ID = 1;
                    }
                    else
                    {
                        //Max_ZZDFDL_ID = db_zxdy.EDU_ZXDY_05_A01_ZZDFDL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZDFDL_ID++;
                }
                maxId = Max_ZZDFDL_ID;
            }
            return maxId;
        }

    }
}
