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
    public class XXSXJHController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxsxjh(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            xxsxjh.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxsxjh(xxsxjh);
        }

        public void UpdXxsxjh(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            //����Ĭ��ֵ
            if (xxsxjh.ID == 0) xxsxjh.ID = 0;//ʵϰ�ƻ�ID
            if (xxsxjh.SCHOOLID == 0) xxsxjh.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(xxsxjh.JHBT)) xxsxjh.JHBT = "";//�ƻ�����
            if (string.IsNullOrEmpty(xxsxjh.NJ)) xxsxjh.NJ = "";//�꼶
            if (xxsxjh.BGXS == 0) xxsxjh.BGXS = 0;//������ʽ
            if (string.IsNullOrEmpty(xxsxjh.SFSX)) xxsxjh.SFSX = "";//�ƻ��Ƿ���Ч   �ڿη�ʽ�����
            EDU_ZZJX_07_A01_XXSXJH xxsxjh_model = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.FirstOrDefault(e => e.ID == xxsxjh.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxsxjh_model != null)
            {
                xxsxjh_model.ID = xxsxjh.ID;//ʵϰ�ƻ�ID
                xxsxjh_model.SCHOOLID = xxsxjh.SCHOOLID;//ѧУID   ѧУ���ñ�
                xxsxjh_model.JHBT = xxsxjh.JHBT;//�ƻ�����
                xxsxjh_model.NJ = xxsxjh.NJ;//�꼶
                xxsxjh_model.BGXS = xxsxjh.BGXS;//������ʽ
                xxsxjh_model.SFSX = xxsxjh.SFSX;//�ƻ��Ƿ���Ч   �ڿη�ʽ�����
                db_zzjx.Entry(xxsxjh_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Add(xxsxjh);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SKFSLst = JBLDAL.GetJY_SKFSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A01_XXSXJH());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A01_XXSXJH());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxsxjh(xxsxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxjh);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A01_XXSXJH xxsxjh= db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxsxjh);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A01_XXSXJH xxsxjh)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxsxjh(xxsxjh);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxjh);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxjh);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A01_XXSXJH xxsxjh = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Remove(xxsxjh);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_07_A01_XXSXJH xxsxjh = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Remove(xxsxjh);
                    db_zzjx.SaveChanges();
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

        private static int Max_XXSXJH_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧУʵϰ�ƻ������ID
        public int GetMax_XXSXJH_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXSXJH_ID == 0)
                {
                    EDU_ZZJX_07_A01_XXSXJH xxsxjh = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.FirstOrDefault();
                    if (xxsxjh == null)
                    {
                        Max_XXSXJH_ID = 1;
                    }
                    else
                    {
                        //Max_XXSXJH_ID = db_zzjx.EDU_ZZJX_07_A01_XXSXJH.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXSXJH_ID++;
                }
                maxId = Max_XXSXJH_ID;
            }
            return maxId;
        }

    }
}
