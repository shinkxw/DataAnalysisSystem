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
    public class SXZGController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A07_SXZG_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A07_SXZG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxzg(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            sxzg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxzg(sxzg);
        }

        public void UpdSxzg(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            //����Ĭ��ֵ
            if (sxzg.ID == 0) sxzg.ID = 0;//ʵϰת��ID
            if (sxzg.SCHOOLID == 0) sxzg.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (sxzg.XSXXID == 0) sxzg.XSXXID = 0;//����ѧ��ID   ѧ����Ϣ���ݱ�
            if (sxzg.ZCGW == 0) sxzg.ZCGW = 0;//ת����λID   ʵϰ��λ��
            if (sxzg.ZCGWQY == 0) sxzg.ZCGWQY = 0;//ת����λ��ҵID   У��ʵϰ������Ϣ���������
            if (sxzg.ZRGW == 0) sxzg.ZRGW = 0;//ת���λID   ʵϰ��λ��
            if (sxzg.ZRGWQY == 0) sxzg.ZRGWQY = 0;//ת���λ��ҵID   У��ʵϰ������Ϣ���������
            if (sxzg.BZRSH == 0) sxzg.BZRSH = 0;//���������
            if (sxzg.ZCQYSH == 0) sxzg.ZCQYSH = 0;//ת����ҵ���
            if (sxzg.ZRQYSH == 0) sxzg.ZRQYSH = 0;//ת����ҵ���
            if (sxzg.JYCSH == 0) sxzg.JYCSH = 0;//��ҵ�����
            EDU_ZZJX_07_A07_SXZG sxzg_model = db_zzjx.EDU_ZZJX_07_A07_SXZG.FirstOrDefault(e => e.ID == sxzg.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxzg_model != null)
            {
                sxzg_model.ID = sxzg.ID;//ʵϰת��ID
                sxzg_model.SCHOOLID = sxzg.SCHOOLID;//ѧУID   ѧУ���ñ�
                sxzg_model.XSXXID = sxzg.XSXXID;//����ѧ��ID   ѧ����Ϣ���ݱ�
                sxzg_model.ZCGW = sxzg.ZCGW;//ת����λID   ʵϰ��λ��
                sxzg_model.ZCGWQY = sxzg.ZCGWQY;//ת����λ��ҵID   У��ʵϰ������Ϣ���������
                sxzg_model.ZRGW = sxzg.ZRGW;//ת���λID   ʵϰ��λ��
                sxzg_model.ZRGWQY = sxzg.ZRGWQY;//ת���λ��ҵID   У��ʵϰ������Ϣ���������
                sxzg_model.BZRSH = sxzg.BZRSH;//���������
                sxzg_model.ZCQYSH = sxzg.ZCQYSH;//ת����ҵ���
                sxzg_model.ZRQYSH = sxzg.ZRQYSH;//ת����ҵ���
                sxzg_model.JYCSH = sxzg.JYCSH;//��ҵ�����
                db_zzjx.Entry(sxzg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A07_SXZG.Add(sxzg);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A07_SXZG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A07_SXZG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxzg(sxzg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxzg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxzg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A07_SXZG sxzg= db_zzjx.EDU_ZZJX_07_A07_SXZG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxzg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A07_SXZG sxzg)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxzg(sxzg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxzg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxzg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A07_SXZG sxzg = db_zzjx.EDU_ZZJX_07_A07_SXZG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A07_SXZG.Remove(sxzg);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_07_A07_SXZG sxzg = db_zzjx.EDU_ZZJX_07_A07_SXZG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A07_SXZG.Remove(sxzg);
                    db_zzjx.SaveChanges();
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

        private static int Max_SXZG_ID = 0;
        private static object syncIDLock = new object();
        //��ȡʵϰת�ڱ����ID
        public int GetMax_SXZG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXZG_ID == 0)
                {
                    EDU_ZZJX_07_A07_SXZG sxzg = db_zzjx.EDU_ZZJX_07_A07_SXZG.FirstOrDefault();
                    if (sxzg == null)
                    {
                        Max_SXZG_ID = 1;
                    }
                    else
                    {
                        //Max_SXZG_ID = db_zzjx.EDU_ZZJX_07_A07_SXZG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXZG_ID++;
                }
                maxId = Max_SXZG_ID;
            }
            return maxId;
        }

    }
}
