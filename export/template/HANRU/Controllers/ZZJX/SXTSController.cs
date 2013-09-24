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
    public class SXTSController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A08_SXTS_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A08_SXTS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxts(EDU_ZZJX_07_A08_SXTS sxts)
        {
            sxts.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxts(sxts);
        }

        public void UpdSxts(EDU_ZZJX_07_A08_SXTS sxts)
        {
            //����Ĭ��ֵ
            if (sxts.ID == 0) sxts.ID = 0;//ʵϰͶ��ID
            if (sxts.SCHOOLID == 0) sxts.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (sxts.QYID == 0) sxts.QYID = 0;//��ҵID   У��ʵϰ������Ϣ���������
            if (sxts.SXJHID == 0) sxts.SXJHID = 0;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
            if (sxts.XSXXID == 0) sxts.XSXXID = 0;//Ͷ��ѧ��ID   ѧ����Ϣ���ݱ�
            if (string.IsNullOrEmpty(sxts.TSYY)) sxts.TSYY = "";//Ͷ��ԭ��
            if (string.IsNullOrEmpty(sxts.TSJG)) sxts.TSJG = "";//Ͷ�߽��
            if (string.IsNullOrEmpty(sxts.QYJY)) sxts.QYJY = "";//��ҵ����
            EDU_ZZJX_07_A08_SXTS sxts_model = db_zzjx.EDU_ZZJX_07_A08_SXTS.FirstOrDefault(e => e.ID == sxts.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxts_model != null)
            {
                sxts_model.ID = sxts.ID;//ʵϰͶ��ID
                sxts_model.SCHOOLID = sxts.SCHOOLID;//ѧУID   ѧУ���ñ�
                sxts_model.QYID = sxts.QYID;//��ҵID   У��ʵϰ������Ϣ���������
                sxts_model.SXJHID = sxts.SXJHID;//ʵϰ�ƻ�ID   ѧУʵϰ�ƻ���
                sxts_model.XSXXID = sxts.XSXXID;//Ͷ��ѧ��ID   ѧ����Ϣ���ݱ�
                sxts_model.TSSJ = sxts.TSSJ;//Ͷ��ʱ��
                sxts_model.TSYY = sxts.TSYY;//Ͷ��ԭ��
                sxts_model.TSJG = sxts.TSJG;//Ͷ�߽��
                sxts_model.QYJY = sxts.QYJY;//��ҵ����
                db_zzjx.Entry(sxts_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A08_SXTS.Add(sxts);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A08_SXTS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A08_SXTS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A08_SXTS sxts)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxts(sxts);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxts);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxts);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A08_SXTS sxts= db_zzjx.EDU_ZZJX_07_A08_SXTS.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxts);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A08_SXTS sxts)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxts(sxts);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxts);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxts);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_07_A08_SXTS sxts = db_zzjx.EDU_ZZJX_07_A08_SXTS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A08_SXTS.Remove(sxts);
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
                    EDU_ZZJX_07_A08_SXTS sxts = db_zzjx.EDU_ZZJX_07_A08_SXTS.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A08_SXTS.Remove(sxts);
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

        private static int Max_SXTS_ID = 0;
        private static object syncIDLock = new object();
        //��ȡʵϰͶ�߱����ID
        public int GetMax_SXTS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXTS_ID == 0)
                {
                    EDU_ZZJX_07_A08_SXTS sxts = db_zzjx.EDU_ZZJX_07_A08_SXTS.FirstOrDefault();
                    if (sxts == null)
                    {
                        Max_SXTS_ID = 1;
                    }
                    else
                    {
                        //Max_SXTS_ID = db_zzjx.EDU_ZZJX_07_A08_SXTS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXTS_ID++;
                }
                maxId = Max_SXTS_ID;
            }
            return maxId;
        }

    }
}
