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
    public class WJJBSJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_OAXT_01_01_WJJBSJ_DISP> model = db_oaxt.VIEW_EDU_OAXT_01_01_WJJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjjbsj(EDU_OAXT_01_01_WJJBSJ wjjbsj)
        {
            wjjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjjbsj(wjjbsj);
        }

        public void UpdWjjbsj(EDU_OAXT_01_01_WJJBSJ wjjbsj)
        {
            //����Ĭ��ֵ
            if (wjjbsj.SCHOOLID == 0) wjjbsj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (wjjbsj.ID == 0) wjjbsj.ID = 0;//�ļ�ID
            if (string.IsNullOrEmpty(wjjbsj.WJBH)) wjjbsj.WJBH = "";//�ļ����
            if (string.IsNullOrEmpty(wjjbsj.WJWH)) wjjbsj.WJWH = "";//�ļ��ĺ�
            if (string.IsNullOrEmpty(wjjbsj.BT)) wjjbsj.BT = "";//����
            if (string.IsNullOrEmpty(wjjbsj.ZTC)) wjjbsj.ZTC = "";//�����
            if (string.IsNullOrEmpty(wjjbsj.MJM)) wjjbsj.MJM = "";//�ܼ���   ���ױ��ܵȼ��������ʶ
            if (string.IsNullOrEmpty(wjjbsj.JJCDM)) wjjbsj.JJCDM = "";//�����̶���   �����̶ȴ����
            if (wjjbsj.YS == 0) wjjbsj.YS = 0;//ҳ��
            if (string.IsNullOrEmpty(wjjbsj.WJFLM)) wjjbsj.WJFLM = "";//�ļ�������   �ļ���������
            if (string.IsNullOrEmpty(wjjbsj.ZW)) wjjbsj.ZW = "";//����
            if (string.IsNullOrEmpty(wjjbsj.FJ)) wjjbsj.FJ = "";//����
            if (string.IsNullOrEmpty(wjjbsj.FWRQ)) wjjbsj.FWRQ = "";//��������
            if (string.IsNullOrEmpty(wjjbsj.CSDW)) wjjbsj.CSDW = "";//���͵�λ
            EDU_OAXT_01_01_WJJBSJ wjjbsj_model = db_oaxt.EDU_OAXT_01_01_WJJBSJ.FirstOrDefault(e => e.SCHOOLID == wjjbsj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjjbsj_model != null)
            {
                wjjbsj_model.SCHOOLID = wjjbsj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                wjjbsj_model.ID = wjjbsj.ID;//�ļ�ID
                wjjbsj_model.WJBH = wjjbsj.WJBH;//�ļ����
                wjjbsj_model.WJWH = wjjbsj.WJWH;//�ļ��ĺ�
                wjjbsj_model.BT = wjjbsj.BT;//����
                wjjbsj_model.ZTC = wjjbsj.ZTC;//�����
                wjjbsj_model.MJM = wjjbsj.MJM;//�ܼ���   ���ױ��ܵȼ��������ʶ
                wjjbsj_model.JJCDM = wjjbsj.JJCDM;//�����̶���   �����̶ȴ����
                wjjbsj_model.YS = wjjbsj.YS;//ҳ��
                wjjbsj_model.WJFLM = wjjbsj.WJFLM;//�ļ�������   �ļ���������
                wjjbsj_model.ZW = wjjbsj.ZW;//����
                wjjbsj_model.FJ = wjjbsj.FJ;//����
                wjjbsj_model.FWRQ = wjjbsj.FWRQ;//��������
                wjjbsj_model.CSDW = wjjbsj.CSDW;//���͵�λ
                db_oaxt.Entry(wjjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_oaxt.EDU_OAXT_01_01_WJJBSJ.Add(wjjbsj);
            }
            db_oaxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_WXBMZJLst = GBLDAL.GetGB_WXBMZJSelLst();
            ViewBag.JY_JJCDLst = JBLDAL.GetJY_JJCDSelLst();
            ViewBag.JY_WJFLLst = JBLDAL.GetJY_WJFLSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_OAXT_01_01_WJJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_OAXT_01_01_WJJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_OAXT_01_01_WJJBSJ wjjbsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWjjbsj(wjjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjjbsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_OAXT_01_01_WJJBSJ wjjbsj= db_oaxt.EDU_OAXT_01_01_WJJBSJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_OAXT_01_01_WJJBSJ wjjbsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdWjjbsj(wjjbsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wjjbsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wjjbsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_OAXT_01_01_WJJBSJ wjjbsj = db_oaxt.EDU_OAXT_01_01_WJJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_oaxt.EDU_OAXT_01_01_WJJBSJ.Remove(wjjbsj);
                db_oaxt.SaveChanges();
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
                    EDU_OAXT_01_01_WJJBSJ wjjbsj = db_oaxt.EDU_OAXT_01_01_WJJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_oaxt.EDU_OAXT_01_01_WJJBSJ.Remove(wjjbsj);
                    db_oaxt.SaveChanges();
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

        private static int Max_WJJBSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ļ���������������ID
        public int GetMax_WJJBSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WJJBSJ_ID == 0)
                {
                    EDU_OAXT_01_01_WJJBSJ wjjbsj = db_oaxt.EDU_OAXT_01_01_WJJBSJ.FirstOrDefault();
                    if (wjjbsj == null)
                    {
                        Max_WJJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_WJJBSJ_ID = db_oaxt.EDU_OAXT_01_01_WJJBSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WJJBSJ_ID++;
                }
                maxId = Max_WJJBSJ_ID;
            }
            return maxId;
        }

    }
}
