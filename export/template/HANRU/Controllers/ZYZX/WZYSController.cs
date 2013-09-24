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
    public class WZYSController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_WZYS_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_WZYS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWzys(EDU_ZYZX_MHXT_WZYS wzys)
        {
            wzys.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzys(wzys);
        }

        public void UpdWzys(EDU_ZYZX_MHXT_WZYS wzys)
        {
            //����Ĭ��ֵ
            if (wzys.ID == 0) wzys.ID = 0;//��ʽ��ID
            if (wzys.SCHOOLID == 0) wzys.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (wzys.WEBID == 0) wzys.WEBID = 0;//��վID   ��վ����
            if (string.IsNullOrEmpty(wzys.NAME)) wzys.NAME = "";//��ʽ��
            if (string.IsNullOrEmpty(wzys.SHOWIMG)) wzys.SHOWIMG = "";//Ч��ͼ
            EDU_ZYZX_MHXT_WZYS wzys_model = db_zyzx.EDU_ZYZX_MHXT_WZYS.FirstOrDefault(e => e.ID == wzys.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzys_model != null)
            {
                wzys_model.ID = wzys.ID;//��ʽ��ID
                wzys_model.SCHOOLID = wzys.SCHOOLID;//ѧУ��   ѧУ���ñ�
                wzys_model.WEBID = wzys.WEBID;//��վID   ��վ����
                wzys_model.NAME = wzys.NAME;//��ʽ��
                wzys_model.SHOWIMG = wzys.SHOWIMG;//Ч��ͼ
                db_zyzx.Entry(wzys_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zyzx.EDU_ZYZX_MHXT_WZYS.Add(wzys);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_WZYS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_WZYS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_WZYS wzys)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzys(wzys);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzys);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzys);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_WZYS wzys= db_zyzx.EDU_ZYZX_MHXT_WZYS.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzys);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_WZYS wzys)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzys(wzys);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzys);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzys);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZYZX_MHXT_WZYS wzys = db_zyzx.EDU_ZYZX_MHXT_WZYS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_WZYS.Remove(wzys);
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
                    EDU_ZYZX_MHXT_WZYS wzys = db_zyzx.EDU_ZYZX_MHXT_WZYS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_WZYS.Remove(wzys);
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

        private static int Max_WZYS_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��ʽ�����ID
        public int GetMax_WZYS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZYS_ID == 0)
                {
                    EDU_ZYZX_MHXT_WZYS wzys = db_zyzx.EDU_ZYZX_MHXT_WZYS.FirstOrDefault();
                    if (wzys == null)
                    {
                        Max_WZYS_ID = 1;
                    }
                    else
                    {
                        //Max_WZYS_ID = db_zyzx.EDU_ZYZX_MHXT_WZYS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZYS_ID++;
                }
                maxId = Max_WZYS_ID;
            }
            return maxId;
        }

    }
}
