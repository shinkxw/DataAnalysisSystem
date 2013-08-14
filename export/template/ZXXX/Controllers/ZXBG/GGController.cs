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
using HanRuEdu.XGXT.Common;

namespace HanRuEdu.XGXT.Controllers.XGXT
{
    public class GGController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_10_A03_GG_DISP> model = db_zxbg.VIEW_EDU_ZXBG_10_A03_GG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddGg(EDU_ZXBG_10_A03_GG gg)
        {
            gg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdGg(gg);
        }

        public void UpdGg(EDU_ZXBG_10_A03_GG gg)
        {
            //����Ĭ��ֵ
            if (gg.ID == 0) gg.ID = 0;//����ID
            if (gg.SCHOOLID == 0) gg.SCHOOLID = 0;//ѧУID
            if (string.IsNullOrEmpty(gg.FBRID)) gg.FBRID = "";//������ID
            if (string.IsNullOrEmpty(gg.FBBM)) gg.FBBM = "";//��������
            if (gg.FBSJ == 0) gg.FBSJ = 0;//����ʱ��
            if (string.IsNullOrEmpty(gg.BT)) gg.BT = "";//�������
            if (string.IsNullOrEmpty(gg.NR)) gg.NR = "";//��������
            if (gg.ZT == 0) gg.ZT = 0;//����״̬�������ѹ���
            EDU_ZXBG_10_A03_GG gg_model = db_zxbg.EDU_ZXBG_10_A03_GG.FirstOrDefault(e => e.ID == gg.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (gg_model != null)
            {
                gg_model.ID = gg.ID;//����ID
                gg_model.SCHOOLID = gg.SCHOOLID;//ѧУID
                gg_model.FBRID = gg.FBRID;//������ID
                gg_model.FBBM = gg.FBBM;//��������
                gg_model.FBSJ = gg.FBSJ;//����ʱ��
                gg_model.BT = gg.BT;//�������
                gg_model.NR = gg.NR;//��������
                gg_model.ZT = gg.ZT;//����״̬�������ѹ���
                db_zxbg.Entry(gg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxbg.EDU_ZXBG_10_A03_GG.Add(gg);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_10_A03_GG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_10_A03_GG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_10_A03_GG gg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddGg(gg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_10_A03_GG gg= db_zxbg.EDU_ZXBG_10_A03_GG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(gg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_10_A03_GG gg)
        {
            InitViewBag();
            try
            {
                
                
                UpdGg(gg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(gg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(gg);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_10_A03_GG gg = db_zxbg.EDU_ZXBG_10_A03_GG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_10_A03_GG.Remove(gg);
                db_zxbg.SaveChanges();
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
                    EDU_ZXBG_10_A03_GG gg = db_zxbg.EDU_ZXBG_10_A03_GG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_10_A03_GG.Remove(gg);
                    db_zxbg.SaveChanges();
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

        private static int Max_GG_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�������ݱ����ID
        public int GetMax_GG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_GG_ID == 0)
                {
                    EDU_ZXBG_10_A03_GG gg = db_zxbg.EDU_ZXBG_10_A03_GG.FirstOrDefault();
                    if (gg == null)
                    {
                        Max_GG_ID = 1;
                    }
                    else
                    {
                        //Max_GG_ID = db_zxbg.EDU_ZXBG_10_A03_GG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_GG_ID++;
                }
                maxId = Max_GG_ID;
            }
            return maxId;
        }

    }
}
