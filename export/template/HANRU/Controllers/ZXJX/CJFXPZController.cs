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
    public class CJFXPZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_07_A01_CJFXPZ_DISP> model = db_zxjx.VIEW_EDU_ZXJX_07_A01_CJFXPZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddCjfxpz(EDU_ZXJX_07_A01_CJFXPZ cjfxpz)
        {
            cjfxpz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdCjfxpz(cjfxpz);
        }

        public void UpdCjfxpz(EDU_ZXJX_07_A01_CJFXPZ cjfxpz)
        {
            //����Ĭ��ֵ
            if (cjfxpz.ID == 0) cjfxpz.ID = 0;//���
            if (cjfxpz.SCHOOLID == 0) cjfxpz.SCHOOLID = 0;//ѧУID
            if (string.IsNullOrEmpty(cjfxpz.SSKSID)) cjfxpz.SSKSID = "";//��������
            if (cjfxpz.FXLX == 0) cjfxpz.FXLX = 0;//��������
            if (string.IsNullOrEmpty(cjfxpz.BZ)) cjfxpz.BZ = "";//��ע
            EDU_ZXJX_07_A01_CJFXPZ cjfxpz_model = db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.FirstOrDefault(e => e.ID == cjfxpz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (cjfxpz_model != null)
            {
                cjfxpz_model.ID = cjfxpz.ID;//���
                cjfxpz_model.SCHOOLID = cjfxpz.SCHOOLID;//ѧУID
                cjfxpz_model.SSKSID = cjfxpz.SSKSID;//��������
                cjfxpz_model.FXLX = cjfxpz.FXLX;//��������
                cjfxpz_model.BZ = cjfxpz.BZ;//��ע
                db_zxjx.Entry(cjfxpz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.Add(cjfxpz);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_07_A01_CJFXPZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_07_A01_CJFXPZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_07_A01_CJFXPZ cjfxpz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddCjfxpz(cjfxpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cjfxpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cjfxpz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_07_A01_CJFXPZ cjfxpz= db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(cjfxpz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_07_A01_CJFXPZ cjfxpz)
        {
            InitViewBag();
            try
            {
                
                
                UpdCjfxpz(cjfxpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(cjfxpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(cjfxpz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXJX_07_A01_CJFXPZ cjfxpz = db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.Remove(cjfxpz);
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
                    EDU_ZXJX_07_A01_CJFXPZ cjfxpz = db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.Remove(cjfxpz);
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

        private static int Max_CJFXPZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ɼ��������ñ����ID
        public int GetMax_CJFXPZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_CJFXPZ_ID == 0)
                {
                    EDU_ZXJX_07_A01_CJFXPZ cjfxpz = db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.FirstOrDefault();
                    if (cjfxpz == null)
                    {
                        Max_CJFXPZ_ID = 1;
                    }
                    else
                    {
                        //Max_CJFXPZ_ID = db_zxjx.EDU_ZXJX_07_A01_CJFXPZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_CJFXPZ_ID++;
                }
                maxId = Max_CJFXPZ_ID;
            }
            return maxId;
        }

    }
}
