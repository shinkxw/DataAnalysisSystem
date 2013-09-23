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
    public class ZZBJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_02_02_ZZBJ_DISP> model = db_zzjx.VIEW_EDU_ZZJX_02_02_ZZBJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XZBDM.Contains(searchkey)).ToList();
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

        public void AddZzbj(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            zzbj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZzbj(zzbj);
        }

        public void UpdZzbj(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            //����Ĭ��ֵ
            if (string.IsNullOrEmpty(zzbj.XZBDM)) zzbj.XZBDM = "";//���������
            if (zzbj.SCHOOLID == 0) zzbj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (zzbj.ZYXXID == 0) zzbj.ZYXXID = 0;//רҵ������Ϣ   רҵ������Ϣ���ݱ�
            if (string.IsNullOrEmpty(zzbj.ZZNJID)) zzbj.ZZNJID = "";//ѧУ�꼶���ݱ�   ѧУ�꼶���ݱ�
            if (string.IsNullOrEmpty(zzbj.XZBMC)) zzbj.XZBMC = "";//����������
            if (string.IsNullOrEmpty(zzbj.JBNY)) zzbj.JBNY = "";//��������
            if (string.IsNullOrEmpty(zzbj.BZRGH)) zzbj.BZRGH = "";//�����ι���
            if (string.IsNullOrEmpty(zzbj.JSBH)) zzbj.JSBH = "";//���ұ��
            if (zzbj.NANSRS == 0) zzbj.NANSRS = 0;//��������
            if (zzbj.NVSRS == 0) zzbj.NVSRS = 0;//Ů������
            if (zzbj.ZRS == 0) zzbj.ZRS = 0;//������
            if (string.IsNullOrEmpty(zzbj.BZXH)) zzbj.BZXH = "";//�೤ѧ��
            if (string.IsNullOrEmpty(zzbj.JXJH)) zzbj.JXJH = "";//��ѧ�ƻ�
            if (string.IsNullOrEmpty(zzbj.JGH)) zzbj.JGH = "";//������   У�ڻ����������
            if (string.IsNullOrEmpty(zzbj.XQDM)) zzbj.XQDM = "";//У������
            EDU_ZZJX_02_02_ZZBJ zzbj_model = db_zzjx.EDU_ZZJX_02_02_ZZBJ.FirstOrDefault(e => e.XZBDM == zzbj.XZBDM
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zzbj_model != null)
            {
                zzbj_model.XZBDM = zzbj.XZBDM;//���������
                zzbj_model.SCHOOLID = zzbj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                zzbj_model.ZYXXID = zzbj.ZYXXID;//רҵ������Ϣ   רҵ������Ϣ���ݱ�
                zzbj_model.ZZNJID = zzbj.ZZNJID;//ѧУ�꼶���ݱ�   ѧУ�꼶���ݱ�
                zzbj_model.XZBMC = zzbj.XZBMC;//����������
                zzbj_model.JBNY = zzbj.JBNY;//��������
                zzbj_model.BZRGH = zzbj.BZRGH;//�����ι���
                zzbj_model.JSBH = zzbj.JSBH;//���ұ��
                zzbj_model.NANSRS = zzbj.NANSRS;//��������
                zzbj_model.NVSRS = zzbj.NVSRS;//Ů������
                zzbj_model.ZRS = zzbj.ZRS;//������
                zzbj_model.BZXH = zzbj.BZXH;//�೤ѧ��
                zzbj_model.JXJH = zzbj.JXJH;//��ѧ�ƻ�
                zzbj_model.JGH = zzbj.JGH;//������   У�ڻ����������
                zzbj_model.XQDM = zzbj.XQDM;//У������
                db_zzjx.Entry(zzbj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_02_02_ZZBJ.Add(zzbj);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_02_02_ZZBJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_02_02_ZZBJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZzbj(zzbj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzbj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzbj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_02_02_ZZBJ zzbj= db_zzjx.EDU_ZZJX_02_02_ZZBJ.Single(e => e.XZBDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zzbj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_02_02_ZZBJ zzbj)
        {
            InitViewBag();
            try
            {
                
                
                UpdZzbj(zzbj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zzbj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zzbj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_02_02_ZZBJ zzbj = db_zzjx.EDU_ZZJX_02_02_ZZBJ.SingleOrDefault(e => e.XZBDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_02_02_ZZBJ.Remove(zzbj);
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
                    EDU_ZZJX_02_02_ZZBJ zzbj = db_zzjx.EDU_ZZJX_02_02_ZZBJ.SingleOrDefault(e => e.XZBDM == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_02_02_ZZBJ.Remove(zzbj);
                    db_zzjx.SaveChanges();
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

        private static int Max_ZZBJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧУ�༶���ݱ����ID
        public int GetMax_ZZBJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZZBJ_ID == 0)
                {
                    EDU_ZZJX_02_02_ZZBJ zzbj = db_zzjx.EDU_ZZJX_02_02_ZZBJ.FirstOrDefault();
                    if (zzbj == null)
                    {
                        Max_ZZBJ_ID = 1;
                    }
                    else
                    {
                        //Max_ZZBJ_ID = db_zzjx.EDU_ZZJX_02_02_ZZBJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZZBJ_ID++;
                }
                maxId = Max_ZZBJ_ID;
            }
            return maxId;
        }

    }
}
