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
    public class USERController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_01_USER_DISP> model = db_ele.VIEW_EDU_ELE_01_USER_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.LOGINNAME.Contains(searchkey)).ToList();
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

        public void AddUser(EDU_ELE_01_USER user)
        {
            user.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdUser(user);
        }

        public void UpdUser(EDU_ELE_01_USER user)
        {
            //����Ĭ��ֵ
            if (string.IsNullOrEmpty(user.LOGINNAME)) user.LOGINNAME = "";//�û���
            if (user.SCHOOLID == 0) user.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (user.APPID == 0) user.APPID = 0;//Ӧ��ID   Ӧ�ñ�
            if (string.IsNullOrEmpty(user.PWD)) user.PWD = "";//����
            if (user.STATUS == 0) user.STATUS = 0;//�û�״̬
            if (user.USERTYPE == 0) user.USERTYPE = 0;//�û����
            if (user.USERID == 0) user.USERID = 0;//�û�ID
            if (string.IsNullOrEmpty(user.ROLEIDLst)) user.ROLEIDLst = "";//�û���ɫ
            if (string.IsNullOrEmpty(user.XM)) user.XM = "";//����
            if (string.IsNullOrEmpty(user.XB)) user.XB = "";//�Ա�
            if (string.IsNullOrEmpty(user.QQ)) user.QQ = "";//QQ
            if (string.IsNullOrEmpty(user.DZYJ)) user.DZYJ = "";//�����ʼ�
            if (string.IsNullOrEmpty(user.LXDH)) user.LXDH = "";//��ϵ�绰
            if (user.ZJDLSJ == 0) user.ZJDLSJ = 0;//���һ�ε�¼ʱ��
            if (user.DLCGCS == 0) user.DLCGCS = 0;//��¼�ɹ�����
            if (user.YHCJSJ == 0) user.YHCJSJ = 0;//�û�����ʱ��
            EDU_ELE_01_USER user_model = db_ele.EDU_ELE_01_USER.FirstOrDefault(e => e.LOGINNAME == user.LOGINNAME
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (user_model != null)
            {
                user_model.LOGINNAME = user.LOGINNAME;//�û���
                user_model.SCHOOLID = user.SCHOOLID;//ѧУID   ѧУ���ñ�
                user_model.APPID = user.APPID;//Ӧ��ID   Ӧ�ñ�
                user_model.PWD = user.PWD;//����
                user_model.STATUS = user.STATUS;//�û�״̬
                user_model.USERTYPE = user.USERTYPE;//�û����
                user_model.USERID = user.USERID;//�û�ID
                user_model.ROLEIDLst = user.ROLEIDLst;//�û���ɫ
                user_model.XM = user.XM;//����
                user_model.XB = user.XB;//�Ա�
                user_model.QQ = user.QQ;//QQ
                user_model.DZYJ = user.DZYJ;//�����ʼ�
                user_model.LXDH = user.LXDH;//��ϵ�绰
                user_model.ZJDLSJ = user.ZJDLSJ;//���һ�ε�¼ʱ��
                user_model.DLCGCS = user.DLCGCS;//��¼�ɹ�����
                user_model.YHCJSJ = user.YHCJSJ;//�û�����ʱ��
                db_ele.Entry(user_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_01_USER.Add(user);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_01_USER());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_01_USER());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_01_USER user)
        {
            InitViewBag();
            try
            {
                //
                //
                AddUser(user);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(user);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(user);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_01_USER user= db_ele.EDU_ELE_01_USER.Single(e => e.LOGINNAME == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(user);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_01_USER user)
        {
            InitViewBag();
            try
            {
                
                
                UpdUser(user);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(user);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(user);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_01_USER user = db_ele.EDU_ELE_01_USER.SingleOrDefault(e => e.LOGINNAME == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_01_USER.Remove(user);
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
                    EDU_ELE_01_USER user = db_ele.EDU_ELE_01_USER.SingleOrDefault(e => e.LOGINNAME == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_01_USER.Remove(user);
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

        private static int Max_USER_ID = 0;
        private static object syncIDLock = new object();
        //��ȡӦ��ϵͳ�û������ID
        public int GetMax_USER_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_USER_ID == 0)
                {
                    EDU_ELE_01_USER user = db_ele.EDU_ELE_01_USER.FirstOrDefault();
                    if (user == null)
                    {
                        Max_USER_ID = 1;
                    }
                    else
                    {
                        //Max_USER_ID = db_ele.EDU_ELE_01_USER.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_USER_ID++;
                }
                maxId = Max_USER_ID;
            }
            return maxId;
        }

    }
}
