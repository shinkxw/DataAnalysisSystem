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
    public class SXGWController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_07_A04_SXGW_DISP> model = db_zzjx.VIEW_EDU_ZZJX_07_A04_SXGW_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddSxgw(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            sxgw.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdSxgw(sxgw);
        }

        public void UpdSxgw(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            //����Ĭ��ֵ
            if (sxgw.ID == 0) sxgw.ID = 0;//ʵϰ��λID
            if (sxgw.SCHOOLID == 0) sxgw.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (sxgw.QYID == 0) sxgw.QYID = 0;//��ҵID   У��ʵϰ������Ϣ���������
            if (string.IsNullOrEmpty(sxgw.GWMC)) sxgw.GWMC = "";//��λ����
            if (sxgw.QYMC == 0) sxgw.QYMC = 0;//��ҵ����
            if (sxgw.ZPKSSJ == 0) sxgw.ZPKSSJ = 0;//��Ƹ��ʼʱ��
            if (sxgw.ZPJSSJ == 0) sxgw.ZPJSSJ = 0;//��Ƹ����ʱ��
            if (sxgw.GZXS == 0) sxgw.GZXS = 0;//������ʽ
            if (string.IsNullOrEmpty(sxgw.XBYQ)) sxgw.XBYQ = "";//�Ա�Ҫ��
            if (string.IsNullOrEmpty(sxgw.GWXC)) sxgw.GWXC = "";//��λн��
            if (string.IsNullOrEmpty(sxgw.WYYQ)) sxgw.WYYQ = "";//����Ҫ��
            if (string.IsNullOrEmpty(sxgw.GZDD)) sxgw.GZDD = "";//�����ص�
            if (string.IsNullOrEmpty(sxgw.JSJSP)) sxgw.JSJSP = "";//�����ˮƽ
            if (sxgw.ZPRS == 0) sxgw.ZPRS = 0;//��Ƹ����
            if (string.IsNullOrEmpty(sxgw.XLYQ)) sxgw.XLYQ = "";//ѧ��Ҫ��
            if (string.IsNullOrEmpty(sxgw.ZYYQ)) sxgw.ZYYQ = "";//רҵҪ��
            if (sxgw.NLYQ == 0) sxgw.NLYQ = 0;//����Ҫ��
            if (string.IsNullOrEmpty(sxgw.GWJJ)) sxgw.GWJJ = "";//��λ���
            if (string.IsNullOrEmpty(sxgw.JBQK)) sxgw.JBQK = "";//�������
            if (string.IsNullOrEmpty(sxgw.GZJY)) sxgw.GZJY = "";//��������
            if (sxgw.SHZT == 0) sxgw.SHZT = 0;//���״̬
            if (sxgw.GWZT == 0) sxgw.GWZT = 0;//��λ״̬
            EDU_ZZJX_07_A04_SXGW sxgw_model = db_zzjx.EDU_ZZJX_07_A04_SXGW.FirstOrDefault(e => e.ID == sxgw.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (sxgw_model != null)
            {
                sxgw_model.ID = sxgw.ID;//ʵϰ��λID
                sxgw_model.SCHOOLID = sxgw.SCHOOLID;//ѧУID   ѧУ���ñ�
                sxgw_model.QYID = sxgw.QYID;//��ҵID   У��ʵϰ������Ϣ���������
                sxgw_model.GWMC = sxgw.GWMC;//��λ����
                sxgw_model.QYMC = sxgw.QYMC;//��ҵ����
                sxgw_model.ZPKSSJ = sxgw.ZPKSSJ;//��Ƹ��ʼʱ��
                sxgw_model.ZPJSSJ = sxgw.ZPJSSJ;//��Ƹ����ʱ��
                sxgw_model.GZXS = sxgw.GZXS;//������ʽ
                sxgw_model.XBYQ = sxgw.XBYQ;//�Ա�Ҫ��
                sxgw_model.GWXC = sxgw.GWXC;//��λн��
                sxgw_model.WYYQ = sxgw.WYYQ;//����Ҫ��
                sxgw_model.GZDD = sxgw.GZDD;//�����ص�
                sxgw_model.JSJSP = sxgw.JSJSP;//�����ˮƽ
                sxgw_model.ZPRS = sxgw.ZPRS;//��Ƹ����
                sxgw_model.XLYQ = sxgw.XLYQ;//ѧ��Ҫ��
                sxgw_model.ZYYQ = sxgw.ZYYQ;//רҵҪ��
                sxgw_model.NLYQ = sxgw.NLYQ;//����Ҫ��
                sxgw_model.GWJJ = sxgw.GWJJ;//��λ���
                sxgw_model.JBQK = sxgw.JBQK;//�������
                sxgw_model.GZJY = sxgw.GZJY;//��������
                sxgw_model.SHZT = sxgw.SHZT;//���״̬
                sxgw_model.GWZT = sxgw.GWZT;//��λ״̬
                db_zzjx.Entry(sxgw_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_07_A04_SXGW.Add(sxgw);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_07_A04_SXGW());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_07_A04_SXGW());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            InitViewBag();
            try
            {
                //
                //
                AddSxgw(sxgw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxgw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxgw);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_07_A04_SXGW sxgw= db_zzjx.EDU_ZZJX_07_A04_SXGW.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(sxgw);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_07_A04_SXGW sxgw)
        {
            InitViewBag();
            try
            {
                
                
                UpdSxgw(sxgw);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(sxgw);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(sxgw);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJX_07_A04_SXGW sxgw = db_zzjx.EDU_ZZJX_07_A04_SXGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_07_A04_SXGW.Remove(sxgw);
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
                    EDU_ZZJX_07_A04_SXGW sxgw = db_zzjx.EDU_ZZJX_07_A04_SXGW.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_07_A04_SXGW.Remove(sxgw);
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

        private static int Max_SXGW_ID = 0;
        private static object syncIDLock = new object();
        //��ȡʵϰ��λ�����ID
        public int GetMax_SXGW_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_SXGW_ID == 0)
                {
                    EDU_ZZJX_07_A04_SXGW sxgw = db_zzjx.EDU_ZZJX_07_A04_SXGW.FirstOrDefault();
                    if (sxgw == null)
                    {
                        Max_SXGW_ID = 1;
                    }
                    else
                    {
                        //Max_SXGW_ID = db_zzjx.EDU_ZZJX_07_A04_SXGW.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_SXGW_ID++;
                }
                maxId = Max_SXGW_ID;
            }
            return maxId;
        }

    }
}
