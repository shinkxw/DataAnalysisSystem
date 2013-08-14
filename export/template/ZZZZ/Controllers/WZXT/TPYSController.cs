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
    public class TPYSController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_TPXT_TPYS_DISP> model = db_wzxt.VIEW_EDU_WZXT_TPXT_TPYS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTpys(EDU_WZXT_TPXT_TPYS tpys)
        {
            tpys.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTpys(tpys);
        }

        public void UpdTpys(EDU_WZXT_TPXT_TPYS tpys)
        {
            //����Ĭ��ֵ
            if (tpys.ID == 0) tpys.ID = 0;//��ʽID
            if (tpys.SCHOOLID == 0) tpys.SCHOOLID = 0;//ѧУ��
            if (tpys.WEBID == 0) tpys.WEBID = 0;//��վID
            if (string.IsNullOrEmpty(tpys.NAME)) tpys.NAME = "";//��ʽ��
            if (string.IsNullOrEmpty(tpys.SHOWIMG)) tpys.SHOWIMG = "";//Ч��ͼ
            EDU_WZXT_TPXT_TPYS tpys_model = db_wzxt.EDU_WZXT_TPXT_TPYS.FirstOrDefault(e => e.ID == tpys.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tpys_model != null)
            {
                tpys_model.ID = tpys.ID;//��ʽID
                tpys_model.SCHOOLID = tpys.SCHOOLID;//ѧУ��
                tpys_model.WEBID = tpys.WEBID;//��վID
                tpys_model.NAME = tpys.NAME;//��ʽ��
                tpys_model.SHOWIMG = tpys.SHOWIMG;//Ч��ͼ
                db_wzxt.Entry(tpys_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_TPXT_TPYS.Add(tpys);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_TPXT_TPYS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_TPXT_TPYS());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_TPXT_TPYS tpys)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTpys(tpys);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpys);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpys);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_TPXT_TPYS tpys= db_wzxt.EDU_WZXT_TPXT_TPYS.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tpys);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_TPXT_TPYS tpys)
        {
            InitViewBag();
            try
            {
                
                
                UpdTpys(tpys);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpys);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpys);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_TPXT_TPYS tpys = db_wzxt.EDU_WZXT_TPXT_TPYS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_TPXT_TPYS.Remove(tpys);
                db_wzxt.SaveChanges();
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
                    EDU_WZXT_TPXT_TPYS tpys = db_wzxt.EDU_WZXT_TPXT_TPYS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_TPXT_TPYS.Remove(tpys);
                    db_wzxt.SaveChanges();
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

        private static int Max_TPYS_ID = 0;
        private static object syncIDLock = new object();
        //��ȡͶƱ��ʽ�����ID
        public int GetMax_TPYS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TPYS_ID == 0)
                {
                    EDU_WZXT_TPXT_TPYS tpys = db_wzxt.EDU_WZXT_TPXT_TPYS.FirstOrDefault();
                    if (tpys == null)
                    {
                        Max_TPYS_ID = 1;
                    }
                    else
                    {
                        //Max_TPYS_ID = db_wzxt.EDU_WZXT_TPXT_TPYS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TPYS_ID++;
                }
                maxId = Max_TPYS_ID;
            }
            return maxId;
        }

    }
}
