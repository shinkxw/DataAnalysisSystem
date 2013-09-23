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
    public class YHFZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_02_YHFZ_DISP> model = db_ele.VIEW_EDU_ELE_02_YHFZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddYhfz(EDU_ELE_02_YHFZ yhfz)
        {
            yhfz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdYhfz(yhfz);
        }

        public void UpdYhfz(EDU_ELE_02_YHFZ yhfz)
        {
            //����Ĭ��ֵ
            if (yhfz.ID == 0) yhfz.ID = 0;//����ID
            if (yhfz.SCHOOLID == 0) yhfz.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (yhfz.APPID == 0) yhfz.APPID = 0;//Ӧ��ID   Ӧ�ñ�
            if (string.IsNullOrEmpty(yhfz.YHID)) yhfz.YHID = "";//�û�ID   Ӧ��ϵͳ�û���
            if (yhfz.SJFZID == 0) yhfz.SJFZID = 0;//�ϼ�����ID   �û������
            if (string.IsNullOrEmpty(yhfz.FZMC)) yhfz.FZMC = "";//��������
            if (string.IsNullOrEmpty(yhfz.FZYHID)) yhfz.FZYHID = "";//�����û�ID�б�
            EDU_ELE_02_YHFZ yhfz_model = db_ele.EDU_ELE_02_YHFZ.FirstOrDefault(e => e.ID == yhfz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (yhfz_model != null)
            {
                yhfz_model.ID = yhfz.ID;//����ID
                yhfz_model.SCHOOLID = yhfz.SCHOOLID;//ѧУID   ѧУ���ñ�
                yhfz_model.APPID = yhfz.APPID;//Ӧ��ID   Ӧ�ñ�
                yhfz_model.YHID = yhfz.YHID;//�û�ID   Ӧ��ϵͳ�û���
                yhfz_model.SJFZID = yhfz.SJFZID;//�ϼ�����ID   �û������
                yhfz_model.FZMC = yhfz.FZMC;//��������
                yhfz_model.FZYHID = yhfz.FZYHID;//�����û�ID�б�
                db_ele.Entry(yhfz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_02_YHFZ.Add(yhfz);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_02_YHFZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_02_YHFZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_02_YHFZ yhfz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddYhfz(yhfz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yhfz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yhfz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_02_YHFZ yhfz= db_ele.EDU_ELE_02_YHFZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(yhfz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_02_YHFZ yhfz)
        {
            InitViewBag();
            try
            {
                
                
                UpdYhfz(yhfz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yhfz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yhfz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_02_YHFZ yhfz = db_ele.EDU_ELE_02_YHFZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_02_YHFZ.Remove(yhfz);
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
                    EDU_ELE_02_YHFZ yhfz = db_ele.EDU_ELE_02_YHFZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_02_YHFZ.Remove(yhfz);
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

        private static int Max_YHFZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�û���������ID
        public int GetMax_YHFZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_YHFZ_ID == 0)
                {
                    EDU_ELE_02_YHFZ yhfz = db_ele.EDU_ELE_02_YHFZ.FirstOrDefault();
                    if (yhfz == null)
                    {
                        Max_YHFZ_ID = 1;
                    }
                    else
                    {
                        //Max_YHFZ_ID = db_ele.EDU_ELE_02_YHFZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_YHFZ_ID++;
                }
                maxId = Max_YHFZ_ID;
            }
            return maxId;
        }

    }
}
