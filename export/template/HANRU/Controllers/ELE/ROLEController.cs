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
    public class ROLEController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_01_ROLE_DISP> model = db_ele.VIEW_EDU_ELE_01_ROLE_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddRole(EDU_ELE_01_ROLE role)
        {
            role.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdRole(role);
        }

        public void UpdRole(EDU_ELE_01_ROLE role)
        {
            //����Ĭ��ֵ
            if (role.ID == 0) role.ID = 0;//��ɫID
            if (role.SCHOOLID == 0) role.SCHOOLID = 0;//ѧУID
            if (role.APPID == 0) role.APPID = 0;//Ӧ��ID
            if (string.IsNullOrEmpty(role.NAME)) role.NAME = "";//��ɫ��
            if (role.PID == 0) role.PID = 0;//��ɫ������ID
            if (string.IsNullOrEmpty(role.ModIDLst)) role.ModIDLst = "";//��ɫ�ܷ��ʵ�ģ���б�
            EDU_ELE_01_ROLE role_model = db_ele.EDU_ELE_01_ROLE.FirstOrDefault(e => e.ID == role.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (role_model != null)
            {
                role_model.ID = role.ID;//��ɫID
                role_model.SCHOOLID = role.SCHOOLID;//ѧУID
                role_model.APPID = role.APPID;//Ӧ��ID
                role_model.NAME = role.NAME;//��ɫ��
                role_model.PID = role.PID;//��ɫ������ID
                role_model.ModIDLst = role.ModIDLst;//��ɫ�ܷ��ʵ�ģ���б�
                db_ele.Entry(role_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_01_ROLE.Add(role);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_01_ROLE());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_01_ROLE());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_01_ROLE role)
        {
            InitViewBag();
            try
            {
                //
                //
                AddRole(role);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(role);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(role);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_01_ROLE role= db_ele.EDU_ELE_01_ROLE.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(role);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_01_ROLE role)
        {
            InitViewBag();
            try
            {
                
                
                UpdRole(role);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(role);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(role);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_01_ROLE role = db_ele.EDU_ELE_01_ROLE.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_01_ROLE.Remove(role);
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
                    EDU_ELE_01_ROLE role = db_ele.EDU_ELE_01_ROLE.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_01_ROLE.Remove(role);
                    db_ele.SaveChanges();
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

        private static int Max_ROLE_ID = 0;
        private static object syncIDLock = new object();
        //��ȡӦ��ϵͳ��ɫ�����ID
        public int GetMax_ROLE_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ROLE_ID == 0)
                {
                    EDU_ELE_01_ROLE role = db_ele.EDU_ELE_01_ROLE.FirstOrDefault();
                    if (role == null)
                    {
                        Max_ROLE_ID = 1;
                    }
                    else
                    {
                        //Max_ROLE_ID = db_ele.EDU_ELE_01_ROLE.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ROLE_ID++;
                }
                maxId = Max_ROLE_ID;
            }
            return maxId;
        }

    }
}
