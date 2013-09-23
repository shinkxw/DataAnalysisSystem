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
    public class APPRZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_03_APPRZ_DISP> model = db_ele.VIEW_EDU_ELE_03_APPRZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddApprz(EDU_ELE_03_APPRZ apprz)
        {
            apprz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdApprz(apprz);
        }

        public void UpdApprz(EDU_ELE_03_APPRZ apprz)
        {
            //����Ĭ��ֵ
            if (apprz.ID == 0) apprz.ID = 0;//���
            if (apprz.SCHOOLID == 0) apprz.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (apprz.APPID == 0) apprz.APPID = 0;//Ӧ��ID
            if (apprz.RZLX == 0) apprz.RZLX = 0;//��־����
            if (string.IsNullOrEmpty(apprz.YHID)) apprz.YHID = "";//�����û�   Ӧ��ϵͳ�û���
            if (apprz.CZSJ == 0) apprz.CZSJ = 0;//����ʱ��
            if (string.IsNullOrEmpty(apprz.CZYY)) apprz.CZYY = "";//����Ӧ��
            if (string.IsNullOrEmpty(apprz.CZLX)) apprz.CZLX = "";//��������
            if (string.IsNullOrEmpty(apprz.CZJTXX)) apprz.CZJTXX = "";//����������Ϣ
            EDU_ELE_03_APPRZ apprz_model = db_ele.EDU_ELE_03_APPRZ.FirstOrDefault(e => e.ID == apprz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (apprz_model != null)
            {
                apprz_model.ID = apprz.ID;//���
                apprz_model.SCHOOLID = apprz.SCHOOLID;//ѧУ��   ѧУ���ñ�
                apprz_model.APPID = apprz.APPID;//Ӧ��ID
                apprz_model.RZLX = apprz.RZLX;//��־����
                apprz_model.YHID = apprz.YHID;//�����û�   Ӧ��ϵͳ�û���
                apprz_model.CZSJ = apprz.CZSJ;//����ʱ��
                apprz_model.CZYY = apprz.CZYY;//����Ӧ��
                apprz_model.CZLX = apprz.CZLX;//��������
                apprz_model.CZJTXX = apprz.CZJTXX;//����������Ϣ
                db_ele.Entry(apprz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_ele.EDU_ELE_03_APPRZ.Add(apprz);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_03_APPRZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_03_APPRZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_03_APPRZ apprz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddApprz(apprz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(apprz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(apprz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_03_APPRZ apprz= db_ele.EDU_ELE_03_APPRZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(apprz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_03_APPRZ apprz)
        {
            InitViewBag();
            try
            {
                
                
                UpdApprz(apprz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(apprz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(apprz);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ELE_03_APPRZ apprz = db_ele.EDU_ELE_03_APPRZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_03_APPRZ.Remove(apprz);
                db_ele.SaveChanges();
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
                    EDU_ELE_03_APPRZ apprz = db_ele.EDU_ELE_03_APPRZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_03_APPRZ.Remove(apprz);
                    db_ele.SaveChanges();
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

        private static int Max_APPRZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡӦ����־�����ID
        public int GetMax_APPRZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_APPRZ_ID == 0)
                {
                    EDU_ELE_03_APPRZ apprz = db_ele.EDU_ELE_03_APPRZ.FirstOrDefault();
                    if (apprz == null)
                    {
                        Max_APPRZ_ID = 1;
                    }
                    else
                    {
                        //Max_APPRZ_ID = db_ele.EDU_ELE_03_APPRZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_APPRZ_ID++;
                }
                maxId = Max_APPRZ_ID;
            }
            return maxId;
        }

    }
}
