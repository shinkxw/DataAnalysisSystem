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
    public class GWFPMBController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP> model = db_zxdy.VIEW_EDU_ZXDY_04_A04_GWFPMB_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddGwfpmb(EDU_ZXDY_04_A04_GWFPMB gwfpmb)
        {
            gwfpmb.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdGwfpmb(gwfpmb);
        }

        public void UpdGwfpmb(EDU_ZXDY_04_A04_GWFPMB gwfpmb)
        {
            //����Ĭ��ֵ
            if (gwfpmb.ID == 0) gwfpmb.ID = 0;//��λ����ģ���ID
            if (gwfpmb.SCHOOLID == 0) gwfpmb.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(gwfpmb.MBMC)) gwfpmb.MBMC = "";//ģ������
            EDU_ZXDY_04_A04_GWFPMB gwfpmb_model = db_zxdy.EDU_ZXDY_04_A04_GWFPMB.FirstOrDefault(e => e.ID == gwfpmb.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (gwfpmb_model != null)
            {
                gwfpmb_model.ID = gwfpmb.ID;//��λ����ģ���ID
                gwfpmb_model.SCHOOLID = gwfpmb.SCHOOLID;//ѧУID   ѧУ���ñ�
                gwfpmb_model.MBMC = gwfpmb.MBMC;//ģ������
                db_zxdy.Entry(gwfpmb_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxdy.EDU_ZXDY_04_A04_GWFPMB.Add(gwfpmb);
            }
            db_zxdy.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXDY_04_A04_GWFPMB());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXDY_04_A04_GWFPMB());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXDY_04_A04_GWFPMB gwfpmb)
        {
            InitViewBag();
            try
            {
                //
                //
                AddGwfpmb(gwfpmb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gwfpmb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gwfpmb);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXDY_04_A04_GWFPMB gwfpmb= db_zxdy.EDU_ZXDY_04_A04_GWFPMB.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(gwfpmb);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXDY_04_A04_GWFPMB gwfpmb)
        {
            InitViewBag();
            try
            {
                
                
                UpdGwfpmb(gwfpmb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gwfpmb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gwfpmb);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXDY_04_A04_GWFPMB gwfpmb = db_zxdy.EDU_ZXDY_04_A04_GWFPMB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxdy.EDU_ZXDY_04_A04_GWFPMB.Remove(gwfpmb);
                db_zxdy.SaveChanges();
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
                    EDU_ZXDY_04_A04_GWFPMB gwfpmb = db_zxdy.EDU_ZXDY_04_A04_GWFPMB.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxdy.EDU_ZXDY_04_A04_GWFPMB.Remove(gwfpmb);
                    db_zxdy.SaveChanges();
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

        private static int Max_GWFPMB_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��λ����ģ������ID
        public int GetMax_GWFPMB_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_GWFPMB_ID == 0)
                {
                    EDU_ZXDY_04_A04_GWFPMB gwfpmb = db_zxdy.EDU_ZXDY_04_A04_GWFPMB.FirstOrDefault();
                    if (gwfpmb == null)
                    {
                        Max_GWFPMB_ID = 1;
                    }
                    else
                    {
                        //Max_GWFPMB_ID = db_zxdy.EDU_ZXDY_04_A04_GWFPMB.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_GWFPMB_ID++;
                }
                maxId = Max_GWFPMB_ID;
            }
            return maxId;
        }

    }
}
