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
    public class XXSXZYController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A03_XXSXZY_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxsxzy(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            xxsxzy.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxsxzy(xxsxzy);
        }

        public void UpdXxsxzy(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            //����Ĭ��ֵ
            if (xxsxzy.ID == 0) xxsxzy.ID = 0;//ʵϰ��/��ID
            if (xxsxzy.SCHOOLID == 0) xxsxzy.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xxsxzy.SXJHID == 0) xxsxzy.SXJHID = 0;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
            if (xxsxzy.SXJDID == 0) xxsxzy.SXJDID = 0;//ʵϰ�׶�ID   ѧУʵϰ�׶α�
            if (string.IsNullOrEmpty(xxsxzy.MC)) xxsxzy.MC = "";//����
            if (xxsxzy.KSSJ == 0) xxsxzy.KSSJ = 0;//��ʼʱ��
            if (xxsxzy.JSSJ == 0) xxsxzy.JSSJ = 0;//����ʱ��
            if (xxsxzy.LX == 0) xxsxzy.LX = 0;//����
            EDU_ZZJX_07_A03_XXSXZY xxsxzy_model = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.FirstOrDefault(e => e.ID == xxsxzy.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxsxzy_model != null)
            {
                xxsxzy_model.ID = xxsxzy.ID;//ʵϰ��/��ID
                xxsxzy_model.SCHOOLID = xxsxzy.SCHOOLID;//ѧУID   ѧУ���ñ�
                xxsxzy_model.SXJHID = xxsxzy.SXJHID;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
                xxsxzy_model.SXJDID = xxsxzy.SXJDID;//ʵϰ�׶�ID   ѧУʵϰ�׶α�
                xxsxzy_model.MC = xxsxzy.MC;//����
                xxsxzy_model.KSSJ = xxsxzy.KSSJ;//��ʼʱ��
                xxsxzy_model.JSSJ = xxsxzy.JSSJ;//����ʱ��
                xxsxzy_model.LX = xxsxzy.LX;//����
                db_zzjx.Entry(xxsxzy_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Add(xxsxzy);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A03_XXSXZY());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A03_XXSXZY());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxsxzy(xxsxzy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxzy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxzy);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A03_XXSXZY xxsxzy= db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxsxzy);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A03_XXSXZY xxsxzy)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxsxzy(xxsxzy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxsxzy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxsxzy);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A03_XXSXZY xxsxzy = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Remove(xxsxzy);
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
                    EDU_ZZJX_07_A03_XXSXZY xxsxzy = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Remove(xxsxzy);
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

        private static int Max_XXSXZY_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧУʵϰ��/�±����ID
        public int GetMax_XXSXZY_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXSXZY_ID == 0)
                {
                    EDU_ZZJX_07_A03_XXSXZY xxsxzy = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.FirstOrDefault();
                    if (xxsxzy == null)
                    {
                        Max_XXSXZY_ID = 1;
                    }
                    else
                    {
                        //Max_XXSXZY_ID = db_zzjx.EDU_ZZJX_07_A03_XXSXZY.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXSXZY_ID++;
                }
                maxId = Max_XXSXZY_ID;
            }
            return maxId;
        }

    }
}
