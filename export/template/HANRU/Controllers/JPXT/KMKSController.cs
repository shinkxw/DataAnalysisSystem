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
    public class KMKSController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_04_01_KMKS_DISP> model = db_jpxt.VIEW_EDU_JPXT_04_01_KMKS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddKmks(EDU_JPXT_04_01_KMKS kmks)
        {
            kmks.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdKmks(kmks);
        }

        public void UpdKmks(EDU_JPXT_04_01_KMKS kmks)
        {
            //����Ĭ��ֵ
            if (kmks.ID == 0) kmks.ID = 0;//���
            if (kmks.SCHOOLID == 0) kmks.SCHOOLID = 0;//ѧУID
            if (kmks.JLYOLID == 0) kmks.JLYOLID = 0;//����ԱID
            if (kmks.KMID == 0) kmks.KMID = 0;//��ĿID
            if (kmks.KSSJ == 0) kmks.KSSJ = 0;//����ʱ��
            if (string.IsNullOrEmpty(kmks.BZ)) kmks.BZ = "";//��ע
            EDU_JPXT_04_01_KMKS kmks_model = db_jpxt.EDU_JPXT_04_01_KMKS.FirstOrDefault(e => e.ID == kmks.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (kmks_model != null)
            {
                kmks_model.ID = kmks.ID;//���
                kmks_model.SCHOOLID = kmks.SCHOOLID;//ѧУID
                kmks_model.JLYOLID = kmks.JLYOLID;//����ԱID
                kmks_model.KMID = kmks.KMID;//��ĿID
                kmks_model.KSSJ = kmks.KSSJ;//����ʱ��
                kmks_model.BZ = kmks.BZ;//��ע
                db_jpxt.Entry(kmks_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_04_01_KMKS.Add(kmks);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_04_01_KMKS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_04_01_KMKS());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_04_01_KMKS kmks)
        {
            InitViewBag();
            try
            {
                //
                //
                AddKmks(kmks);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kmks);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kmks);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_04_01_KMKS kmks= db_jpxt.EDU_JPXT_04_01_KMKS.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(kmks);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_04_01_KMKS kmks)
        {
            InitViewBag();
            try
            {
                
                
                UpdKmks(kmks);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(kmks);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(kmks);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_04_01_KMKS kmks = db_jpxt.EDU_JPXT_04_01_KMKS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_04_01_KMKS.Remove(kmks);
                db_jpxt.SaveChanges();
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
                    EDU_JPXT_04_01_KMKS kmks = db_jpxt.EDU_JPXT_04_01_KMKS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_04_01_KMKS.Remove(kmks);
                    db_jpxt.SaveChanges();
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

        private static int Max_KMKS_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��Ŀ���Ա����ID
        public int GetMax_KMKS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_KMKS_ID == 0)
                {
                    EDU_JPXT_04_01_KMKS kmks = db_jpxt.EDU_JPXT_04_01_KMKS.FirstOrDefault();
                    if (kmks == null)
                    {
                        Max_KMKS_ID = 1;
                    }
                    else
                    {
                        //Max_KMKS_ID = db_jpxt.EDU_JPXT_04_01_KMKS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_KMKS_ID++;
                }
                maxId = Max_KMKS_ID;
            }
            return maxId;
        }

    }
}
