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
    public class YQLJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_YQLJ_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_YQLJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddYqlj(EDU_ZYZX_MHXT_YQLJ yqlj)
        {
            yqlj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdYqlj(yqlj);
        }

        public void UpdYqlj(EDU_ZYZX_MHXT_YQLJ yqlj)
        {
            //����Ĭ��ֵ
            if (yqlj.ID == 0) yqlj.ID = 0;//��������ID
            if (yqlj.SCHOOLID == 0) yqlj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (yqlj.WEBID == 0) yqlj.WEBID = 0;//��վID   ��վ����
            if (string.IsNullOrEmpty(yqlj.TITLE)) yqlj.TITLE = "";//����
            if (yqlj.TYPEID == 0) yqlj.TYPEID = 0;//����   ������������
            if (string.IsNullOrEmpty(yqlj.IMAGEURL)) yqlj.IMAGEURL = "";//ͼƬ
            if (string.IsNullOrEmpty(yqlj.URL)) yqlj.URL = "";//����
            EDU_ZYZX_MHXT_YQLJ yqlj_model = db_zyzx.EDU_ZYZX_MHXT_YQLJ.FirstOrDefault(e => e.ID == yqlj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (yqlj_model != null)
            {
                yqlj_model.ID = yqlj.ID;//��������ID
                yqlj_model.SCHOOLID = yqlj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                yqlj_model.WEBID = yqlj.WEBID;//��վID   ��վ����
                yqlj_model.TITLE = yqlj.TITLE;//����
                yqlj_model.TYPEID = yqlj.TYPEID;//����   ������������
                yqlj_model.IMAGEURL = yqlj.IMAGEURL;//ͼƬ
                yqlj_model.URL = yqlj.URL;//����
                db_zyzx.Entry(yqlj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zyzx.EDU_ZYZX_MHXT_YQLJ.Add(yqlj);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_YQLJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_YQLJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_YQLJ yqlj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddYqlj(yqlj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yqlj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yqlj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_YQLJ yqlj= db_zyzx.EDU_ZYZX_MHXT_YQLJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(yqlj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_YQLJ yqlj)
        {
            InitViewBag();
            try
            {
                
                
                UpdYqlj(yqlj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yqlj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yqlj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZYZX_MHXT_YQLJ yqlj = db_zyzx.EDU_ZYZX_MHXT_YQLJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_YQLJ.Remove(yqlj);
                db_zyzx.SaveChanges();
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
                    EDU_ZYZX_MHXT_YQLJ yqlj = db_zyzx.EDU_ZYZX_MHXT_YQLJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_YQLJ.Remove(yqlj);
                    db_zyzx.SaveChanges();
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

        private static int Max_YQLJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�����������ID
        public int GetMax_YQLJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_YQLJ_ID == 0)
                {
                    EDU_ZYZX_MHXT_YQLJ yqlj = db_zyzx.EDU_ZYZX_MHXT_YQLJ.FirstOrDefault();
                    if (yqlj == null)
                    {
                        Max_YQLJ_ID = 1;
                    }
                    else
                    {
                        //Max_YQLJ_ID = db_zyzx.EDU_ZYZX_MHXT_YQLJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_YQLJ_ID++;
                }
                maxId = Max_YQLJ_ID;
            }
            return maxId;
        }

    }
}
