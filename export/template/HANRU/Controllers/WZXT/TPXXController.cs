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
    public class TPXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_TPXT_TPXX_DISP> model = db_wzxt.VIEW_EDU_WZXT_TPXT_TPXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTpxx(EDU_WZXT_TPXT_TPXX tpxx)
        {
            tpxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTpxx(tpxx);
        }

        public void UpdTpxx(EDU_WZXT_TPXT_TPXX tpxx)
        {
            //����Ĭ��ֵ
            if (tpxx.ID == 0) tpxx.ID = 0;//ͶƱ��Ŀѡ��ID
            if (tpxx.SCHOOLID == 0) tpxx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (tpxx.WEBID == 0) tpxx.WEBID = 0;//��վID   ��վ����
            if (tpxx.TPID == 0) tpxx.TPID = 0;//ͶƱ   ͶƱ����
            if (tpxx.TMID == 0) tpxx.TMID = 0;//ͶƱ��Ŀ   ͶƱ��Ŀ
            if (string.IsNullOrEmpty(tpxx.TITLE)) tpxx.TITLE = "";//����
            if (tpxx.SUMTP == 0) tpxx.SUMTP = 0;//��ѡ����
            EDU_WZXT_TPXT_TPXX tpxx_model = db_wzxt.EDU_WZXT_TPXT_TPXX.FirstOrDefault(e => e.ID == tpxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tpxx_model != null)
            {
                tpxx_model.ID = tpxx.ID;//ͶƱ��Ŀѡ��ID
                tpxx_model.SCHOOLID = tpxx.SCHOOLID;//ѧУ��   ѧУ���ñ�
                tpxx_model.WEBID = tpxx.WEBID;//��վID   ��վ����
                tpxx_model.TPID = tpxx.TPID;//ͶƱ   ͶƱ����
                tpxx_model.TMID = tpxx.TMID;//ͶƱ��Ŀ   ͶƱ��Ŀ
                tpxx_model.TITLE = tpxx.TITLE;//����
                tpxx_model.SUMTP = tpxx.SUMTP;//��ѡ����
                db_wzxt.Entry(tpxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_TPXT_TPXX.Add(tpxx);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_TPXT_TPXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_TPXT_TPXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_TPXT_TPXX tpxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTpxx(tpxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_TPXT_TPXX tpxx= db_wzxt.EDU_WZXT_TPXT_TPXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tpxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_TPXT_TPXX tpxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdTpxx(tpxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_WZXT_TPXT_TPXX tpxx = db_wzxt.EDU_WZXT_TPXT_TPXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_TPXT_TPXX.Remove(tpxx);
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
                    EDU_WZXT_TPXT_TPXX tpxx = db_wzxt.EDU_WZXT_TPXT_TPXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_TPXT_TPXX.Remove(tpxx);
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

        private static int Max_TPXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡͶƱ��Ŀѡ�����ID
        public int GetMax_TPXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TPXX_ID == 0)
                {
                    EDU_WZXT_TPXT_TPXX tpxx = db_wzxt.EDU_WZXT_TPXT_TPXX.FirstOrDefault();
                    if (tpxx == null)
                    {
                        Max_TPXX_ID = 1;
                    }
                    else
                    {
                        //Max_TPXX_ID = db_wzxt.EDU_WZXT_TPXT_TPXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TPXX_ID++;
                }
                maxId = Max_TPXX_ID;
            }
            return maxId;
        }

    }
}
