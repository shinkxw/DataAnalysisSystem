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
    public class NJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_02_01_NJ_DISP> model = db_zxxx.VIEW_EDU_ZXXX_02_01_NJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddNj(EDU_ZXXX_02_01_NJ nj)
        {
            nj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdNj(nj);
        }

        public void UpdNj(EDU_ZXXX_02_01_NJ nj)
        {
            //����Ĭ��ֵ
            if (nj.SCHOOLID == 0) nj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(nj.NJ)) nj.NJ = "";//�꼶��
            if (string.IsNullOrEmpty(nj.NJMC)) nj.NJMC = "";//�꼶����
            EDU_ZXXX_02_01_NJ nj_model = db_zxxx.EDU_ZXXX_02_01_NJ.FirstOrDefault(e => e.SCHOOLID == nj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (nj_model != null)
            {
                nj_model.SCHOOLID = nj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                nj_model.NJ = nj.NJ;//�꼶��
                nj_model.NJMC = nj.NJMC;//�꼶����
                db_zxxx.Entry(nj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxxx.EDU_ZXXX_02_01_NJ.Add(nj);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_02_01_NJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_02_01_NJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_02_01_NJ nj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddNj(nj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(nj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(nj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_02_01_NJ nj= db_zxxx.EDU_ZXXX_02_01_NJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(nj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_02_01_NJ nj)
        {
            InitViewBag();
            try
            {
                
                
                UpdNj(nj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(nj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(nj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXXX_02_01_NJ nj = db_zxxx.EDU_ZXXX_02_01_NJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_02_01_NJ.Remove(nj);
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
                    EDU_ZXXX_02_01_NJ nj = db_zxxx.EDU_ZXXX_02_01_NJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_02_01_NJ.Remove(nj);
                    db_zxxx.SaveChanges();
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

        private static int Max_NJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�꼶����������ID
        public int GetMax_NJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_NJ_ID == 0)
                {
                    EDU_ZXXX_02_01_NJ nj = db_zxxx.EDU_ZXXX_02_01_NJ.FirstOrDefault();
                    if (nj == null)
                    {
                        Max_NJ_ID = 1;
                    }
                    else
                    {
                        //Max_NJ_ID = db_zxxx.EDU_ZXXX_02_01_NJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_NJ_ID++;
                }
                maxId = Max_NJ_ID;
            }
            return maxId;
        }

    }
}
