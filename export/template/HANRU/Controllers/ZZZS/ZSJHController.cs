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
    public class ZSJHController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZZS_01_A01_ZSJH_DISP> model = db_zzzs.VIEW_EDU_ZZZS_01_A01_ZSJH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZsjh(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            zsjh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZsjh(zsjh);
        }

        public void UpdZsjh(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            //����Ĭ��ֵ
            if (zsjh.ID == 0) zsjh.ID = 0;//���
            if (zsjh.SCHOOLID == 0) zsjh.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (zsjh.ZYXXID == 0) zsjh.ZYXXID = 0;//רҵ������Ϣ   רҵ������Ϣ���ݱ�
            if (zsjh.XNID == 0) zsjh.XNID = 0;//ѧ��   ѧ���
            if (zsjh.ZSJHRS == 0) zsjh.ZSJHRS = 0;//�����ƻ�
            if (string.IsNullOrEmpty(zsjh.BZ)) zsjh.BZ = "";//��ע
            EDU_ZZZS_01_A01_ZSJH zsjh_model = db_zzzs.EDU_ZZZS_01_A01_ZSJH.FirstOrDefault(e => e.ID == zsjh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zsjh_model != null)
            {
                zsjh_model.ID = zsjh.ID;//���
                zsjh_model.SCHOOLID = zsjh.SCHOOLID;//ѧУ��   ѧУ���ñ�
                zsjh_model.ZYXXID = zsjh.ZYXXID;//רҵ������Ϣ   רҵ������Ϣ���ݱ�
                zsjh_model.XNID = zsjh.XNID;//ѧ��   ѧ���
                zsjh_model.ZSJHRS = zsjh.ZSJHRS;//�����ƻ�
                zsjh_model.BZ = zsjh.BZ;//��ע
                db_zzzs.Entry(zsjh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzzs.EDU_ZZZS_01_A01_ZSJH.Add(zsjh);
            }
            db_zzzs.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZZS_01_A01_ZSJH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZZS_01_A01_ZSJH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZsjh(zsjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsjh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZZS_01_A01_ZSJH zsjh= db_zzzs.EDU_ZZZS_01_A01_ZSJH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zsjh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZZS_01_A01_ZSJH zsjh)
        {
            InitViewBag();
            try
            {
                
                
                UpdZsjh(zsjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsjh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZZS_01_A01_ZSJH zsjh = db_zzzs.EDU_ZZZS_01_A01_ZSJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzzs.EDU_ZZZS_01_A01_ZSJH.Remove(zsjh);
                db_zzzs.SaveChanges();
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
                    EDU_ZZZS_01_A01_ZSJH zsjh = db_zzzs.EDU_ZZZS_01_A01_ZSJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzzs.EDU_ZZZS_01_A01_ZSJH.Remove(zsjh);
                    db_zzzs.SaveChanges();
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

        private static int Max_ZSJH_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�����ƻ����ݱ����ID
        public int GetMax_ZSJH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZSJH_ID == 0)
                {
                    EDU_ZZZS_01_A01_ZSJH zsjh = db_zzzs.EDU_ZZZS_01_A01_ZSJH.FirstOrDefault();
                    if (zsjh == null)
                    {
                        Max_ZSJH_ID = 1;
                    }
                    else
                    {
                        //Max_ZSJH_ID = db_zzzs.EDU_ZZZS_01_A01_ZSJH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZSJH_ID++;
                }
                maxId = Max_ZSJH_ID;
            }
            return maxId;
        }

    }
}
