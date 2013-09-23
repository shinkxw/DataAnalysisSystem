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
    public class XXGCXPJXMLXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_08_A03_XXGCXPJXMLX_DISP> model = db_zxjx.VIEW_EDU_ZXJX_08_A03_XXGCXPJXMLX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxgcxpjxmlx(EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx)
        {
            xxgcxpjxmlx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxgcxpjxmlx(xxgcxpjxmlx);
        }

        public void UpdXxgcxpjxmlx(EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx)
        {
            //����Ĭ��ֵ
            if (xxgcxpjxmlx.ID == 0) xxgcxpjxmlx.ID = 0;//���
            if (xxgcxpjxmlx.SCHOOLID == 0) xxgcxpjxmlx.SCHOOLID = 0;//ѧУID
            if (string.IsNullOrEmpty(xxgcxpjxmlx.LXMC)) xxgcxpjxmlx.LXMC = "";//��������
            if (string.IsNullOrEmpty(xxgcxpjxmlx.PJKM)) xxgcxpjxmlx.PJKM = "";//���ۿ�Ŀ
            EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx_model = db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.FirstOrDefault(e => e.ID == xxgcxpjxmlx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxgcxpjxmlx_model != null)
            {
                xxgcxpjxmlx_model.ID = xxgcxpjxmlx.ID;//���
                xxgcxpjxmlx_model.SCHOOLID = xxgcxpjxmlx.SCHOOLID;//ѧУID
                xxgcxpjxmlx_model.LXMC = xxgcxpjxmlx.LXMC;//��������
                xxgcxpjxmlx_model.PJKM = xxgcxpjxmlx.PJKM;//���ۿ�Ŀ
                db_zxjx.Entry(xxgcxpjxmlx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.Add(xxgcxpjxmlx);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_08_A03_XXGCXPJXMLX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_08_A03_XXGCXPJXMLX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxgcxpjxmlx(xxgcxpjxmlx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjxmlx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjxmlx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx= db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxgcxpjxmlx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxgcxpjxmlx(xxgcxpjxmlx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjxmlx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjxmlx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx = db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.Remove(xxgcxpjxmlx);
                db_zxjx.SaveChanges();
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
                    EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx = db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.Remove(xxgcxpjxmlx);
                    db_zxjx.SaveChanges();
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

        private static int Max_XXGCXPJXMLX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ��ѧϰ������������Ŀ���ͱ����ID
        public int GetMax_XXGCXPJXMLX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXGCXPJXMLX_ID == 0)
                {
                    EDU_ZXJX_08_A03_XXGCXPJXMLX xxgcxpjxmlx = db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.FirstOrDefault();
                    if (xxgcxpjxmlx == null)
                    {
                        Max_XXGCXPJXMLX_ID = 1;
                    }
                    else
                    {
                        //Max_XXGCXPJXMLX_ID = db_zxjx.EDU_ZXJX_08_A03_XXGCXPJXMLX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXGCXPJXMLX_ID++;
                }
                maxId = Max_XXGCXPJXMLX_ID;
            }
            return maxId;
        }

    }
}
