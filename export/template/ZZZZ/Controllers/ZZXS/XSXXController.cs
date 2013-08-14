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
    public class XSXXController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZXS_01_01_XSXX_DISP> model = db_zzxs.VIEW_EDU_ZZXS_01_01_XSXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsxx(EDU_ZZXS_01_01_XSXX xsxx)
        {
            xsxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsxx(xsxx);
        }

        public void UpdXsxx(EDU_ZZXS_01_01_XSXX xsxx)
        {
            //����Ĭ��ֵ
            if (xsxx.ID == 0) xsxx.ID = 0;//���
            if (xsxx.SCHOOLID == 0) xsxx.SCHOOLID = 0;//ѧУ��EDU_ZZXX_01_01_ZZXX
            if (string.IsNullOrEmpty(xsxx.XH)) xsxx.XH = "";//ѧ��
            if (string.IsNullOrEmpty(xsxx.XM)) xsxx.XM = "";//����
            if (string.IsNullOrEmpty(xsxx.YWXM)) xsxx.YWXM = "";//Ӣ������
            if (string.IsNullOrEmpty(xsxx.XMPY)) xsxx.XMPY = "";//����ƴ��
            if (string.IsNullOrEmpty(xsxx.CYM)) xsxx.CYM = "";//������
            if (string.IsNullOrEmpty(xsxx.SFZJLXM)) xsxx.SFZJLXM = "";//���֤��������EDU_JY_SFZJLX
            if (string.IsNullOrEmpty(xsxx.SFZJH)) xsxx.SFZJH = "";//���֤����
            if (string.IsNullOrEmpty(xsxx.XBM)) xsxx.XBM = "";//�Ա���EDU_GB_RDXB
            if (string.IsNullOrEmpty(xsxx.XXM)) xsxx.XXM = "";//Ѫ����EDU_JY_XX
            if (string.IsNullOrEmpty(xsxx.CSRQ)) xsxx.CSRQ = "";//��������
            if (string.IsNullOrEmpty(xsxx.CSDM)) xsxx.CSDM = "";//��������EDU_GB_ZHRMGHGXZQH
            if (string.IsNullOrEmpty(xsxx.JG)) xsxx.JG = "";//����
            if (string.IsNullOrEmpty(xsxx.MZM)) xsxx.MZM = "";//������EDU_GB_ZGGMZMCDLMZMPXF
            if (string.IsNullOrEmpty(xsxx.HYZKM)) xsxx.HYZKM = "";//����״����EDU_GB_HYZZ
            if (string.IsNullOrEmpty(xsxx.XYZJM)) xsxx.XYZJM = "";//�����ڽ���EDU_GB_ZJXY
            if (string.IsNullOrEmpty(xsxx.GATQWM)) xsxx.GATQWM = "";//�۰�̨������EDU_JY_GATQW
            if (string.IsNullOrEmpty(xsxx.JKZKM)) xsxx.JKZKM = "";//����״����EDU_GB_JKZKYWSZ
            if (string.IsNullOrEmpty(xsxx.ZZMMM)) xsxx.ZZMMM = "";//������ò��EDU_GB_ZZMM
            if (string.IsNullOrEmpty(xsxx.HKSZDXZQHM)) xsxx.HKSZDXZQHM = "";//�������ڵ�����������EDU_GB_ZHRMGHGXZQH
            if (string.IsNullOrEmpty(xsxx.HKLBM)) xsxx.HKLBM = "";//���������EDU_GB_HKLB
            if (string.IsNullOrEmpty(xsxx.SFSLDRK)) xsxx.SFSLDRK = "";//�Ƿ��������˿�EDU_JY_SFBZ
            if (string.IsNullOrEmpty(xsxx.GJDQM)) xsxx.GJDQM = "";//����/����EDU_GB_SJGGHDQMC
            if (string.IsNullOrEmpty(xsxx.TC)) xsxx.TC = "";//�س�
            if (string.IsNullOrEmpty(xsxx.XSLXDH)) xsxx.XSLXDH = "";//ѧ����ϵ�绰
            if (string.IsNullOrEmpty(xsxx.WLDZ)) xsxx.WLDZ = "";//�����ַ
            if (string.IsNullOrEmpty(xsxx.JSTXH)) xsxx.JSTXH = "";//��ʱͨѶ��
            if (string.IsNullOrEmpty(xsxx.DZXX)) xsxx.DZXX = "";//��������
            if (string.IsNullOrEmpty(xsxx.ZP)) xsxx.ZP = "";//��Ƭ(·��)
            EDU_ZZXS_01_01_XSXX xsxx_model = db_zzxs.EDU_ZZXS_01_01_XSXX.FirstOrDefault(e => e.ID == xsxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsxx_model != null)
            {
                xsxx_model.ID = xsxx.ID;//���
                xsxx_model.SCHOOLID = xsxx.SCHOOLID;//ѧУ��EDU_ZZXX_01_01_ZZXX
                xsxx_model.XH = xsxx.XH;//ѧ��
                xsxx_model.XM = xsxx.XM;//����
                xsxx_model.YWXM = xsxx.YWXM;//Ӣ������
                xsxx_model.XMPY = xsxx.XMPY;//����ƴ��
                xsxx_model.CYM = xsxx.CYM;//������
                xsxx_model.SFZJLXM = xsxx.SFZJLXM;//���֤��������EDU_JY_SFZJLX
                xsxx_model.SFZJH = xsxx.SFZJH;//���֤����
                xsxx_model.XBM = xsxx.XBM;//�Ա���EDU_GB_RDXB
                xsxx_model.XXM = xsxx.XXM;//Ѫ����EDU_JY_XX
                xsxx_model.CSRQ = xsxx.CSRQ;//��������
                xsxx_model.CSDM = xsxx.CSDM;//��������EDU_GB_ZHRMGHGXZQH
                xsxx_model.JG = xsxx.JG;//����
                xsxx_model.MZM = xsxx.MZM;//������EDU_GB_ZGGMZMCDLMZMPXF
                xsxx_model.HYZKM = xsxx.HYZKM;//����״����EDU_GB_HYZZ
                xsxx_model.XYZJM = xsxx.XYZJM;//�����ڽ���EDU_GB_ZJXY
                xsxx_model.GATQWM = xsxx.GATQWM;//�۰�̨������EDU_JY_GATQW
                xsxx_model.JKZKM = xsxx.JKZKM;//����״����EDU_GB_JKZKYWSZ
                xsxx_model.ZZMMM = xsxx.ZZMMM;//������ò��EDU_GB_ZZMM
                xsxx_model.HKSZDXZQHM = xsxx.HKSZDXZQHM;//�������ڵ�����������EDU_GB_ZHRMGHGXZQH
                xsxx_model.HKLBM = xsxx.HKLBM;//���������EDU_GB_HKLB
                xsxx_model.SFSLDRK = xsxx.SFSLDRK;//�Ƿ��������˿�EDU_JY_SFBZ
                xsxx_model.GJDQM = xsxx.GJDQM;//����/����EDU_GB_SJGGHDQMC
                xsxx_model.TC = xsxx.TC;//�س�
                xsxx_model.XSLXDH = xsxx.XSLXDH;//ѧ����ϵ�绰
                xsxx_model.WLDZ = xsxx.WLDZ;//�����ַ
                xsxx_model.JSTXH = xsxx.JSTXH;//��ʱͨѶ��
                xsxx_model.DZXX = xsxx.DZXX;//��������
                xsxx_model.ZP = xsxx.ZP;//��Ƭ(·��)
                db_zzxs.Entry(xsxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzxs.EDU_ZZXS_01_01_XSXX.Add(xsxx);
            }
            db_zzxs.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZXS_01_01_XSXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZXS_01_01_XSXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZXS_01_01_XSXX xsxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsxx(xsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZXS_01_01_XSXX xsxx= db_zzxs.EDU_ZZXS_01_01_XSXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZXS_01_01_XSXX xsxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsxx(xsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsxx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzxs.EDU_ZZXS_01_01_XSXX.Remove(xsxx);
                db_zzxs.SaveChanges();
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
                    EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzxs.EDU_ZZXS_01_01_XSXX.Remove(xsxx);
                    db_zzxs.SaveChanges();
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

        private static int Max_XSXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡѧ����Ϣ���ݱ����ID
        public int GetMax_XSXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSXX_ID == 0)
                {
                    EDU_ZZXS_01_01_XSXX xsxx = db_zzxs.EDU_ZZXS_01_01_XSXX.FirstOrDefault();
                    if (xsxx == null)
                    {
                        Max_XSXX_ID = 1;
                    }
                    else
                    {
                        //Max_XSXX_ID = db_zzxs.EDU_ZZXS_01_01_XSXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSXX_ID++;
                }
                maxId = Max_XSXX_ID;
            }
            return maxId;
        }

    }
}
