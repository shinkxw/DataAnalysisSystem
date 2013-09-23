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
    public class SCHOOLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_01_SCHOOL_DISP> model = db_ele.VIEW_EDU_ELE_01_SCHOOL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.SCHOOLID.Contains(searchkey)).ToList();
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

        public void AddSchool(EDU_ELE_01_SCHOOL school)
        {
            school.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSchool(school);
        }

        public void UpdSchool(EDU_ELE_01_SCHOOL school)
        {
            //����Ĭ��ֵ
            if (school.SCHOOLID == 0) school.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(school.SCHOOLNAME)) school.SCHOOLNAME = "";//ѧУ����
            if (school.SCHOOLTYPE == 0) school.SCHOOLTYPE = 0;//ѧУ����
            if (school.XNID == 0) school.XNID = 0;//ѧ��ID
            if (school.XQID == 0) school.XQID = 0;//ѧ��ID   ѧ�����ݱ�
            if (string.IsNullOrEmpty(school.MatchURL)) school.MatchURL = "";//ƥ��url
            if (string.IsNullOrEmpty(school.MenhuURL)) school.MenhuURL = "";//�Ż�url
            if (school.MenhuWebid == 0) school.MenhuWebid = 0;//�Ż�webid
            if (school.LogLevel == 0) school.LogLevel = 0;//��־����
            if (string.IsNullOrEmpty(school.ModuleIdList)) school.ModuleIdList = "";//Ȩ���б�
            EDU_ELE_01_SCHOOL school_model = db_ele.EDU_ELE_01_SCHOOL.FirstOrDefault(e => e.SCHOOLID == school.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (school_model != null)
            {
                school_model.SCHOOLID = school.SCHOOLID;//ѧУID   ѧУ���ñ�
                school_model.SCHOOLNAME = school.SCHOOLNAME;//ѧУ����
                school_model.SCHOOLTYPE = school.SCHOOLTYPE;//ѧУ����
                school_model.XNID = school.XNID;//ѧ��ID
                school_model.XQID = school.XQID;//ѧ��ID   ѧ�����ݱ�
                school_model.MatchURL = school.MatchURL;//ƥ��url
                school_model.MenhuURL = school.MenhuURL;//�Ż�url
                school_model.MenhuWebid = school.MenhuWebid;//�Ż�webid
                school_model.LogLevel = school.LogLevel;//��־����
                school_model.ModuleIdList = school.ModuleIdList;//Ȩ���б�
                db_ele.Entry(school_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_01_SCHOOL.Add(school);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_01_SCHOOL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_01_SCHOOL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_01_SCHOOL school)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSchool(school);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(school);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(school);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_01_SCHOOL school= db_ele.EDU_ELE_01_SCHOOL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(school);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_01_SCHOOL school)
        {
            InitViewBag();
            try
            {
                
                
                UpdSchool(school);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(school);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(school);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_01_SCHOOL school = db_ele.EDU_ELE_01_SCHOOL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_01_SCHOOL.Remove(school);
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
                    EDU_ELE_01_SCHOOL school = db_ele.EDU_ELE_01_SCHOOL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_01_SCHOOL.Remove(school);
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

        private static int Max_SCHOOL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧУ���ñ����ID
        public int GetMax_SCHOOL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SCHOOL_ID == 0)
                {
                    EDU_ELE_01_SCHOOL school = db_ele.EDU_ELE_01_SCHOOL.FirstOrDefault();
                    if (school == null)
                    {
                        Max_SCHOOL_ID = 1;
                    }
                    else
                    {
                        //Max_SCHOOL_ID = db_ele.EDU_ELE_01_SCHOOL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SCHOOL_ID++;
                }
                maxId = Max_SCHOOL_ID;
            }
            return maxId;
        }

    }
}
