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
    public class JLYWJQKController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_02_02_JLYWJQK_DISP> model = db_jpxt.VIEW_EDU_JPXT_02_02_JLYWJQK_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJlywjqk(EDU_JPXT_02_02_JLYWJQK jlywjqk)
        {
            jlywjqk.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJlywjqk(jlywjqk);
        }

        public void UpdJlywjqk(EDU_JPXT_02_02_JLYWJQK jlywjqk)
        {
            //����Ĭ��ֵ
            if (jlywjqk.ID == 0) jlywjqk.ID = 0;//���
            if (jlywjqk.SCHOOLID == 0) jlywjqk.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (jlywjqk.JLYID == 0) jlywjqk.JLYID = 0;//����ԱID   ����Ա���ݱ�
            if (string.IsNullOrEmpty(jlywjqk.TSR)) jlywjqk.TSR = "";//Ͷ����
            if (string.IsNullOrEmpty(jlywjqk.LXDH)) jlywjqk.LXDH = "";//��ϵ�绰
            if (string.IsNullOrEmpty(jlywjqk.TSNR)) jlywjqk.TSNR = "";//Ͷ������
            if (string.IsNullOrEmpty(jlywjqk.CLJG)) jlywjqk.CLJG = "";//������
            if (string.IsNullOrEmpty(jlywjqk.BZ)) jlywjqk.BZ = "";//��ע
            EDU_JPXT_02_02_JLYWJQK jlywjqk_model = db_jpxt.EDU_JPXT_02_02_JLYWJQK.FirstOrDefault(e => e.ID == jlywjqk.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jlywjqk_model != null)
            {
                jlywjqk_model.ID = jlywjqk.ID;//���
                jlywjqk_model.SCHOOLID = jlywjqk.SCHOOLID;//ѧУID   ѧУ���ñ�
                jlywjqk_model.JLYID = jlywjqk.JLYID;//����ԱID   ����Ա���ݱ�
                jlywjqk_model.TSR = jlywjqk.TSR;//Ͷ����
                jlywjqk_model.TSSJ = jlywjqk.TSSJ;//Ͷ��ʱ��
                jlywjqk_model.LXDH = jlywjqk.LXDH;//��ϵ�绰
                jlywjqk_model.TSNR = jlywjqk.TSNR;//Ͷ������
                jlywjqk_model.CLJG = jlywjqk.CLJG;//������
                jlywjqk_model.BZ = jlywjqk.BZ;//��ע
                db_jpxt.Entry(jlywjqk_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_02_02_JLYWJQK.Add(jlywjqk);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_02_02_JLYWJQK());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_02_02_JLYWJQK());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_02_02_JLYWJQK jlywjqk)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJlywjqk(jlywjqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlywjqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlywjqk);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_02_02_JLYWJQK jlywjqk= db_jpxt.EDU_JPXT_02_02_JLYWJQK.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jlywjqk);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_02_02_JLYWJQK jlywjqk)
        {
            InitViewBag();
            try
            {
                
                
                UpdJlywjqk(jlywjqk);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jlywjqk);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jlywjqk);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_02_02_JLYWJQK jlywjqk = db_jpxt.EDU_JPXT_02_02_JLYWJQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_02_02_JLYWJQK.Remove(jlywjqk);
                db_jpxt.SaveChanges();
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
                    EDU_JPXT_02_02_JLYWJQK jlywjqk = db_jpxt.EDU_JPXT_02_02_JLYWJQK.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_02_02_JLYWJQK.Remove(jlywjqk);
                    db_jpxt.SaveChanges();
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

        private static int Max_JLYWJQK_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ����ԱΥ����������ID
        public int GetMax_JLYWJQK_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JLYWJQK_ID == 0)
                {
                    EDU_JPXT_02_02_JLYWJQK jlywjqk = db_jpxt.EDU_JPXT_02_02_JLYWJQK.FirstOrDefault();
                    if (jlywjqk == null)
                    {
                        Max_JLYWJQK_ID = 1;
                    }
                    else
                    {
                        //Max_JLYWJQK_ID = db_jpxt.EDU_JPXT_02_02_JLYWJQK.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JLYWJQK_ID++;
                }
                maxId = Max_JLYWJQK_ID;
            }
            return maxId;
        }

    }
}
