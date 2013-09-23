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
    public class TPTMController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_TPXT_TPTM_DISP> model = db_wzxt.VIEW_EDU_WZXT_TPXT_TPTM_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTptm(EDU_WZXT_TPXT_TPTM tptm)
        {
            tptm.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTptm(tptm);
        }

        public void UpdTptm(EDU_WZXT_TPXT_TPTM tptm)
        {
            //����Ĭ��ֵ
            if (tptm.ID == 0) tptm.ID = 0;//ͶƱ��ĿID
            if (tptm.SCHOOLID == 0) tptm.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (tptm.WEBID == 0) tptm.WEBID = 0;//��վID   ��վ����
            if (tptm.TPID == 0) tptm.TPID = 0;//ͶƱ   ͶƱ����
            if (tptm.TYPEID == 0) tptm.TYPEID = 0;//ͶƱ��ʽ
            if (string.IsNullOrEmpty(tptm.TITLE)) tptm.TITLE = "";//����
            if (string.IsNullOrEmpty(tptm.CONTENT)) tptm.CONTENT = "";//����
            EDU_WZXT_TPXT_TPTM tptm_model = db_wzxt.EDU_WZXT_TPXT_TPTM.FirstOrDefault(e => e.ID == tptm.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tptm_model != null)
            {
                tptm_model.ID = tptm.ID;//ͶƱ��ĿID
                tptm_model.SCHOOLID = tptm.SCHOOLID;//ѧУ��   ѧУ���ñ�
                tptm_model.WEBID = tptm.WEBID;//��վID   ��վ����
                tptm_model.TPID = tptm.TPID;//ͶƱ   ͶƱ����
                tptm_model.TYPEID = tptm.TYPEID;//ͶƱ��ʽ
                tptm_model.TITLE = tptm.TITLE;//����
                tptm_model.CONTENT = tptm.CONTENT;//����
                db_wzxt.Entry(tptm_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_TPXT_TPTM.Add(tptm);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_TPXT_TPTM());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_TPXT_TPTM());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_TPXT_TPTM tptm)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTptm(tptm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tptm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tptm);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_TPXT_TPTM tptm= db_wzxt.EDU_WZXT_TPXT_TPTM.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tptm);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_TPXT_TPTM tptm)
        {
            InitViewBag();
            try
            {
                
                
                UpdTptm(tptm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tptm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tptm);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_WZXT_TPXT_TPTM tptm = db_wzxt.EDU_WZXT_TPXT_TPTM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_TPXT_TPTM.Remove(tptm);
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
                    EDU_WZXT_TPXT_TPTM tptm = db_wzxt.EDU_WZXT_TPXT_TPTM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_TPXT_TPTM.Remove(tptm);
                    db_wzxt.SaveChanges();
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

        private static int Max_TPTM_ID = 0;
        private static object syncIDLock = new object();
        //��ȡͶƱ��Ŀ���ID
        public int GetMax_TPTM_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TPTM_ID == 0)
                {
                    EDU_WZXT_TPXT_TPTM tptm = db_wzxt.EDU_WZXT_TPXT_TPTM.FirstOrDefault();
                    if (tptm == null)
                    {
                        Max_TPTM_ID = 1;
                    }
                    else
                    {
                        //Max_TPTM_ID = db_wzxt.EDU_WZXT_TPXT_TPTM.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TPTM_ID++;
                }
                maxId = Max_TPTM_ID;
            }
            return maxId;
        }

    }
}
