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
    public class ZWHCYController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP> model = db_zzfc.VIEW_EDU_ZZFC_08_A03_ZWHCY_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.SCHOOLID.Contains(searchkey)).ToList();
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

        public void AddZwhcy(EDU_ZZFC_08_A03_ZWHCY zwhcy)
        {
            zwhcy.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZwhcy(zwhcy);
        }

        public void UpdZwhcy(EDU_ZZFC_08_A03_ZWHCY zwhcy)
        {
            //����Ĭ��ֵ
            if (zwhcy.SCHOOLID == 0) zwhcy.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (zwhcy.ID == 0) zwhcy.ID = 0;//��ԱID
            if (zwhcy.YHID == 0) zwhcy.YHID = 0;//�û�ID
            if (zwhcy.YHLX == 0) zwhcy.YHLX = 0;//�û�����
            if (string.IsNullOrEmpty(zwhcy.CYXM)) zwhcy.CYXM = "";//��Ա����
            if (string.IsNullOrEmpty(zwhcy.ZWMC)) zwhcy.ZWMC = "";//ְλ����
            if (string.IsNullOrEmpty(zwhcy.GZNR)) zwhcy.GZNR = "";//��������
            EDU_ZZFC_08_A03_ZWHCY zwhcy_model = db_zzfc.EDU_ZZFC_08_A03_ZWHCY.FirstOrDefault(e => e.SCHOOLID == zwhcy.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zwhcy_model != null)
            {
                zwhcy_model.SCHOOLID = zwhcy.SCHOOLID;//ѧУID   ѧУ���ñ�
                zwhcy_model.ID = zwhcy.ID;//��ԱID
                zwhcy_model.YHID = zwhcy.YHID;//�û�ID
                zwhcy_model.YHLX = zwhcy.YHLX;//�û�����
                zwhcy_model.CYXM = zwhcy.CYXM;//��Ա����
                zwhcy_model.TJSJ = zwhcy.TJSJ;//���ʱ��
                zwhcy_model.ZWMC = zwhcy.ZWMC;//ְλ����
                zwhcy_model.GZNR = zwhcy.GZNR;//��������
                db_zzfc.Entry(zwhcy_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzfc.EDU_ZZFC_08_A03_ZWHCY.Add(zwhcy);
            }
            db_zzfc.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZFC_08_A03_ZWHCY());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZFC_08_A03_ZWHCY());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZFC_08_A03_ZWHCY zwhcy)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZwhcy(zwhcy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zwhcy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zwhcy);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZFC_08_A03_ZWHCY zwhcy= db_zzfc.EDU_ZZFC_08_A03_ZWHCY.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zwhcy);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZFC_08_A03_ZWHCY zwhcy)
        {
            InitViewBag();
            try
            {
                
                
                UpdZwhcy(zwhcy);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zwhcy);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zwhcy);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZFC_08_A03_ZWHCY zwhcy = db_zzfc.EDU_ZZFC_08_A03_ZWHCY.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzfc.EDU_ZZFC_08_A03_ZWHCY.Remove(zwhcy);
                db_zzfc.SaveChanges();
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
                    EDU_ZZFC_08_A03_ZWHCY zwhcy = db_zzfc.EDU_ZZFC_08_A03_ZWHCY.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzfc.EDU_ZZFC_08_A03_ZWHCY.Remove(zwhcy);
                    db_zzfc.SaveChanges();
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

        private static int Max_ZWHCY_ID = 0;
        private static object syncIDLock = new object();
        //��ȡסί���Ա�����ID
        public int GetMax_ZWHCY_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZWHCY_ID == 0)
                {
                    EDU_ZZFC_08_A03_ZWHCY zwhcy = db_zzfc.EDU_ZZFC_08_A03_ZWHCY.FirstOrDefault();
                    if (zwhcy == null)
                    {
                        Max_ZWHCY_ID = 1;
                    }
                    else
                    {
                        //Max_ZWHCY_ID = db_zzfc.EDU_ZZFC_08_A03_ZWHCY.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZWHCY_ID++;
                }
                maxId = Max_ZWHCY_ID;
            }
            return maxId;
        }

    }
}
