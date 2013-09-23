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
    public class XXGCXPJJGController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_08_A02_XXGCXPJJG_DISP> model = db_zxjx.VIEW_EDU_ZXJX_08_A02_XXGCXPJJG_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXxgcxpjjg(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            xxgcxpjjg.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXxgcxpjjg(xxgcxpjjg);
        }

        public void UpdXxgcxpjjg(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            //����Ĭ��ֵ
            if (xxgcxpjjg.ID == 0) xxgcxpjjg.ID = 0;//���
            if (xxgcxpjjg.SCHOOLID == 0) xxgcxpjjg.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (xxgcxpjjg.PZID == 0) xxgcxpjjg.PZID = 0;//��������ID   ѧ��ѧϰ�������������ñ�
            if (xxgcxpjjg.FS == 0) xxgcxpjjg.FS = 0;//����
            if (xxgcxpjjg.XLZID == 0) xxgcxpjjg.XLZID = 0;//У����ID   У���ܱ�
            if (xxgcxpjjg.XSXXID == 0) xxgcxpjjg.XSXXID = 0;//ѧ��ID   ѧ���������������
            if (string.IsNullOrEmpty(xxgcxpjjg.SSKCH)) xxgcxpjjg.SSKCH = "";//�����γ̺�   �γ�������
            EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg_model = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.FirstOrDefault(e => e.ID == xxgcxpjjg.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xxgcxpjjg_model != null)
            {
                xxgcxpjjg_model.ID = xxgcxpjjg.ID;//���
                xxgcxpjjg_model.SCHOOLID = xxgcxpjjg.SCHOOLID;//ѧУID   ѧУ���ñ�
                xxgcxpjjg_model.PZID = xxgcxpjjg.PZID;//��������ID   ѧ��ѧϰ�������������ñ�
                xxgcxpjjg_model.FS = xxgcxpjjg.FS;//����
                xxgcxpjjg_model.XLZID = xxgcxpjjg.XLZID;//У����ID   У���ܱ�
                xxgcxpjjg_model.XSXXID = xxgcxpjjg.XSXXID;//ѧ��ID   ѧ���������������
                xxgcxpjjg_model.SSKCH = xxgcxpjjg.SSKCH;//�����γ̺�   �γ�������
                db_zxjx.Entry(xxgcxpjjg_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Add(xxgcxpjjg);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_08_A02_XXGCXPJJG());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_08_A02_XXGCXPJJG());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXxgcxpjjg(xxgcxpjjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjjg);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg= db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xxgcxpjjg);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg)
        {
            InitViewBag();
            try
            {
                
                
                UpdXxgcxpjjg(xxgcxpjjg);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xxgcxpjjg);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xxgcxpjjg);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Remove(xxgcxpjjg);
                db_zxjx.SaveChanges();
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
                    EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Remove(xxgcxpjjg);
                    db_zxjx.SaveChanges();
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

        private static int Max_XXGCXPJJG_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ��ѧϰ���������۽�������ID
        public int GetMax_XXGCXPJJG_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XXGCXPJJG_ID == 0)
                {
                    EDU_ZXJX_08_A02_XXGCXPJJG xxgcxpjjg = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.FirstOrDefault();
                    if (xxgcxpjjg == null)
                    {
                        Max_XXGCXPJJG_ID = 1;
                    }
                    else
                    {
                        //Max_XXGCXPJJG_ID = db_zxjx.EDU_ZXJX_08_A02_XXGCXPJJG.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XXGCXPJJG_ID++;
                }
                maxId = Max_XXGCXPJJG_ID;
            }
            return maxId;
        }

    }
}
