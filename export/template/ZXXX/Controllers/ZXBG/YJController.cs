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
    public class YJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXBG_11_A01_YJ_DISP> model = db_zxbg.VIEW_EDU_ZXBG_11_A01_YJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddYj(EDU_ZXBG_11_A01_YJ yj)
        {
            yj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdYj(yj);
        }

        public void UpdYj(EDU_ZXBG_11_A01_YJ yj)
        {
            //����Ĭ��ֵ
            if (yj.ID == 0) yj.ID = 0;//�ʼ�ID
            if (yj.SCHOOLID == 0) yj.SCHOOLID = 0;//ѧУID
            if (string.IsNullOrEmpty(yj.YYZID)) yj.YYZID = "";//ӵ����ID
            if (string.IsNullOrEmpty(yj.FSRID)) yj.FSRID = "";//������ID
            if (string.IsNullOrEmpty(yj.JSRID)) yj.JSRID = "";//������ID
            if (string.IsNullOrEmpty(yj.FSRMC)) yj.FSRMC = "";//����������
            if (string.IsNullOrEmpty(yj.JSRMC)) yj.JSRMC = "";//����������
            if (string.IsNullOrEmpty(yj.JSRIDLB)) yj.JSRIDLB = "";//������ID�б�
            if (string.IsNullOrEmpty(yj.JSRMCLB)) yj.JSRMCLB = "";//�����������б�
            if (string.IsNullOrEmpty(yj.BT)) yj.BT = "";//����
            if (string.IsNullOrEmpty(yj.NR)) yj.NR = "";//����
            if (string.IsNullOrEmpty(yj.FJ)) yj.FJ = "";//����
            if (yj.FSSJ == 0) yj.FSSJ = 0;//����ʱ��
            if (string.IsNullOrEmpty(yj.SFYD)) yj.SFYD = "";//�Ƿ����Ķ�
            if (yj.YJLX == 0) yj.YJLX = 0;//�ʼ�����1�ռ���2�ݸ���3�ѷ���4��ɾ��
            EDU_ZXBG_11_A01_YJ yj_model = db_zxbg.EDU_ZXBG_11_A01_YJ.FirstOrDefault(e => e.ID == yj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (yj_model != null)
            {
                yj_model.ID = yj.ID;//�ʼ�ID
                yj_model.SCHOOLID = yj.SCHOOLID;//ѧУID
                yj_model.YYZID = yj.YYZID;//ӵ����ID
                yj_model.FSRID = yj.FSRID;//������ID
                yj_model.JSRID = yj.JSRID;//������ID
                yj_model.FSRMC = yj.FSRMC;//����������
                yj_model.JSRMC = yj.JSRMC;//����������
                yj_model.JSRIDLB = yj.JSRIDLB;//������ID�б�
                yj_model.JSRMCLB = yj.JSRMCLB;//�����������б�
                yj_model.BT = yj.BT;//����
                yj_model.NR = yj.NR;//����
                yj_model.FJ = yj.FJ;//����
                yj_model.FSSJ = yj.FSSJ;//����ʱ��
                yj_model.SFYD = yj.SFYD;//�Ƿ����Ķ�
                yj_model.YJLX = yj.YJLX;//�ʼ�����1�ռ���2�ݸ���3�ѷ���4��ɾ��
                db_zxbg.Entry(yj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxbg.EDU_ZXBG_11_A01_YJ.Add(yj);
            }
            db_zxbg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXBG_11_A01_YJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXBG_11_A01_YJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXBG_11_A01_YJ yj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddYj(yj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXBG_11_A01_YJ yj= db_zxbg.EDU_ZXBG_11_A01_YJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(yj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXBG_11_A01_YJ yj)
        {
            InitViewBag();
            try
            {
                
                
                UpdYj(yj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(yj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(yj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXBG_11_A01_YJ yj = db_zxbg.EDU_ZXBG_11_A01_YJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxbg.EDU_ZXBG_11_A01_YJ.Remove(yj);
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
                    EDU_ZXBG_11_A01_YJ yj = db_zxbg.EDU_ZXBG_11_A01_YJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxbg.EDU_ZXBG_11_A01_YJ.Remove(yj);
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

        private static int Max_YJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�ʼ����ݱ����ID
        public int GetMax_YJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_YJ_ID == 0)
                {
                    EDU_ZXBG_11_A01_YJ yj = db_zxbg.EDU_ZXBG_11_A01_YJ.FirstOrDefault();
                    if (yj == null)
                    {
                        Max_YJ_ID = 1;
                    }
                    else
                    {
                        //Max_YJ_ID = db_zxbg.EDU_ZXBG_11_A01_YJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_YJ_ID++;
                }
                maxId = Max_YJ_ID;
            }
            return maxId;
        }

    }
}
