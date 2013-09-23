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
    public class FWLLController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_FWLL_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_FWLL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddFwll(EDU_ZYZX_MHXT_FWLL fwll)
        {
            fwll.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdFwll(fwll);
        }

        public void UpdFwll(EDU_ZYZX_MHXT_FWLL fwll)
        {
            //����Ĭ��ֵ
            if (fwll.ID == 0) fwll.ID = 0;//��������ID
            if (fwll.SCHOOLID == 0) fwll.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (fwll.WEBID == 0) fwll.WEBID = 0;//��վID   ��վ����
            if (string.IsNullOrEmpty(fwll.ACCESSIP)) fwll.ACCESSIP = "";//����IP
            if (string.IsNullOrEmpty(fwll.ACCESSURL)) fwll.ACCESSURL = "";//��������
            if (fwll.ACCESSTIME == 0) fwll.ACCESSTIME = 0;//����ʱ��
            EDU_ZYZX_MHXT_FWLL fwll_model = db_zyzx.EDU_ZYZX_MHXT_FWLL.FirstOrDefault(e => e.ID == fwll.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (fwll_model != null)
            {
                fwll_model.ID = fwll.ID;//��������ID
                fwll_model.SCHOOLID = fwll.SCHOOLID;//ѧУ��   ѧУ���ñ�
                fwll_model.WEBID = fwll.WEBID;//��վID   ��վ����
                fwll_model.ACCESSIP = fwll.ACCESSIP;//����IP
                fwll_model.ACCESSURL = fwll.ACCESSURL;//��������
                fwll_model.ACCESSTIME = fwll.ACCESSTIME;//����ʱ��
                db_zyzx.Entry(fwll_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zyzx.EDU_ZYZX_MHXT_FWLL.Add(fwll);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_FWLL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_FWLL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_FWLL fwll)
        {
            InitViewBag();
            try
            {
                //
                //
                AddFwll(fwll);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fwll);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fwll);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_FWLL fwll= db_zyzx.EDU_ZYZX_MHXT_FWLL.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(fwll);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_FWLL fwll)
        {
            InitViewBag();
            try
            {
                
                
                UpdFwll(fwll);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(fwll);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(fwll);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZYZX_MHXT_FWLL fwll = db_zyzx.EDU_ZYZX_MHXT_FWLL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_FWLL.Remove(fwll);
                db_zyzx.SaveChanges();
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
                    EDU_ZYZX_MHXT_FWLL fwll = db_zyzx.EDU_ZYZX_MHXT_FWLL.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_FWLL.Remove(fwll);
                    db_zyzx.SaveChanges();
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

        private static int Max_FWLL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�����������ID
        public int GetMax_FWLL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_FWLL_ID == 0)
                {
                    EDU_ZYZX_MHXT_FWLL fwll = db_zyzx.EDU_ZYZX_MHXT_FWLL.FirstOrDefault();
                    if (fwll == null)
                    {
                        Max_FWLL_ID = 1;
                    }
                    else
                    {
                        //Max_FWLL_ID = db_zyzx.EDU_ZYZX_MHXT_FWLL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_FWLL_ID++;
                }
                maxId = Max_FWLL_ID;
            }
            return maxId;
        }

    }
}
