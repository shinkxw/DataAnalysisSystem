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
    public class XYKSQKController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_03_02_XYKSQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_03_02_XYKSQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XYID.Contains(searchkey)).ToList();
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

        public void AddXyksqk(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            xyksqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXyksqk(xyksqk);
        }

        public void UpdXyksqk(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            //����Ĭ��ֵ
            if (xyksqk.XYID == 0) xyksqk.XYID = 0;//ѧԱID   ѧԱ���ݱ�
            if (xyksqk.SCHOOLID == 0) xyksqk.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xyksqk.KMYIKSSJ == 0) xyksqk.KMYIKSSJ = 0;//��Ŀһ����ʱ��
            if (xyksqk.KMYIKSJG == 0) xyksqk.KMYIKSJG = 0;//��Ŀһ���Խ��
            if (xyksqk.KMERKSSJ == 0) xyksqk.KMERKSSJ = 0;//��Ŀ������ʱ��
            if (xyksqk.KMERYKSJG == 0) xyksqk.KMERYKSJG = 0;//��Ŀ�����Խ��
            if (xyksqk.KMSANKSSJ == 0) xyksqk.KMSANKSSJ = 0;//��Ŀ������ʱ��
            if (xyksqk.KMSANKSJG == 0) xyksqk.KMSANKSJG = 0;//��Ŀ�����Խ��
            if (xyksqk.KMSIKSSJ == 0) xyksqk.KMSIKSSJ = 0;//��Ŀ�Ŀ���ʱ��
            if (xyksqk.KMSIKSJG == 0) xyksqk.KMSIKSJG = 0;//��Ŀ�Ŀ��Խ��
            if (xyksqk.KMWUKSSJ == 0) xyksqk.KMWUKSSJ = 0;//��Ŀ�忼��ʱ��
            if (xyksqk.KMWUKSJG == 0) xyksqk.KMWUKSJG = 0;//��Ŀ�忼�Խ��
            EDU_JPXT_03_02_XYKSQK xyksqk_model = db_jpxt.EDU_JPXT_03_02_XYKSQK.FirstOrDefault(e => e.XYID == xyksqk.XYID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xyksqk_model != null)
            {
                xyksqk_model.XYID = xyksqk.XYID;//ѧԱID   ѧԱ���ݱ�
                xyksqk_model.SCHOOLID = xyksqk.SCHOOLID;//ѧУID   ѧУ���ñ�
                xyksqk_model.KMYIKSSJ = xyksqk.KMYIKSSJ;//��Ŀһ����ʱ��
                xyksqk_model.KMYIKSJG = xyksqk.KMYIKSJG;//��Ŀһ���Խ��
                xyksqk_model.KMERKSSJ = xyksqk.KMERKSSJ;//��Ŀ������ʱ��
                xyksqk_model.KMERYKSJG = xyksqk.KMERYKSJG;//��Ŀ�����Խ��
                xyksqk_model.KMSANKSSJ = xyksqk.KMSANKSSJ;//��Ŀ������ʱ��
                xyksqk_model.KMSANKSJG = xyksqk.KMSANKSJG;//��Ŀ�����Խ��
                xyksqk_model.KMSIKSSJ = xyksqk.KMSIKSSJ;//��Ŀ�Ŀ���ʱ��
                xyksqk_model.KMSIKSJG = xyksqk.KMSIKSJG;//��Ŀ�Ŀ��Խ��
                xyksqk_model.KMWUKSSJ = xyksqk.KMWUKSSJ;//��Ŀ�忼��ʱ��
                xyksqk_model.KMWUKSJG = xyksqk.KMWUKSJG;//��Ŀ�忼�Խ��
                db_jpxt.Entry(xyksqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_03_02_XYKSQK.Add(xyksqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_03_02_XYKSQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_03_02_XYKSQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXyksqk(xyksqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyksqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyksqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_03_02_XYKSQK xyksqk= db_jpxt.EDU_JPXT_03_02_XYKSQK.Single(e => e.XYID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xyksqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_03_02_XYKSQK xyksqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdXyksqk(xyksqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xyksqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xyksqk);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_JPXT_03_02_XYKSQK xyksqk = db_jpxt.EDU_JPXT_03_02_XYKSQK.SingleOrDefault(e => e.XYID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_03_02_XYKSQK.Remove(xyksqk);
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
                    EDU_JPXT_03_02_XYKSQK xyksqk = db_jpxt.EDU_JPXT_03_02_XYKSQK.SingleOrDefault(e => e.XYID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_03_02_XYKSQK.Remove(xyksqk);
                    db_jpxt.SaveChanges();
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

        private static int Max_XYKSQK_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧԱ������������ID
        public int GetMax_XYKSQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XYKSQK_ID == 0)
                {
                    EDU_JPXT_03_02_XYKSQK xyksqk = db_jpxt.EDU_JPXT_03_02_XYKSQK.FirstOrDefault();
                    if (xyksqk == null)
                    {
                        Max_XYKSQK_ID = 1;
                    }
                    else
                    {
                        //Max_XYKSQK_ID = db_jpxt.EDU_JPXT_03_02_XYKSQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XYKSQK_ID++;
                }
                maxId = Max_XYKSQK_ID;
            }
            return maxId;
        }

    }
}
