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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class WJXHController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZBG_05_01_WJXH_DISP> model = db_zzbg.VIEW_EDU_ZZBG_05_01_WJXH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjxh(EDU_ZZBG_05_01_WJXH wjxh)
        {
            wjxh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjxh(wjxh);
        }

        public void UpdWjxh(EDU_ZZBG_05_01_WJXH wjxh)
        {
            //����Ĭ��ֵ
            if (wjxh.SCHOOLID == 0) wjxh.SCHOOLID = 0;//ѧУ��ѧУID
            if (wjxh.WJID == 0) wjxh.WJID = 0;//�ļ�ID
            if (wjxh.XHSPRID == 0) wjxh.XHSPRID = 0;//����������ID
            if (wjxh.JBRID == 0) wjxh.JBRID = 0;//������ID
            if (string.IsNullOrEmpty(wjxh.XHRQ)) wjxh.XHRQ = "";//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(wjxh.XHSPRGH)) wjxh.XHSPRGH = "";//���������˹��Ź���
            if (string.IsNullOrEmpty(wjxh.XHSM)) wjxh.XHSM = "";//����˵������/�����������ļ������˵�� 
            if (string.IsNullOrEmpty(wjxh.JBRGH)) wjxh.JBRGH = "";//�����˹���ѧ�Ż򹤺�
            EDU_ZZBG_05_01_WJXH wjxh_model = db_zzbg.EDU_ZZBG_05_01_WJXH.FirstOrDefault(e => e.SCHOOLID == wjxh.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjxh_model != null)
            {
                wjxh_model.SCHOOLID = wjxh.SCHOOLID;//ѧУ��ѧУID
                wjxh_model.WJID = wjxh.WJID;//�ļ�ID
                wjxh_model.XHSPRID = wjxh.XHSPRID;//����������ID
                wjxh_model.JBRID = wjxh.JBRID;//������ID
                wjxh_model.XHRQ = wjxh.XHRQ;//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                wjxh_model.XHSPRGH = wjxh.XHSPRGH;//���������˹��Ź���
                wjxh_model.XHSM = wjxh.XHSM;//����˵������/�����������ļ������˵�� 
                wjxh_model.JBRGH = wjxh.JBRGH;//�����˹���ѧ�Ż򹤺�
                db_zzbg.Entry(wjxh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzbg.EDU_ZZBG_05_01_WJXH.Add(wjxh);
            }
            db_zzbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZBG_05_01_WJXH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZBG_05_01_WJXH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZBG_05_01_WJXH wjxh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjxh(wjxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjxh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZBG_05_01_WJXH wjxh= db_zzbg.EDU_ZZBG_05_01_WJXH.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjxh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZBG_05_01_WJXH wjxh)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjxh(wjxh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjxh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjxh);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZBG_05_01_WJXH wjxh = db_zzbg.EDU_ZZBG_05_01_WJXH.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzbg.EDU_ZZBG_05_01_WJXH.Remove(wjxh);
                db_zzbg.SaveChanges();
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
                    EDU_ZZBG_05_01_WJXH wjxh = db_zzbg.EDU_ZZBG_05_01_WJXH.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzbg.EDU_ZZBG_05_01_WJXH.Remove(wjxh);
                    db_zzbg.SaveChanges();
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

        private static int Max_WJXH_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ļ���������������ID
        public int GetMax_WJXH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJXH_ID == 0)
                {
                    EDU_ZZBG_05_01_WJXH wjxh = db_zzbg.EDU_ZZBG_05_01_WJXH.FirstOrDefault();
                    if (wjxh == null)
                    {
                        Max_WJXH_ID = 1;
                    }
                    else
                    {
                        //Max_WJXH_ID = db_zzbg.EDU_ZZBG_05_01_WJXH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJXH_ID++;
                }
                maxId = Max_WJXH_ID;
            }
            return maxId;
        }

    }
}
