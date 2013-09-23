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
    public class PKJGJLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_04_PKJGJL_DISP> model = db_ele.VIEW_EDU_ELE_04_PKJGJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddPkjgjl(EDU_ELE_04_PKJGJL pkjgjl)
        {
            pkjgjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdPkjgjl(pkjgjl);
        }

        public void UpdPkjgjl(EDU_ELE_04_PKJGJL pkjgjl)
        {
            //����Ĭ��ֵ
            if (pkjgjl.ID == 0) pkjgjl.ID = 0;//���
            if (pkjgjl.SCHOOLID == 0) pkjgjl.SCHOOLID = 0;//ѧУ��
            if (pkjgjl.XQID == 0) pkjgjl.XQID = 0;//ѧ��ID
            if (pkjgjl.TEACHERID == 0) pkjgjl.TEACHERID = 0;//��ʦ
            if (string.IsNullOrEmpty(pkjgjl.TEACHERNAME)) pkjgjl.TEACHERNAME = "";//��ʦ
            if (string.IsNullOrEmpty(pkjgjl.COURSEID)) pkjgjl.COURSEID = "";//�γ�
            if (string.IsNullOrEmpty(pkjgjl.COURSENAME)) pkjgjl.COURSENAME = "";//�γ�
            if (string.IsNullOrEmpty(pkjgjl.CLASSID)) pkjgjl.CLASSID = "";//�༶
            if (string.IsNullOrEmpty(pkjgjl.CLASSNAME)) pkjgjl.CLASSNAME = "";//�༶
            if (pkjgjl.WEEKDAY == 0) pkjgjl.WEEKDAY = 0;//������
            if (string.IsNullOrEmpty(pkjgjl.WEEKDAYNAME)) pkjgjl.WEEKDAYNAME = "";//����������
            if (pkjgjl.PERIOD == 0) pkjgjl.PERIOD = 0;//ʱ��
            if (string.IsNullOrEmpty(pkjgjl.PERIODNAME)) pkjgjl.PERIODNAME = "";//ʱ������
            if (pkjgjl.SESSION == 0) pkjgjl.SESSION = 0;//�ڴ�
            if (string.IsNullOrEmpty(pkjgjl.SESSIONNAME)) pkjgjl.SESSIONNAME = "";//�ڴ�����
            EDU_ELE_04_PKJGJL pkjgjl_model = db_ele.EDU_ELE_04_PKJGJL.FirstOrDefault(e => e.ID == pkjgjl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (pkjgjl_model != null)
            {
                pkjgjl_model.ID = pkjgjl.ID;//���
                pkjgjl_model.SCHOOLID = pkjgjl.SCHOOLID;//ѧУ��
                pkjgjl_model.XQID = pkjgjl.XQID;//ѧ��ID
                pkjgjl_model.TEACHERID = pkjgjl.TEACHERID;//��ʦ
                pkjgjl_model.TEACHERNAME = pkjgjl.TEACHERNAME;//��ʦ
                pkjgjl_model.COURSEID = pkjgjl.COURSEID;//�γ�
                pkjgjl_model.COURSENAME = pkjgjl.COURSENAME;//�γ�
                pkjgjl_model.CLASSID = pkjgjl.CLASSID;//�༶
                pkjgjl_model.CLASSNAME = pkjgjl.CLASSNAME;//�༶
                pkjgjl_model.WEEKDAY = pkjgjl.WEEKDAY;//������
                pkjgjl_model.WEEKDAYNAME = pkjgjl.WEEKDAYNAME;//����������
                pkjgjl_model.PERIOD = pkjgjl.PERIOD;//ʱ��
                pkjgjl_model.PERIODNAME = pkjgjl.PERIODNAME;//ʱ������
                pkjgjl_model.SESSION = pkjgjl.SESSION;//�ڴ�
                pkjgjl_model.SESSIONNAME = pkjgjl.SESSIONNAME;//�ڴ�����
                db_ele.Entry(pkjgjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_04_PKJGJL.Add(pkjgjl);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_04_PKJGJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_04_PKJGJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_04_PKJGJL pkjgjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddPkjgjl(pkjgjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(pkjgjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(pkjgjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_04_PKJGJL pkjgjl= db_ele.EDU_ELE_04_PKJGJL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(pkjgjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_04_PKJGJL pkjgjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdPkjgjl(pkjgjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(pkjgjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(pkjgjl);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_04_PKJGJL pkjgjl = db_ele.EDU_ELE_04_PKJGJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_04_PKJGJL.Remove(pkjgjl);
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
                    EDU_ELE_04_PKJGJL pkjgjl = db_ele.EDU_ELE_04_PKJGJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_04_PKJGJL.Remove(pkjgjl);
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

        private static int Max_PKJGJL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ſν����¼�����ID
        public int GetMax_PKJGJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_PKJGJL_ID == 0)
                {
                    EDU_ELE_04_PKJGJL pkjgjl = db_ele.EDU_ELE_04_PKJGJL.FirstOrDefault();
                    if (pkjgjl == null)
                    {
                        Max_PKJGJL_ID = 1;
                    }
                    else
                    {
                        //Max_PKJGJL_ID = db_ele.EDU_ELE_04_PKJGJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_PKJGJL_ID++;
                }
                maxId = Max_PKJGJL_ID;
            }
            return maxId;
        }

    }
}
