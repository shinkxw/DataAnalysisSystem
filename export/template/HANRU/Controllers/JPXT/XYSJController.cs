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
    public class XYSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_JPXT_03_01_XYSJ_DISP> model = db_jpxt.VIEW_EDU_JPXT_03_01_XYSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXysj(EDU_JPXT_03_01_XYSJ xysj)
        {
            xysj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXysj(xysj);
        }

        public void UpdXysj(EDU_JPXT_03_01_XYSJ xysj)
        {
            //����Ĭ��ֵ
            if (xysj.ID == 0) xysj.ID = 0;//���
            if (xysj.SCHOOLID == 0) xysj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (string.IsNullOrEmpty(xysj.XM)) xysj.XM = "";//����
            if (string.IsNullOrEmpty(xysj.SFZH)) xysj.SFZH = "";//���֤��
            if (string.IsNullOrEmpty(xysj.XBM)) xysj.XBM = "";//�Ա���   �˵��Ա����
            if (string.IsNullOrEmpty(xysj.LXDH)) xysj.LXDH = "";//��ϵ�绰
            if (string.IsNullOrEmpty(xysj.ZZ)) xysj.ZZ = "";//סַ
            if (string.IsNullOrEmpty(xysj.SFQK)) xysj.SFQK = "";//�ɷ����
            if (xysj.SXCXID == 0) xysj.SXCXID = 0;//��ѡ����ID   �����ͺ����ݱ�
            if (string.IsNullOrEmpty(xysj.ZJQK)) xysj.ZJQK = "";//�������
            if (xysj.SZJLCID == 0) xysj.SZJLCID = 0;//��������ԱID   ����Ա���ݱ�
            if (xysj.YJJLYID == 0) xysj.YJJLYID = 0;//��������ԱID   ����Ա���ݱ�
            if (xysj.DQZT == 0) xysj.DQZT = 0;//��ǰ״̬
            EDU_JPXT_03_01_XYSJ xysj_model = db_jpxt.EDU_JPXT_03_01_XYSJ.FirstOrDefault(e => e.ID == xysj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xysj_model != null)
            {
                xysj_model.ID = xysj.ID;//���
                xysj_model.SCHOOLID = xysj.SCHOOLID;//ѧУID   ѧУ���ñ�
                xysj_model.XM = xysj.XM;//����
                xysj_model.SFZH = xysj.SFZH;//���֤��
                xysj_model.XBM = xysj.XBM;//�Ա���   �˵��Ա����
                xysj_model.LXDH = xysj.LXDH;//��ϵ�绰
                xysj_model.ZZ = xysj.ZZ;//סַ
                xysj_model.BMSJ = xysj.BMSJ;//����ʱ��
                xysj_model.SFQK = xysj.SFQK;//�ɷ����
                xysj_model.SXCXID = xysj.SXCXID;//��ѡ����ID   �����ͺ����ݱ�
                xysj_model.ZJQK = xysj.ZJQK;//�������
                xysj_model.SZJLCID = xysj.SZJLCID;//��������ԱID   ����Ա���ݱ�
                xysj_model.YJJLYID = xysj.YJJLYID;//��������ԱID   ����Ա���ݱ�
                xysj_model.DQZT = xysj.DQZT;//��ǰ״̬
                xysj_model.BYSJ = xysj.BYSJ;//��ҵʱ��
                db_jpxt.Entry(xysj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_jpxt.EDU_JPXT_03_01_XYSJ.Add(xysj);
            }
            db_jpxt.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_RDXBLst = GBLDAL.GetGB_RDXBSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_JPXT_03_01_XYSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_JPXT_03_01_XYSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_JPXT_03_01_XYSJ xysj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXysj(xysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xysj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_JPXT_03_01_XYSJ xysj= db_jpxt.EDU_JPXT_03_01_XYSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xysj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_JPXT_03_01_XYSJ xysj)
        {
            InitViewBag();
            try
            {
                
                
                UpdXysj(xysj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xysj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xysj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_JPXT_03_01_XYSJ xysj = db_jpxt.EDU_JPXT_03_01_XYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_jpxt.EDU_JPXT_03_01_XYSJ.Remove(xysj);
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
                    EDU_JPXT_03_01_XYSJ xysj = db_jpxt.EDU_JPXT_03_01_XYSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_jpxt.EDU_JPXT_03_01_XYSJ.Remove(xysj);
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

        private static int Max_XYSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧԱ���ݱ����ID
        public int GetMax_XYSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XYSJ_ID == 0)
                {
                    EDU_JPXT_03_01_XYSJ xysj = db_jpxt.EDU_JPXT_03_01_XYSJ.FirstOrDefault();
                    if (xysj == null)
                    {
                        Max_XYSJ_ID = 1;
                    }
                    else
                    {
                        //Max_XYSJ_ID = db_jpxt.EDU_JPXT_03_01_XYSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XYSJ_ID++;
                }
                maxId = Max_XYSJ_ID;
            }
            return maxId;
        }

    }
}
