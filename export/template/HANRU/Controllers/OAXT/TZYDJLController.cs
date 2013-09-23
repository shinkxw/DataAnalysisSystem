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
    public class TZYDJLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_10_A02_TZYDJL_DISP> model = db_oaxt.VIEW_EDU_OAXT_10_A02_TZYDJL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTzydjl(EDU_OAXT_10_A02_TZYDJL tzydjl)
        {
            tzydjl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTzydjl(tzydjl);
        }

        public void UpdTzydjl(EDU_OAXT_10_A02_TZYDJL tzydjl)
        {
            //����Ĭ��ֵ
            if (tzydjl.ID == 0) tzydjl.ID = 0;//֪ͨ�Ķ���¼ID
            if (tzydjl.SCHOOLID == 0) tzydjl.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (tzydjl.TZID == 0) tzydjl.TZID = 0;//֪ͨID   ֪ͨ���ݱ�
            if (string.IsNullOrEmpty(tzydjl.BTZRID)) tzydjl.BTZRID = "";//��֪ͨ��ID   Ӧ��ϵͳ�û���
            if (tzydjl.YDRQ == 0) tzydjl.YDRQ = 0;//�Ķ�����
            if (string.IsNullOrEmpty(tzydjl.SFYD)) tzydjl.SFYD = "";//�Ƿ����Ķ�   �Ƿ��־�����
            EDU_OAXT_10_A02_TZYDJL tzydjl_model = db_oaxt.EDU_OAXT_10_A02_TZYDJL.FirstOrDefault(e => e.ID == tzydjl.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tzydjl_model != null)
            {
                tzydjl_model.ID = tzydjl.ID;//֪ͨ�Ķ���¼ID
                tzydjl_model.SCHOOLID = tzydjl.SCHOOLID;//ѧУID   ѧУ���ñ�
                tzydjl_model.TZID = tzydjl.TZID;//֪ͨID   ֪ͨ���ݱ�
                tzydjl_model.BTZRID = tzydjl.BTZRID;//��֪ͨ��ID   Ӧ��ϵͳ�û���
                tzydjl_model.YDRQ = tzydjl.YDRQ;//�Ķ�����
                tzydjl_model.SFYD = tzydjl.SFYD;//�Ƿ����Ķ�   �Ƿ��־�����
                db_oaxt.Entry(tzydjl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_oaxt.EDU_OAXT_10_A02_TZYDJL.Add(tzydjl);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_10_A02_TZYDJL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_10_A02_TZYDJL());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_10_A02_TZYDJL tzydjl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTzydjl(tzydjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tzydjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tzydjl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_10_A02_TZYDJL tzydjl= db_oaxt.EDU_OAXT_10_A02_TZYDJL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tzydjl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_10_A02_TZYDJL tzydjl)
        {
            InitViewBag();
            try
            {
                
                
                UpdTzydjl(tzydjl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tzydjl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tzydjl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_OAXT_10_A02_TZYDJL tzydjl = db_oaxt.EDU_OAXT_10_A02_TZYDJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_10_A02_TZYDJL.Remove(tzydjl);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_10_A02_TZYDJL tzydjl = db_oaxt.EDU_OAXT_10_A02_TZYDJL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_10_A02_TZYDJL.Remove(tzydjl);
                    db_oaxt.SaveChanges();
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

        private static int Max_TZYDJL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ֪ͨ�Ķ���¼���ID
        public int GetMax_TZYDJL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TZYDJL_ID == 0)
                {
                    EDU_OAXT_10_A02_TZYDJL tzydjl = db_oaxt.EDU_OAXT_10_A02_TZYDJL.FirstOrDefault();
                    if (tzydjl == null)
                    {
                        Max_TZYDJL_ID = 1;
                    }
                    else
                    {
                        //Max_TZYDJL_ID = db_oaxt.EDU_OAXT_10_A02_TZYDJL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TZYDJL_ID++;
                }
                maxId = Max_TZYDJL_ID;
            }
            return maxId;
        }

    }
}
