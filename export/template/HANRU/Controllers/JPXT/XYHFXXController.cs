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
    public class XYHFXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_03_03_XYHFXX_DISP> model = db_jpxt.VIEW_EDU_JPXT_03_03_XYHFXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXyhfxx(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            xyhfxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXyhfxx(xyhfxx);
        }

        public void UpdXyhfxx(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            //����Ĭ��ֵ
            if (xyhfxx.ID == 0) xyhfxx.ID = 0;//���
            if (xyhfxx.SCHOOLID == 0) xyhfxx.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xyhfxx.XYID == 0) xyhfxx.XYID = 0;//ѧԱID   ѧԱ���ݱ�
            if (xyhfxx.HFSJ == 0) xyhfxx.HFSJ = 0;//�ط�ʱ��
            if (string.IsNullOrEmpty(xyhfxx.HFJG)) xyhfxx.HFJG = "";//�طý��
            if (string.IsNullOrEmpty(xyhfxx.BZ)) xyhfxx.BZ = "";//��ע
            EDU_JPXT_03_03_XYHFXX xyhfxx_model = db_jpxt.EDU_JPXT_03_03_XYHFXX.FirstOrDefault(e => e.ID == xyhfxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xyhfxx_model != null)
            {
                xyhfxx_model.ID = xyhfxx.ID;//���
                xyhfxx_model.SCHOOLID = xyhfxx.SCHOOLID;//ѧУID   ѧУ���ñ�
                xyhfxx_model.XYID = xyhfxx.XYID;//ѧԱID   ѧԱ���ݱ�
                xyhfxx_model.HFSJ = xyhfxx.HFSJ;//�ط�ʱ��
                xyhfxx_model.HFJG = xyhfxx.HFJG;//�طý��
                xyhfxx_model.BZ = xyhfxx.BZ;//��ע
                db_jpxt.Entry(xyhfxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_03_03_XYHFXX.Add(xyhfxx);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_03_03_XYHFXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_03_03_XYHFXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXyhfxx(xyhfxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyhfxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyhfxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_03_03_XYHFXX xyhfxx= db_jpxt.EDU_JPXT_03_03_XYHFXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xyhfxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_03_03_XYHFXX xyhfxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXyhfxx(xyhfxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyhfxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyhfxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_03_03_XYHFXX xyhfxx = db_jpxt.EDU_JPXT_03_03_XYHFXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_03_03_XYHFXX.Remove(xyhfxx);
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
                    EDU_JPXT_03_03_XYHFXX xyhfxx = db_jpxt.EDU_JPXT_03_03_XYHFXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_03_03_XYHFXX.Remove(xyhfxx);
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

        private static int Max_XYHFXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧԱ�ط���Ϣ�����ID
        public int GetMax_XYHFXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XYHFXX_ID == 0)
                {
                    EDU_JPXT_03_03_XYHFXX xyhfxx = db_jpxt.EDU_JPXT_03_03_XYHFXX.FirstOrDefault();
                    if (xyhfxx == null)
                    {
                        Max_XYHFXX_ID = 1;
                    }
                    else
                    {
                        //Max_XYHFXX_ID = db_jpxt.EDU_JPXT_03_03_XYHFXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XYHFXX_ID++;
                }
                maxId = Max_XYHFXX_ID;
            }
            return maxId;
        }

    }
}
