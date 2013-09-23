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
    public class XNGWSJController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP> model = db_zzjg.VIEW_EDU_ZZJG_02_02_XNGWSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXngwsj(EDU_ZZJG_02_02_XNGWSJ xngwsj)
        {
            xngwsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXngwsj(xngwsj);
        }

        public void UpdXngwsj(EDU_ZZJG_02_02_XNGWSJ xngwsj)
        {
            //����Ĭ��ֵ
            if (xngwsj.ID == 0) xngwsj.ID = 0;//���
            if (xngwsj.SCHOOLID == 0) xngwsj.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (xngwsj.GWID == 0) xngwsj.GWID = 0;//��λ��ID   ������λ��
            if (xngwsj.JZGJBSJID == 0) xngwsj.JZGJBSJID = 0;//��ְ���������������   ��ְ���������������
            if (string.IsNullOrEmpty(xngwsj.GWQSNY)) xngwsj.GWQSNY = "";//��λ��ʼ����
            if (string.IsNullOrEmpty(xngwsj.GWJSNY)) xngwsj.GWJSNY = "";//��λ��������
            if (string.IsNullOrEmpty(xngwsj.SFZG)) xngwsj.SFZG = "";//�Ƿ��ڸ�   �Ƿ��־�����
            if (string.IsNullOrEmpty(xngwsj.ZWMC)) xngwsj.ZWMC = "";//ְ������
            if (string.IsNullOrEmpty(xngwsj.JGH)) xngwsj.JGH = "";//������   У�ڻ����������
            EDU_ZZJG_02_02_XNGWSJ xngwsj_model = db_zzjg.EDU_ZZJG_02_02_XNGWSJ.FirstOrDefault(e => e.ID == xngwsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xngwsj_model != null)
            {
                xngwsj_model.ID = xngwsj.ID;//���
                xngwsj_model.SCHOOLID = xngwsj.SCHOOLID;//ѧУ��   ѧУ���ñ�
                xngwsj_model.GWID = xngwsj.GWID;//��λ��ID   ������λ��
                xngwsj_model.JZGJBSJID = xngwsj.JZGJBSJID;//��ְ���������������   ��ְ���������������
                xngwsj_model.GWQSNY = xngwsj.GWQSNY;//��λ��ʼ����
                xngwsj_model.GWJSNY = xngwsj.GWJSNY;//��λ��������
                xngwsj_model.SFZG = xngwsj.SFZG;//�Ƿ��ڸ�   �Ƿ��־�����
                xngwsj_model.ZWMC = xngwsj.ZWMC;//ְ������
                xngwsj_model.JGH = xngwsj.JGH;//������   У�ڻ����������
                db_zzjg.Entry(xngwsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjg.EDU_ZZJG_02_02_XNGWSJ.Add(xngwsj);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_02_02_XNGWSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_02_02_XNGWSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_02_02_XNGWSJ xngwsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXngwsj(xngwsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xngwsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xngwsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_02_02_XNGWSJ xngwsj= db_zzjg.EDU_ZZJG_02_02_XNGWSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xngwsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_02_02_XNGWSJ xngwsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXngwsj(xngwsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xngwsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xngwsj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_02_02_XNGWSJ xngwsj = db_zzjg.EDU_ZZJG_02_02_XNGWSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_02_02_XNGWSJ.Remove(xngwsj);
                db_zzjg.SaveChanges();
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
                    EDU_ZZJG_02_02_XNGWSJ xngwsj = db_zzjg.EDU_ZZJG_02_02_XNGWSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_02_02_XNGWSJ.Remove(xngwsj);
                    db_zzjg.SaveChanges();
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

        private static int Max_XNGWSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡУ�ڸ�λ������������ID
        public int GetMax_XNGWSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XNGWSJ_ID == 0)
                {
                    EDU_ZZJG_02_02_XNGWSJ xngwsj = db_zzjg.EDU_ZZJG_02_02_XNGWSJ.FirstOrDefault();
                    if (xngwsj == null)
                    {
                        Max_XNGWSJ_ID = 1;
                    }
                    else
                    {
                        //Max_XNGWSJ_ID = db_zzjg.EDU_ZZJG_02_02_XNGWSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XNGWSJ_ID++;
                }
                maxId = Max_XNGWSJ_ID;
            }
            return maxId;
        }

    }
}
