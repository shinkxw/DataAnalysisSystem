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
    public class WJJBSJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_01_01_WJJBSJ_DISP> model = db_zxbg.VIEW_EDU_ZXBG_01_01_WJJBSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWjjbsj(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
        {
            wjjbsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWjjbsj(wjjbsj);
        }

        public void UpdWjjbsj(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
        {
            //����Ĭ��ֵ
            if (wjjbsj.SCHOOLID == 0) wjjbsj.SCHOOLID = 0;//ѧУ��ѧУID
            if (wjjbsj.ID == 0) wjjbsj.ID = 0;//�ļ�ID
            if (string.IsNullOrEmpty(wjjbsj.WJBH)) wjjbsj.WJBH = "";//�ļ���Ž���/������ѧУ�Ա���ļ���� 
            if (string.IsNullOrEmpty(wjjbsj.WJWH)) wjjbsj.WJWH = "";//�ļ��ĺŽ���/�������ա����ĵ��ĺ� 
            if (string.IsNullOrEmpty(wjjbsj.BT)) wjjbsj.BT = "";//�������/�������ļ��ı������� 
            if (string.IsNullOrEmpty(wjjbsj.ZTC)) wjjbsj.ZTC = "";//����ʽ���/�������ļ�������ʣ����������ö��Ÿ��� 
            if (string.IsNullOrEmpty(wjjbsj.MJM)) wjjbsj.MJM = "";//�ܼ���ֵ�ռ䣺GB/T7156 
            if (string.IsNullOrEmpty(wjjbsj.JJCDM)) wjjbsj.JJCDM = "";//�����̶���ֵ�ռ䣺JY/T1001JJCD�����̶ȴ��� 
            if (wjjbsj.YS == 0) wjjbsj.YS = 0;//ҳ������/�������ļ�����ҳ������λ��ҳ 
            if (string.IsNullOrEmpty(wjjbsj.WJFLM)) wjjbsj.WJFLM = "";//�ļ�������ֵ�ռ䣺JY/T1001WJFL�ļ�������� 
            if (string.IsNullOrEmpty(wjjbsj.ZW)) wjjbsj.ZW = "";//���Ľ���/�������ļ��ľ������� 
            if (string.IsNullOrEmpty(wjjbsj.FJ)) wjjbsj.FJ = "";//��������/�������ļ����������ľ������� 
            if (string.IsNullOrEmpty(wjjbsj.FWRQ)) wjjbsj.FWRQ = "";//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(wjjbsj.CSDW)) wjjbsj.CSDW = "";//���͵�λ����/�����������λ�ö��Ÿ��� 
            EDU_ZXBG_01_01_WJJBSJ wjjbsj_model = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.FirstOrDefault(e => e.SCHOOLID == wjjbsj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wjjbsj_model != null)
            {
                wjjbsj_model.SCHOOLID = wjjbsj.SCHOOLID;//ѧУ��ѧУID
                wjjbsj_model.ID = wjjbsj.ID;//�ļ�ID
                wjjbsj_model.WJBH = wjjbsj.WJBH;//�ļ���Ž���/������ѧУ�Ա���ļ���� 
                wjjbsj_model.WJWH = wjjbsj.WJWH;//�ļ��ĺŽ���/�������ա����ĵ��ĺ� 
                wjjbsj_model.BT = wjjbsj.BT;//�������/�������ļ��ı������� 
                wjjbsj_model.ZTC = wjjbsj.ZTC;//����ʽ���/�������ļ�������ʣ����������ö��Ÿ��� 
                wjjbsj_model.MJM = wjjbsj.MJM;//�ܼ���ֵ�ռ䣺GB/T7156 
                wjjbsj_model.JJCDM = wjjbsj.JJCDM;//�����̶���ֵ�ռ䣺JY/T1001JJCD�����̶ȴ��� 
                wjjbsj_model.YS = wjjbsj.YS;//ҳ������/�������ļ�����ҳ������λ��ҳ 
                wjjbsj_model.WJFLM = wjjbsj.WJFLM;//�ļ�������ֵ�ռ䣺JY/T1001WJFL�ļ�������� 
                wjjbsj_model.ZW = wjjbsj.ZW;//���Ľ���/�������ļ��ľ������� 
                wjjbsj_model.FJ = wjjbsj.FJ;//��������/�������ļ����������ľ������� 
                wjjbsj_model.FWRQ = wjjbsj.FWRQ;//�������ڸ�ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12��
                wjjbsj_model.CSDW = wjjbsj.CSDW;//���͵�λ����/�����������λ�ö��Ÿ��� 
                db_zxbg.Entry(wjjbsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Add(wjjbsj);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_01_01_WJJBSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_01_01_WJJBSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
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
            
            EDU_ZXBG_01_01_WJJBSJ wjjbsj= db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wjjbsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_01_01_WJJBSJ wjjbsj)
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
                EDU_ZXBG_01_01_WJJBSJ wjjbsj = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Remove(wjjbsj);
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
                    EDU_ZXBG_01_01_WJJBSJ wjjbsj = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Remove(wjjbsj);
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
                    EDU_ZXBG_01_01_WJJBSJ wjjbsj = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.FirstOrDefault();
                    if (wjjbsj == null)
                    {
                        Max_WJJBSJ_ID = 1;
                    }
                    else
                    {
                        //Max_WJJBSJ_ID = db_zxbg.EDU_ZXBG_01_01_WJJBSJ.Max(e => e.ID) + 1;
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
