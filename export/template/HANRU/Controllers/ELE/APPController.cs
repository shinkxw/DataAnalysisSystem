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
    public class APPController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_01_APP_DISP> model = db_ele.VIEW_EDU_ELE_01_APP_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddApp(EDU_ELE_01_APP app)
        {
            app.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdApp(app);
        }

        public void UpdApp(EDU_ELE_01_APP app)
        {
            //����Ĭ��ֵ
            if (app.ID == 0) app.ID = 0;//Ӧ��ID
            if (app.SCHOOLID == 0) app.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(app.NAME)) app.NAME = "";//Ӧ������
            if (string.IsNullOrEmpty(app.URL)) app.URL = "";//��ַ
            if (string.IsNullOrEmpty(app.AUTHIP)) app.AUTHIP = "";//����IP
            if (string.IsNullOrEmpty(app.SM)) app.SM = "";//˵��
            if (app.DLFS == 0) app.DLFS = 0;//��¼��ʽ
            if (app.STATUS == 0) app.STATUS = 0;//Ӧ��״̬
            EDU_ELE_01_APP app_model = db_ele.EDU_ELE_01_APP.FirstOrDefault(e => e.ID == app.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (app_model != null)
            {
                app_model.ID = app.ID;//Ӧ��ID
                app_model.SCHOOLID = app.SCHOOLID;//ѧУID   ѧУ���ñ�
                app_model.NAME = app.NAME;//Ӧ������
                app_model.URL = app.URL;//��ַ
                app_model.AUTHIP = app.AUTHIP;//����IP
                app_model.SM = app.SM;//˵��
                app_model.DLFS = app.DLFS;//��¼��ʽ
                app_model.STATUS = app.STATUS;//Ӧ��״̬
                db_ele.Entry(app_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_01_APP.Add(app);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_01_APP());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_01_APP());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_01_APP app)
        {
            InitViewBag();
            try
            {
                //
                //
                AddApp(app);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(app);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(app);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_01_APP app= db_ele.EDU_ELE_01_APP.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(app);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_01_APP app)
        {
            InitViewBag();
            try
            {
                
                
                UpdApp(app);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(app);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(app);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_01_APP app = db_ele.EDU_ELE_01_APP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_01_APP.Remove(app);
                db_ele.SaveChanges();
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
                    EDU_ELE_01_APP app = db_ele.EDU_ELE_01_APP.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_01_APP.Remove(app);
                    db_ele.SaveChanges();
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

        private static int Max_APP_ID = 0;
        private static object syncIDLock = new object();
        //��ȡӦ�ñ����ID
        public int GetMax_APP_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_APP_ID == 0)
                {
                    EDU_ELE_01_APP app = db_ele.EDU_ELE_01_APP.FirstOrDefault();
                    if (app == null)
                    {
                        Max_APP_ID = 1;
                    }
                    else
                    {
                        //Max_APP_ID = db_ele.EDU_ELE_01_APP.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_APP_ID++;
                }
                maxId = Max_APP_ID;
            }
            return maxId;
        }

    }
}
