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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class WJYBController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZBG_02_02_WJYB_DISP> model = db_zzbg.VIEW_EDU_ZZBG_02_02_WJYB_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjyb(EDU_ZZBG_02_02_WJYB wjyb)
        {
            wjyb.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjyb(wjyb);
        }

        public void UpdWjyb(EDU_ZZBG_02_02_WJYB wjyb)
        {
            //����Ĭ��ֵ
            if (wjyb.SCHOOLID == 0) wjyb.SCHOOLID = 0;//ѧУ��ѧУID
            if (wjyb.WJID == 0) wjyb.WJID = 0;//�ļ�ID
            if (wjyb.YBRID == 0) wjyb.YBRID = 0;//�İ���ID
            if (string.IsNullOrEmpty(wjyb.YBLBM)) wjyb.YBLBM = "";//�İ������ֵ�ռ䣺JY/T1001YBLB�İ������� 
            if (string.IsNullOrEmpty(wjyb.YBJB)) wjyb.YBJB = "";//�İ켶�����/������ָ�ļ��İ�ָ���ļ���ͷ�Χ 
            if (string.IsNullOrEmpty(wjyb.YBDW)) wjyb.YBDW = "";//�İ쵥λ��λ����
            if (string.IsNullOrEmpty(wjyb.YBDWBH)) wjyb.YBDWBH = "";//�İ쵥λ��ŵ�λ��
            if (string.IsNullOrEmpty(wjyb.YBRGH)) wjyb.YBRGH = "";//�İ��˹���
            if (string.IsNullOrEmpty(wjyb.YBYJ)) wjyb.YBYJ = "";//�İ��������/�������ļ��İ����д�������� 
            if (string.IsNullOrEmpty(wjyb.YBRQ)) wjyb.YBRQ = "";//�İ����ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            EDU_ZZBG_02_02_WJYB wjyb_model = db_zzbg.EDU_ZZBG_02_02_WJYB.FirstOrDefault(e => e.SCHOOLID == wjyb.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjyb_model != null)
            {
                wjyb_model.SCHOOLID = wjyb.SCHOOLID;//ѧУ��ѧУID
                wjyb_model.WJID = wjyb.WJID;//�ļ�ID
                wjyb_model.YBRID = wjyb.YBRID;//�İ���ID
                wjyb_model.YBLBM = wjyb.YBLBM;//�İ������ֵ�ռ䣺JY/T1001YBLB�İ������� 
                wjyb_model.YBJB = wjyb.YBJB;//�İ켶�����/������ָ�ļ��İ�ָ���ļ���ͷ�Χ 
                wjyb_model.YBDW = wjyb.YBDW;//�İ쵥λ��λ����
                wjyb_model.YBDWBH = wjyb.YBDWBH;//�İ쵥λ��ŵ�λ��
                wjyb_model.YBRGH = wjyb.YBRGH;//�İ��˹���
                wjyb_model.YBYJ = wjyb.YBYJ;//�İ��������/�������ļ��İ����д�������� 
                wjyb_model.YBRQ = wjyb.YBRQ;//�İ����ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                db_zzbg.Entry(wjyb_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzbg.EDU_ZZBG_02_02_WJYB.Add(wjyb);
            }
            db_zzbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZBG_02_02_WJYB());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZBG_02_02_WJYB());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZBG_02_02_WJYB wjyb)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjyb(wjyb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjyb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjyb);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZBG_02_02_WJYB wjyb= db_zzbg.EDU_ZZBG_02_02_WJYB.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjyb);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZBG_02_02_WJYB wjyb)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjyb(wjyb);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjyb);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjyb);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZBG_02_02_WJYB wjyb = db_zzbg.EDU_ZZBG_02_02_WJYB.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzbg.EDU_ZZBG_02_02_WJYB.Remove(wjyb);
                db_zzbg.SaveChanges();
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
                    EDU_ZZBG_02_02_WJYB wjyb = db_zzbg.EDU_ZZBG_02_02_WJYB.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzbg.EDU_ZZBG_02_02_WJYB.Remove(wjyb);
                    db_zzbg.SaveChanges();
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

        private static int Max_WJYB_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ļ��İ���������ID
        public int GetMax_WJYB_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJYB_ID == 0)
                {
                    EDU_ZZBG_02_02_WJYB wjyb = db_zzbg.EDU_ZZBG_02_02_WJYB.FirstOrDefault();
                    if (wjyb == null)
                    {
                        Max_WJYB_ID = 1;
                    }
                    else
                    {
                        //Max_WJYB_ID = db_zzbg.EDU_ZZBG_02_02_WJYB.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJYB_ID++;
                }
                maxId = Max_WJYB_ID;
            }
            return maxId;
        }

    }
}
