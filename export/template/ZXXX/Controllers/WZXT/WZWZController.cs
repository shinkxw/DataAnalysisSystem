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
    public class WZWZController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_WZXT_MHXT_WZWZ_DISP> model = db_wzxt.VIEW_EDU_WZXT_MHXT_WZWZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddWzwz(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            wzwz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzwz(wzwz);
        }

        public void UpdWzwz(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            //����Ĭ��ֵ
            if (wzwz.ID == 0) wzwz.ID = 0;//��վ����ID
            if (wzwz.SCHOOLID == 0) wzwz.SCHOOLID = 0;//ѧУ��
            if (wzwz.WEBID == 0) wzwz.WEBID = 0;//��վID
            if (string.IsNullOrEmpty(wzwz.TYPENAME)) wzwz.TYPENAME = "";//��������
            if (wzwz.LMID == 0) wzwz.LMID = 0;//��Ŀ
            if (string.IsNullOrEmpty(wzwz.TITLE)) wzwz.TITLE = "";//����
            if (string.IsNullOrEmpty(wzwz.PUBLISHERNAME)) wzwz.PUBLISHERNAME = "";//������
            if (string.IsNullOrEmpty(wzwz.AUTHOR)) wzwz.AUTHOR = "";//����
            if (string.IsNullOrEmpty(wzwz.AUTHORDEPART)) wzwz.AUTHORDEPART = "";//���߲���
            if (wzwz.PUBLISHDATE == 0) wzwz.PUBLISHDATE = 0;//����ʱ��
            if (string.IsNullOrEmpty(wzwz.CONTENT)) wzwz.CONTENT = "";//����
            if (string.IsNullOrEmpty(wzwz.URL)) wzwz.URL = "";//����
            if (string.IsNullOrEmpty(wzwz.IMAGEURL)) wzwz.IMAGEURL = "";//ͼƬ
            if (string.IsNullOrEmpty(wzwz.ATTACHMENTNAME)) wzwz.ATTACHMENTNAME = "";//������
            if (string.IsNullOrEmpty(wzwz.ATTACHMENT)) wzwz.ATTACHMENT = "";//����
            if (wzwz.CHICKNUB == 0) wzwz.CHICKNUB = 0;//�����
            if (wzwz.AUDITSTATU == 0) wzwz.AUDITSTATU = 0;//���״̬
            if (string.IsNullOrEmpty(wzwz.AUDITOR)) wzwz.AUDITOR = "";//�����ID
            if (string.IsNullOrEmpty(wzwz.AUDITORNAME)) wzwz.AUDITORNAME = "";//�����
            if (wzwz.AUDITTIME == 0) wzwz.AUDITTIME = 0;//���ʱ��
            if (string.IsNullOrEmpty(wzwz.REMARK)) wzwz.REMARK = "";//��ע
            if (string.IsNullOrEmpty(wzwz.SUMMARY)) wzwz.SUMMARY = "";//ժҪ
            if (wzwz.DISPLAYTYPE == 0) wzwz.DISPLAYTYPE = 0;//�Ƿ���ʾ
            if (wzwz.OPENFLAG == 0) wzwz.OPENFLAG = 0;//������
            if (string.IsNullOrEmpty(wzwz.LLQX)) wzwz.LLQX = "";//���Ȩ��
            EDU_WZXT_MHXT_WZWZ wzwz_model = db_wzxt.EDU_WZXT_MHXT_WZWZ.FirstOrDefault(e => e.ID == wzwz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzwz_model != null)
            {
                wzwz_model.ID = wzwz.ID;//��վ����ID
                wzwz_model.SCHOOLID = wzwz.SCHOOLID;//ѧУ��
                wzwz_model.WEBID = wzwz.WEBID;//��վID
                wzwz_model.TYPENAME = wzwz.TYPENAME;//��������
                wzwz_model.LMID = wzwz.LMID;//��Ŀ
                wzwz_model.TITLE = wzwz.TITLE;//����
                wzwz_model.PUBLISHERNAME = wzwz.PUBLISHERNAME;//������
                wzwz_model.AUTHOR = wzwz.AUTHOR;//����
                wzwz_model.AUTHORDEPART = wzwz.AUTHORDEPART;//���߲���
                wzwz_model.PUBLISHDATE = wzwz.PUBLISHDATE;//����ʱ��
                wzwz_model.CONTENT = wzwz.CONTENT;//����
                wzwz_model.URL = wzwz.URL;//����
                wzwz_model.IMAGEURL = wzwz.IMAGEURL;//ͼƬ
                wzwz_model.ATTACHMENTNAME = wzwz.ATTACHMENTNAME;//������
                wzwz_model.ATTACHMENT = wzwz.ATTACHMENT;//����
                wzwz_model.CHICKNUB = wzwz.CHICKNUB;//�����
                wzwz_model.AUDITSTATU = wzwz.AUDITSTATU;//���״̬
                wzwz_model.AUDITOR = wzwz.AUDITOR;//�����ID
                wzwz_model.AUDITORNAME = wzwz.AUDITORNAME;//�����
                wzwz_model.AUDITTIME = wzwz.AUDITTIME;//���ʱ��
                wzwz_model.REMARK = wzwz.REMARK;//��ע
                wzwz_model.SUMMARY = wzwz.SUMMARY;//ժҪ
                wzwz_model.DISPLAYTYPE = wzwz.DISPLAYTYPE;//�Ƿ���ʾ
                wzwz_model.OPENFLAG = wzwz.OPENFLAG;//������
                wzwz_model.LLQX = wzwz.LLQX;//���Ȩ��
                db_wzxt.Entry(wzwz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_wzxt.EDU_WZXT_MHXT_WZWZ.Add(wzwz);
            }
            db_wzxt.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_WZXT_MHXT_WZWZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_WZXT_MHXT_WZWZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzwz(wzwz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzwz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzwz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_WZXT_MHXT_WZWZ wzwz= db_wzxt.EDU_WZXT_MHXT_WZWZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzwz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_WZXT_MHXT_WZWZ wzwz)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzwz(wzwz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzwz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzwz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_WZXT_MHXT_WZWZ wzwz = db_wzxt.EDU_WZXT_MHXT_WZWZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_wzxt.EDU_WZXT_MHXT_WZWZ.Remove(wzwz);
                db_wzxt.SaveChanges();
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
                    EDU_WZXT_MHXT_WZWZ wzwz = db_wzxt.EDU_WZXT_MHXT_WZWZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_wzxt.EDU_WZXT_MHXT_WZWZ.Remove(wzwz);
                    db_wzxt.SaveChanges();
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

        private static int Max_WZWZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��վ�������ID
        public int GetMax_WZWZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZWZ_ID == 0)
                {
                    EDU_WZXT_MHXT_WZWZ wzwz = db_wzxt.EDU_WZXT_MHXT_WZWZ.FirstOrDefault();
                    if (wzwz == null)
                    {
                        Max_WZWZ_ID = 1;
                    }
                    else
                    {
                        //Max_WZWZ_ID = db_wzxt.EDU_WZXT_MHXT_WZWZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZWZ_ID++;
                }
                maxId = Max_WZWZ_ID;
            }
            return maxId;
        }

    }
}
