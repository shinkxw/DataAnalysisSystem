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
    public class APPLLController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_03_APPLL_DISP> model = db_ele.VIEW_EDU_ELE_03_APPLL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddAppll(EDU_ELE_03_APPLL appll)
        {
            appll.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdAppll(appll);
        }

        public void UpdAppll(EDU_ELE_03_APPLL appll)
        {
            //����Ĭ��ֵ
            if (appll.ID == 0) appll.ID = 0;//���
            if (appll.SCHOOLID == 0) appll.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (appll.APPID == 0) appll.APPID = 0;//Ӧ��ID
            if (string.IsNullOrEmpty(appll.YHID)) appll.YHID = "";//�����û�   Ӧ��ϵͳ�û���
            if (string.IsNullOrEmpty(appll.CZYY)) appll.CZYY = "";//����Ӧ��
            if (string.IsNullOrEmpty(appll.CZBM)) appll.CZBM = "";//��������
            if (string.IsNullOrEmpty(appll.CZXX)) appll.CZXX = "";//������Ϣ
            EDU_ELE_03_APPLL appll_model = db_ele.EDU_ELE_03_APPLL.FirstOrDefault(e => e.ID == appll.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (appll_model != null)
            {
                appll_model.ID = appll.ID;//���
                appll_model.SCHOOLID = appll.SCHOOLID;//ѧУ��   ѧУ���ñ�
                appll_model.APPID = appll.APPID;//Ӧ��ID
                appll_model.YHID = appll.YHID;//�����û�   Ӧ��ϵͳ�û���
                appll_model.CZSJ = appll.CZSJ;//����ʱ��
                appll_model.CZYY = appll.CZYY;//����Ӧ��
                appll_model.CZBM = appll.CZBM;//��������
                appll_model.CZXX = appll.CZXX;//������Ϣ
                db_ele.Entry(appll_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_03_APPLL.Add(appll);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_03_APPLL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_03_APPLL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_03_APPLL appll)
        {
            InitViewBag();
            try
            {
                //
                //
                AddAppll(appll);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(appll);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(appll);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_03_APPLL appll= db_ele.EDU_ELE_03_APPLL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(appll);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_03_APPLL appll)
        {
            InitViewBag();
            try
            {
                
                
                UpdAppll(appll);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(appll);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(appll);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_03_APPLL appll = db_ele.EDU_ELE_03_APPLL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_03_APPLL.Remove(appll);
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
                    EDU_ELE_03_APPLL appll = db_ele.EDU_ELE_03_APPLL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_03_APPLL.Remove(appll);
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

        private static int Max_APPLL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡӦ�����������ID
        public int GetMax_APPLL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_APPLL_ID == 0)
                {
                    EDU_ELE_03_APPLL appll = db_ele.EDU_ELE_03_APPLL.FirstOrDefault();
                    if (appll == null)
                    {
                        Max_APPLL_ID = 1;
                    }
                    else
                    {
                        //Max_APPLL_ID = db_ele.EDU_ELE_03_APPLL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_APPLL_ID++;
                }
                maxId = Max_APPLL_ID;
            }
            return maxId;
        }

    }
}
