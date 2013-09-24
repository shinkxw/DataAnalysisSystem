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
    public class FBQXController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_FBQX_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_FBQX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddFbqx(EDU_ZYZX_MHXT_FBQX fbqx)
        {
            fbqx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdFbqx(fbqx);
        }

        public void UpdFbqx(EDU_ZYZX_MHXT_FBQX fbqx)
        {
            //����Ĭ��ֵ
            if (fbqx.ID == 0) fbqx.ID = 0;//����Ȩ��ID
            if (fbqx.SCHOOLID == 0) fbqx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (fbqx.WEBID == 0) fbqx.WEBID = 0;//��վID
            if (string.IsNullOrEmpty(fbqx.LOGINNAME)) fbqx.LOGINNAME = "";//�û���
            if (string.IsNullOrEmpty(fbqx.LMLIST)) fbqx.LMLIST = "";//��Ŀ
            if (string.IsNullOrEmpty(fbqx.LMNAMELIST)) fbqx.LMNAMELIST = "";//��Ŀ����
            EDU_ZYZX_MHXT_FBQX fbqx_model = db_zyzx.EDU_ZYZX_MHXT_FBQX.FirstOrDefault(e => e.ID == fbqx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (fbqx_model != null)
            {
                fbqx_model.ID = fbqx.ID;//����Ȩ��ID
                fbqx_model.SCHOOLID = fbqx.SCHOOLID;//ѧУ��   ѧУ���ñ�
                fbqx_model.WEBID = fbqx.WEBID;//��վID
                fbqx_model.LOGINNAME = fbqx.LOGINNAME;//�û���
                fbqx_model.LMLIST = fbqx.LMLIST;//��Ŀ
                fbqx_model.LMNAMELIST = fbqx.LMNAMELIST;//��Ŀ����
                db_zyzx.Entry(fbqx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zyzx.EDU_ZYZX_MHXT_FBQX.Add(fbqx);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_FBQX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_FBQX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_FBQX fbqx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddFbqx(fbqx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fbqx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fbqx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_FBQX fbqx= db_zyzx.EDU_ZYZX_MHXT_FBQX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(fbqx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_FBQX fbqx)
        {
            InitViewBag();
            try
            {
                
                
                UpdFbqx(fbqx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fbqx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fbqx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZYZX_MHXT_FBQX fbqx = db_zyzx.EDU_ZYZX_MHXT_FBQX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_FBQX.Remove(fbqx);
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
                    EDU_ZYZX_MHXT_FBQX fbqx = db_zyzx.EDU_ZYZX_MHXT_FBQX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_FBQX.Remove(fbqx);
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

        private static int Max_FBQX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ����Ȩ�����ID
        public int GetMax_FBQX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_FBQX_ID == 0)
                {
                    EDU_ZYZX_MHXT_FBQX fbqx = db_zyzx.EDU_ZYZX_MHXT_FBQX.FirstOrDefault();
                    if (fbqx == null)
                    {
                        Max_FBQX_ID = 1;
                    }
                    else
                    {
                        //Max_FBQX_ID = db_zyzx.EDU_ZYZX_MHXT_FBQX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_FBQX_ID++;
                }
                maxId = Max_FBQX_ID;
            }
            return maxId;
        }

    }
}
