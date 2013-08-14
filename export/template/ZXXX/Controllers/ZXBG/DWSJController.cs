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
    public class DWSJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_13_A01_DWSJ_DISP> model = db_zxbg.VIEW_EDU_ZXBG_13_A01_DWSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddDwsj(EDU_ZXBG_13_A01_DWSJ dwsj)
        {
            dwsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdDwsj(dwsj);
        }

        public void UpdDwsj(EDU_ZXBG_13_A01_DWSJ dwsj)
        {
            //����Ĭ��ֵ
            if (dwsj.ID == 0) dwsj.ID = 0;//��λID
            if (dwsj.SCHOOLID == 0) dwsj.SCHOOLID = 0;//ѧУID
            if (dwsj.SJDWID == 0) dwsj.SJDWID = 0;//�ϼ���λID
            if (dwsj.DWFZRID == 0) dwsj.DWFZRID = 0;//��λ������ID
            if (string.IsNullOrEmpty(dwsj.DWMC)) dwsj.DWMC = "";//��λ����
            if (string.IsNullOrEmpty(dwsj.DWCYIDLB)) dwsj.DWCYIDLB = "";//��λ��ԱID�б�
            EDU_ZXBG_13_A01_DWSJ dwsj_model = db_zxbg.EDU_ZXBG_13_A01_DWSJ.FirstOrDefault(e => e.ID == dwsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (dwsj_model != null)
            {
                dwsj_model.ID = dwsj.ID;//��λID
                dwsj_model.SCHOOLID = dwsj.SCHOOLID;//ѧУID
                dwsj_model.SJDWID = dwsj.SJDWID;//�ϼ���λID
                dwsj_model.DWFZRID = dwsj.DWFZRID;//��λ������ID
                dwsj_model.DWMC = dwsj.DWMC;//��λ����
                dwsj_model.DWCYIDLB = dwsj.DWCYIDLB;//��λ��ԱID�б�
                db_zxbg.Entry(dwsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxbg.EDU_ZXBG_13_A01_DWSJ.Add(dwsj);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_13_A01_DWSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_13_A01_DWSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_13_A01_DWSJ dwsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddDwsj(dwsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(dwsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(dwsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_13_A01_DWSJ dwsj= db_zxbg.EDU_ZXBG_13_A01_DWSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(dwsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_13_A01_DWSJ dwsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdDwsj(dwsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(dwsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(dwsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_13_A01_DWSJ dwsj = db_zxbg.EDU_ZXBG_13_A01_DWSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_13_A01_DWSJ.Remove(dwsj);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_13_A01_DWSJ dwsj = db_zxbg.EDU_ZXBG_13_A01_DWSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_13_A01_DWSJ.Remove(dwsj);
                    db_zxbg.SaveChanges();
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

        private static int Max_DWSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��λ���ݱ����ID
        public int GetMax_DWSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_DWSJ_ID == 0)
                {
                    EDU_ZXBG_13_A01_DWSJ dwsj = db_zxbg.EDU_ZXBG_13_A01_DWSJ.FirstOrDefault();
                    if (dwsj == null)
                    {
                        Max_DWSJ_ID = 1;
                    }
                    else
                    {
                        //Max_DWSJ_ID = db_zxbg.EDU_ZXBG_13_A01_DWSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_DWSJ_ID++;
                }
                maxId = Max_DWSJ_ID;
            }
            return maxId;
        }

    }
}
