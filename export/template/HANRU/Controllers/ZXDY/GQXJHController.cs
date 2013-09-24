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
    public class GQXJHController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_06_A02_GQXJH_DISP> model = db_zxdy.VIEW_EDU_ZXDY_06_A02_GQXJH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddGqxjh(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            gqxjh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdGqxjh(gqxjh);
        }

        public void UpdGqxjh(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            //����Ĭ��ֵ
            if (gqxjh.ID == 0) gqxjh.ID = 0;//�����½�����ID
            if (gqxjh.SCHOOLID == 0) gqxjh.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (gqxjh.XQID == 0) gqxjh.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            if (gqxjh.ZCID == 0) gqxjh.ZCID = 0;//�ܴ�ID   ֵ���ܴα�
            if (string.IsNullOrEmpty(gqxjh.JHZT)) gqxjh.JHZT = "";//��������
            if (string.IsNullOrEmpty(gqxjh.JHNR)) gqxjh.JHNR = "";//��������
            EDU_ZXDY_06_A02_GQXJH gqxjh_model = db_zxdy.EDU_ZXDY_06_A02_GQXJH.FirstOrDefault(e => e.ID == gqxjh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (gqxjh_model != null)
            {
                gqxjh_model.ID = gqxjh.ID;//�����½�����ID
                gqxjh_model.SCHOOLID = gqxjh.SCHOOLID;//ѧУID   ѧУ���ñ�
                gqxjh_model.XQID = gqxjh.XQID;//ѧ��ID   ѧ�����ݱ�
                gqxjh_model.ZCID = gqxjh.ZCID;//�ܴ�ID   ֵ���ܴα�
                gqxjh_model.JHZT = gqxjh.JHZT;//��������
                gqxjh_model.JHNR = gqxjh.JHNR;//��������
                db_zxdy.Entry(gqxjh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxdy.EDU_ZXDY_06_A02_GQXJH.Add(gqxjh);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_06_A02_GQXJH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_06_A02_GQXJH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddGqxjh(gqxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gqxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gqxjh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_06_A02_GQXJH gqxjh= db_zxdy.EDU_ZXDY_06_A02_GQXJH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(gqxjh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_06_A02_GQXJH gqxjh)
        {
            InitViewBag();
            try
            {
                
                
                UpdGqxjh(gqxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gqxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gqxjh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_06_A02_GQXJH gqxjh = db_zxdy.EDU_ZXDY_06_A02_GQXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_06_A02_GQXJH.Remove(gqxjh);
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
                    EDU_ZXDY_06_A02_GQXJH gqxjh = db_zxdy.EDU_ZXDY_06_A02_GQXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_06_A02_GQXJH.Remove(gqxjh);
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

        private static int Max_GQXJH_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�����½��������ID
        public int GetMax_GQXJH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_GQXJH_ID == 0)
                {
                    EDU_ZXDY_06_A02_GQXJH gqxjh = db_zxdy.EDU_ZXDY_06_A02_GQXJH.FirstOrDefault();
                    if (gqxjh == null)
                    {
                        Max_GQXJH_ID = 1;
                    }
                    else
                    {
                        //Max_GQXJH_ID = db_zxdy.EDU_ZXDY_06_A02_GQXJH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_GQXJH_ID++;
                }
                maxId = Max_GQXJH_ID;
            }
            return maxId;
        }

    }
}
