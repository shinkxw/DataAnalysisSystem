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
    public class XXSXJDController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A02_XXSXJD_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxsxjd(EDU_ZZJX_07_A02_XXSXJD xxsxjd)
        {
            xxsxjd.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxsxjd(xxsxjd);
        }

        public void UpdXxsxjd(EDU_ZZJX_07_A02_XXSXJD xxsxjd)
        {
            //����Ĭ��ֵ
            if (xxsxjd.ID == 0) xxsxjd.ID = 0;//ʵϰ�׶�ID
            if (xxsxjd.SCHOOLID == 0) xxsxjd.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xxsxjd.SXJHID == 0) xxsxjd.SXJHID = 0;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
            if (string.IsNullOrEmpty(xxsxjd.JDM)) xxsxjd.JDM = "";//�׶���
            if (xxsxjd.JDKSSJ == 0) xxsxjd.JDKSSJ = 0;//�׶ο�ʼʱ��
            if (xxsxjd.JDJSSJ == 0) xxsxjd.JDJSSJ = 0;//�׶ν���ʱ��
            EDU_ZZJX_07_A02_XXSXJD xxsxjd_model = db_zzjx.EDU_ZZJX_07_A02_XXSXJD.FirstOrDefault(e => e.ID == xxsxjd.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxsxjd_model != null)
            {
                xxsxjd_model.ID = xxsxjd.ID;//ʵϰ�׶�ID
                xxsxjd_model.SCHOOLID = xxsxjd.SCHOOLID;//ѧУID   ѧУ���ñ�
                xxsxjd_model.SXJHID = xxsxjd.SXJHID;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
                xxsxjd_model.JDM = xxsxjd.JDM;//�׶���
                xxsxjd_model.JDKSSJ = xxsxjd.JDKSSJ;//�׶ο�ʼʱ��
                xxsxjd_model.JDJSSJ = xxsxjd.JDJSSJ;//�׶ν���ʱ��
                db_zzjx.Entry(xxsxjd_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A02_XXSXJD.Add(xxsxjd);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A02_XXSXJD());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A02_XXSXJD());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A02_XXSXJD xxsxjd)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxsxjd(xxsxjd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxjd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxjd);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A02_XXSXJD xxsxjd= db_zzjx.EDU_ZZJX_07_A02_XXSXJD.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxsxjd);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A02_XXSXJD xxsxjd)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxsxjd(xxsxjd);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxjd);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxjd);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_07_A02_XXSXJD xxsxjd = db_zzjx.EDU_ZZJX_07_A02_XXSXJD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A02_XXSXJD.Remove(xxsxjd);
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
                    EDU_ZZJX_07_A02_XXSXJD xxsxjd = db_zzjx.EDU_ZZJX_07_A02_XXSXJD.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A02_XXSXJD.Remove(xxsxjd);
                    db_zzjx.SaveChanges();
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

        private static int Max_XXSXJD_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧУʵϰ�׶α����ID
        public int GetMax_XXSXJD_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXSXJD_ID == 0)
                {
                    EDU_ZZJX_07_A02_XXSXJD xxsxjd = db_zzjx.EDU_ZZJX_07_A02_XXSXJD.FirstOrDefault();
                    if (xxsxjd == null)
                    {
                        Max_XXSXJD_ID = 1;
                    }
                    else
                    {
                        //Max_XXSXJD_ID = db_zzjx.EDU_ZZJX_07_A02_XXSXJD.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXSXJD_ID++;
                }
                maxId = Max_XXSXJD_ID;
            }
            return maxId;
        }

    }
}
