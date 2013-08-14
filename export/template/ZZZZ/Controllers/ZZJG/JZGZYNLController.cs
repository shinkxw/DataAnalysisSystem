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
using HanRuEdu.OAXT.Common;

namespace HanRuEdu.OAXT.Controllers.OAXT
{
    public class JZGZYNLController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP> model = db_zzjg.VIEW_EDU_ZZJG_07_01_JZGZYNL_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJzgzynl(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            jzgzynl.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzgzynl(jzgzynl);
        }

        public void UpdJzgzynl(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            //����Ĭ��ֵ
            if (jzgzynl.SCHOOLID == 0) jzgzynl.SCHOOLID = 0;//ѧУ��ѧУID
            if (jzgzynl.JZGJBSJID == 0) jzgzynl.JZGJBSJID = 0;//��ְ��ID
            if (string.IsNullOrEmpty(jzgzynl.ZSMC)) jzgzynl.ZSMC = "";//֤������֤������ ��ţ�ZZJG070001 ������JCJG020301 GWZSMC ��λ֤������ C 40 M NULL �ɾ��и�λ�����ʸ�λ���˲���׼�ĸ�λ֤������ NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBH)) jzgzynl.ZSBH = "";//֤����֤���� ��ţ�ZZJG070002 ������JCJG020302 GWZSBH ��λ֤���� C 20 O NULL NULL NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBFDW)) jzgzynl.ZSBFDW = "";//֤��䷢��λ֤��䷢��λ ��ţ�ZZJG070003 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBFRQ)) jzgzynl.ZSBFRQ = "";//֤��䷢����֤��䷢���� ��ţ�ZZJG070004 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
            if (string.IsNullOrEmpty(jzgzynl.ZSBZ)) jzgzynl.ZSBZ = "";//֤�鱸ע֤�鱸ע ��ţ�ZZJG070005 
            if (string.IsNullOrEmpty(jzgzynl.SFSZYZGZS)) jzgzynl.SFSZYZGZS = "";//�Ƿ���ְҵ�ʸ�֤���Ƿ���ְҵ�ʸ�֤�� ��ţ�ZZJG070006 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            EDU_ZZJG_07_01_JZGZYNL jzgzynl_model = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.FirstOrDefault(e => e.SCHOOLID == jzgzynl.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzgzynl_model != null)
            {
                jzgzynl_model.SCHOOLID = jzgzynl.SCHOOLID;//ѧУ��ѧУID
                jzgzynl_model.JZGJBSJID = jzgzynl.JZGJBSJID;//��ְ��ID
                jzgzynl_model.ZSMC = jzgzynl.ZSMC;//֤������֤������ ��ţ�ZZJG070001 ������JCJG020301 GWZSMC ��λ֤������ C 40 M NULL �ɾ��и�λ�����ʸ�λ���˲���׼�ĸ�λ֤������ NULL
                jzgzynl_model.ZSBH = jzgzynl.ZSBH;//֤����֤���� ��ţ�ZZJG070002 ������JCJG020302 GWZSBH ��λ֤���� C 20 O NULL NULL NULL
                jzgzynl_model.ZSBFDW = jzgzynl.ZSBFDW;//֤��䷢��λ֤��䷢��λ ��ţ�ZZJG070003 ������JCTB010302 DWMC ��λ���� C 60 NULL NULL NULL NULL
                jzgzynl_model.ZSBFRQ = jzgzynl.ZSBFRQ;//֤��䷢����֤��䷢���� ��ţ�ZZJG070004 ������JCTB010203 RQ ���� C 8 NULL GB/T7408 ��ʽ��YYYYMMDD���磺20060412��ʾ2006��4��12�� NULL
                jzgzynl_model.ZSBZ = jzgzynl.ZSBZ;//֤�鱸ע֤�鱸ע ��ţ�ZZJG070005 
                jzgzynl_model.SFSZYZGZS = jzgzynl.SFSZYZGZS;//�Ƿ���ְҵ�ʸ�֤���Ƿ���ְҵ�ʸ�֤�� ��ţ�ZZJG070006 ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                db_zzjg.Entry(jzgzynl_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Add(jzgzynl);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_07_01_JZGZYNL());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_07_01_JZGZYNL());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzgzynl(jzgzynl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgzynl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgzynl);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_07_01_JZGZYNL jzgzynl= db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzgzynl);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_07_01_JZGZYNL jzgzynl)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzgzynl(jzgzynl);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzgzynl);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzgzynl);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_07_01_JZGZYNL jzgzynl = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Remove(jzgzynl);
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
                    EDU_ZZJG_07_01_JZGZYNL jzgzynl = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Remove(jzgzynl);
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

        private static int Max_JZGZYNL_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��ְ��רҵ�������ʸ�֤������������ID
        public int GetMax_JZGZYNL_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGZYNL_ID == 0)
                {
                    EDU_ZZJG_07_01_JZGZYNL jzgzynl = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.FirstOrDefault();
                    if (jzgzynl == null)
                    {
                        Max_JZGZYNL_ID = 1;
                    }
                    else
                    {
                        //Max_JZGZYNL_ID = db_zzjg.EDU_ZZJG_07_01_JZGZYNL.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGZYNL_ID++;
                }
                maxId = Max_JZGZYNL_ID;
            }
            return maxId;
        }

    }
}
