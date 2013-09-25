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
    public class TKSQSJController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXJX_09_A01_TKSQSJ_DISP> model = db_zxjx.VIEW_EDU_ZXJX_09_A01_TKSQSJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTksqsj(EDU_ZXJX_09_A01_TKSQSJ tksqsj)
        {
            tksqsj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTksqsj(tksqsj);
        }

        public void UpdTksqsj(EDU_ZXJX_09_A01_TKSQSJ tksqsj)
        {
            //����Ĭ��ֵ
            if (tksqsj.ID == 0) tksqsj.ID = 0;//���
            if (tksqsj.SCHOOLID == 0) tksqsj.SCHOOLID = 0;//ѧУID   ѧУ���ñ�
            if (tksqsj.JSID == 0) tksqsj.JSID = 0;//��ʦ   ��ְ���������������
            if (string.IsNullOrEmpty(tksqsj.KCID)) tksqsj.KCID = "";//�γ�   �γ�������
            if (tksqsj.TKLXID == 0) tksqsj.TKLXID = 0;//��������ID   �������ʹ���
            if (tksqsj.TKQQSZ == 0) tksqsj.TKQQSZ = 0;//����ǰ��ʼ��   У���ܱ�
            if (tksqsj.TKQJSZ == 0) tksqsj.TKQJSZ = 0;//����ǰ������   У���ܱ�
            if (tksqsj.TKQXQ == 0) tksqsj.TKQXQ = 0;//����ǰ����   ����
            if (tksqsj.TKQSD == 0) tksqsj.TKQSD = 0;//����ǰʱ��   ʱ��
            if (tksqsj.TKQJC == 0) tksqsj.TKQJC = 0;//����ǰ�ڴ�   �ڴ�
            if (tksqsj.TKHQSZ == 0) tksqsj.TKHQSZ = 0;//���κ���ʼ��   У���ܱ�
            if (tksqsj.TKHJSZ == 0) tksqsj.TKHJSZ = 0;//���κ������   У���ܱ�
            if (tksqsj.TKHXQ == 0) tksqsj.TKHXQ = 0;//���κ�����   ����
            if (tksqsj.TKHSD == 0) tksqsj.TKHSD = 0;//���κ�ʱ��   ʱ��
            if (tksqsj.TKHJC == 0) tksqsj.TKHJC = 0;//���κ�ڴ�   �ڴ�
            if (tksqsj.ZT == 0) tksqsj.ZT = 0;//��ǰ״̬
            if (string.IsNullOrEmpty(tksqsj.BZ)) tksqsj.BZ = "";//��ע
            EDU_ZXJX_09_A01_TKSQSJ tksqsj_model = db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.FirstOrDefault(e => e.ID == tksqsj.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tksqsj_model != null)
            {
                tksqsj_model.ID = tksqsj.ID;//���
                tksqsj_model.SCHOOLID = tksqsj.SCHOOLID;//ѧУID   ѧУ���ñ�
                tksqsj_model.JSID = tksqsj.JSID;//��ʦ   ��ְ���������������
                tksqsj_model.KCID = tksqsj.KCID;//�γ�   �γ�������
                tksqsj_model.TKLXID = tksqsj.TKLXID;//��������ID   �������ʹ���
                tksqsj_model.TKQQSZ = tksqsj.TKQQSZ;//����ǰ��ʼ��   У���ܱ�
                tksqsj_model.TKQJSZ = tksqsj.TKQJSZ;//����ǰ������   У���ܱ�
                tksqsj_model.TKQXQ = tksqsj.TKQXQ;//����ǰ����   ����
                tksqsj_model.TKQSD = tksqsj.TKQSD;//����ǰʱ��   ʱ��
                tksqsj_model.TKQJC = tksqsj.TKQJC;//����ǰ�ڴ�   �ڴ�
                tksqsj_model.TKHQSZ = tksqsj.TKHQSZ;//���κ���ʼ��   У���ܱ�
                tksqsj_model.TKHJSZ = tksqsj.TKHJSZ;//���κ������   У���ܱ�
                tksqsj_model.TKHXQ = tksqsj.TKHXQ;//���κ�����   ����
                tksqsj_model.TKHSD = tksqsj.TKHSD;//���κ�ʱ��   ʱ��
                tksqsj_model.TKHJC = tksqsj.TKHJC;//���κ�ڴ�   �ڴ�
                tksqsj_model.ZT = tksqsj.ZT;//��ǰ״̬
                tksqsj_model.BZ = tksqsj.BZ;//��ע
                db_zxjx.Entry(tksqsj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.Add(tksqsj);
            }
            db_zxjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZJ_TKLXLst = ZJLDAL.GetZJ_TKLXSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXJX_09_A01_TKSQSJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXJX_09_A01_TKSQSJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXJX_09_A01_TKSQSJ tksqsj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTksqsj(tksqsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tksqsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tksqsj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXJX_09_A01_TKSQSJ tksqsj= db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tksqsj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXJX_09_A01_TKSQSJ tksqsj)
        {
            InitViewBag();
            try
            {
                
                
                UpdTksqsj(tksqsj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tksqsj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tksqsj);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZXJX_09_A01_TKSQSJ tksqsj = db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.Remove(tksqsj);
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
                    EDU_ZXJX_09_A01_TKSQSJ tksqsj = db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.Remove(tksqsj);
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

        private static int Max_TKSQSJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�����������ݱ����ID
        public int GetMax_TKSQSJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TKSQSJ_ID == 0)
                {
                    EDU_ZXJX_09_A01_TKSQSJ tksqsj = db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.FirstOrDefault();
                    if (tksqsj == null)
                    {
                        Max_TKSQSJ_ID = 1;
                    }
                    else
                    {
                        //Max_TKSQSJ_ID = db_zxjx.EDU_ZXJX_09_A01_TKSQSJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TKSQSJ_ID++;
                }
                maxId = Max_TKSQSJ_ID;
            }
            return maxId;
        }

    }
}
