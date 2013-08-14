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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class WZLMController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_WZLM_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_WZLM_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWzlm(EDU_WZXT_MHXT_WZLM wzlm)
        {
            wzlm.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzlm(wzlm);
        }

        public void UpdWzlm(EDU_WZXT_MHXT_WZLM wzlm)
        {
            //����Ĭ��ֵ
            if (wzlm.ID == 0) wzlm.ID = 0;//��վ��Ŀ��������ID
            if (wzlm.SCHOOLID == 0) wzlm.SCHOOLID = 0;//ѧУ��
            if (wzlm.WEBID == 0) wzlm.WEBID = 0;//��վID
            if (wzlm.LMSHOWSTYLE == 0) wzlm.LMSHOWSTYLE = 0;//��Ŀʹ�����ͣ�ʹ�������б�����ͼƬ����Ŀ���ӣ�
            if (string.IsNullOrEmpty(wzlm.NAME)) wzlm.NAME = "";//��Ŀ����
            if (string.IsNullOrEmpty(wzlm.URL)) wzlm.URL = "";//��Ŀ����
            if (string.IsNullOrEmpty(wzlm.IMAGEURL)) wzlm.IMAGEURL = "";//ͼƬ����
            if (wzlm.DEPTH == 0) wzlm.DEPTH = 0;//�㼶
            if (wzlm.PID == 0) wzlm.PID = 0;//��Ŀ¼
            if (wzlm.LISTSHOWSTYLE == 0) wzlm.LISTSHOWSTYLE = 0;//�б���ʾ��ʽ
            if (wzlm.ORDERTYPE == 0) wzlm.ORDERTYPE = 0;//����ʽ����ʱ�䷽ʽ�����˳�򡢷�������
            if (wzlm.SHOWNUMBER == 0) wzlm.SHOWNUMBER = 0;//��ʾ����
            if (wzlm.OPENFLAG == 0) wzlm.OPENFLAG = 0;//��������0�⣬1������
            if (string.IsNullOrEmpty(wzlm.LLQX)) wzlm.LLQX = "";//���Ȩ��
            EDU_WZXT_MHXT_WZLM wzlm_model = db_wzxt.EDU_WZXT_MHXT_WZLM.FirstOrDefault(e => e.ID == wzlm.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzlm_model != null)
            {
                wzlm_model.ID = wzlm.ID;//��վ��Ŀ��������ID
                wzlm_model.SCHOOLID = wzlm.SCHOOLID;//ѧУ��
                wzlm_model.WEBID = wzlm.WEBID;//��վID
                wzlm_model.LMSHOWSTYLE = wzlm.LMSHOWSTYLE;//��Ŀʹ�����ͣ�ʹ�������б�����ͼƬ����Ŀ���ӣ�
                wzlm_model.NAME = wzlm.NAME;//��Ŀ����
                wzlm_model.URL = wzlm.URL;//��Ŀ����
                wzlm_model.IMAGEURL = wzlm.IMAGEURL;//ͼƬ����
                wzlm_model.DEPTH = wzlm.DEPTH;//�㼶
                wzlm_model.PID = wzlm.PID;//��Ŀ¼
                wzlm_model.LISTSHOWSTYLE = wzlm.LISTSHOWSTYLE;//�б���ʾ��ʽ
                wzlm_model.ORDERTYPE = wzlm.ORDERTYPE;//����ʽ����ʱ�䷽ʽ�����˳�򡢷�������
                wzlm_model.SHOWNUMBER = wzlm.SHOWNUMBER;//��ʾ����
                wzlm_model.OPENFLAG = wzlm.OPENFLAG;//��������0�⣬1������
                wzlm_model.LLQX = wzlm.LLQX;//���Ȩ��
                db_wzxt.Entry(wzlm_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_MHXT_WZLM.Add(wzlm);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_WZLM());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_WZLM());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_WZLM wzlm)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzlm(wzlm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzlm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzlm);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_WZLM wzlm= db_wzxt.EDU_WZXT_MHXT_WZLM.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzlm);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_WZLM wzlm)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzlm(wzlm);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzlm);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzlm);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_MHXT_WZLM wzlm = db_wzxt.EDU_WZXT_MHXT_WZLM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_WZLM.Remove(wzlm);
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
                    EDU_WZXT_MHXT_WZLM wzlm = db_wzxt.EDU_WZXT_MHXT_WZLM.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_WZLM.Remove(wzlm);
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

        private static int Max_WZLM_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��վ��Ŀ�����������ID
        public int GetMax_WZLM_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZLM_ID == 0)
                {
                    EDU_WZXT_MHXT_WZLM wzlm = db_wzxt.EDU_WZXT_MHXT_WZLM.FirstOrDefault();
                    if (wzlm == null)
                    {
                        Max_WZLM_ID = 1;
                    }
                    else
                    {
                        //Max_WZLM_ID = db_wzxt.EDU_WZXT_MHXT_WZLM.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZLM_ID++;
                }
                maxId = Max_WZLM_ID;
            }
            return maxId;
        }

    }
}
