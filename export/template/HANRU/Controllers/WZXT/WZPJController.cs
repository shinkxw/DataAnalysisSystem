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
    public class WZPJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_WZPJ_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_WZPJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWzpj(EDU_WZXT_MHXT_WZPJ wzpj)
        {
            wzpj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzpj(wzpj);
        }

        public void UpdWzpj(EDU_WZXT_MHXT_WZPJ wzpj)
        {
            //����Ĭ��ֵ
            if (wzpj.ID == 0) wzpj.ID = 0;//����ID
            if (wzpj.SCHOOLID == 0) wzpj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (wzpj.WEBID == 0) wzpj.WEBID = 0;//��վID   ��վ����
            if (wzpj.WZID == 0) wzpj.WZID = 0;//��վ����ID   ��վ����
            if (string.IsNullOrEmpty(wzpj.PJR)) wzpj.PJR = "";//������
            if (string.IsNullOrEmpty(wzpj.YJDZ)) wzpj.YJDZ = "";//�ʼ���ַ
            if (wzpj.PJSJ == 0) wzpj.PJSJ = 0;//����ʱ��
            if (string.IsNullOrEmpty(wzpj.PJNR)) wzpj.PJNR = "";//��������
            if (wzpj.PJZT == 0) wzpj.PJZT = 0;//����״̬
            if (string.IsNullOrEmpty(wzpj.SHR)) wzpj.SHR = "";//�����
            if (string.IsNullOrEmpty(wzpj.HF)) wzpj.HF = "";//�ظ�
            EDU_WZXT_MHXT_WZPJ wzpj_model = db_wzxt.EDU_WZXT_MHXT_WZPJ.FirstOrDefault(e => e.ID == wzpj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzpj_model != null)
            {
                wzpj_model.ID = wzpj.ID;//����ID
                wzpj_model.SCHOOLID = wzpj.SCHOOLID;//ѧУID   ѧУ���ñ�
                wzpj_model.WEBID = wzpj.WEBID;//��վID   ��վ����
                wzpj_model.WZID = wzpj.WZID;//��վ����ID   ��վ����
                wzpj_model.PJR = wzpj.PJR;//������
                wzpj_model.YJDZ = wzpj.YJDZ;//�ʼ���ַ
                wzpj_model.PJSJ = wzpj.PJSJ;//����ʱ��
                wzpj_model.PJNR = wzpj.PJNR;//��������
                wzpj_model.PJZT = wzpj.PJZT;//����״̬
                wzpj_model.SHR = wzpj.SHR;//�����
                wzpj_model.HF = wzpj.HF;//�ظ�
                db_wzxt.Entry(wzpj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_MHXT_WZPJ.Add(wzpj);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_WZPJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_WZPJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_WZPJ wzpj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzpj(wzpj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzpj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzpj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_WZPJ wzpj= db_wzxt.EDU_WZXT_MHXT_WZPJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzpj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_WZPJ wzpj)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzpj(wzpj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzpj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzpj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_MHXT_WZPJ wzpj = db_wzxt.EDU_WZXT_MHXT_WZPJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_WZPJ.Remove(wzpj);
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
                    EDU_WZXT_MHXT_WZPJ wzpj = db_wzxt.EDU_WZXT_MHXT_WZPJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_WZPJ.Remove(wzpj);
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

        private static int Max_WZPJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�������۱����ID
        public int GetMax_WZPJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZPJ_ID == 0)
                {
                    EDU_WZXT_MHXT_WZPJ wzpj = db_wzxt.EDU_WZXT_MHXT_WZPJ.FirstOrDefault();
                    if (wzpj == null)
                    {
                        Max_WZPJ_ID = 1;
                    }
                    else
                    {
                        //Max_WZPJ_ID = db_wzxt.EDU_WZXT_MHXT_WZPJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZPJ_ID++;
                }
                maxId = Max_WZPJ_ID;
            }
            return maxId;
        }

    }
}
