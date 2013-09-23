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
    public class ZYXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJX_01_01_ZYXX_DISP> model = db_zzjx.VIEW_EDU_ZZJX_01_01_ZYXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.ZYBH.Contains(searchkey)).ToList();
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

        public void AddZyxx(EDU_ZZJX_01_01_ZYXX zyxx)
        {
            zyxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZyxx(zyxx);
        }

        public void UpdZyxx(EDU_ZZJX_01_01_ZYXX zyxx)
        {
            //����Ĭ��ֵ
            if (zyxx.ZYBH == 0) zyxx.ZYBH = 0;//רҵ���
            if (zyxx.SCHOOLID == 0) zyxx.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(zyxx.ZYDM)) zyxx.ZYDM = "";//רҵ����   �Խ�רҵ����
            if (string.IsNullOrEmpty(zyxx.ZYMC)) zyxx.ZYMC = "";//רҵ����
            if (string.IsNullOrEmpty(zyxx.ZYYWMC)) zyxx.ZYYWMC = "";//רҵӢ������
            if (string.IsNullOrEmpty(zyxx.XZ)) zyxx.XZ = "";//ѧ��
            if (string.IsNullOrEmpty(zyxx.ZYFXMC)) zyxx.ZYFXMC = "";//רҵ��������
            if (string.IsNullOrEmpty(zyxx.ZYJC)) zyxx.ZYJC = "";//רҵ���
            if (string.IsNullOrEmpty(zyxx.JLNY)) zyxx.JLNY = "";//��������
            if (zyxx.ZYJSS == 0) zyxx.ZYJSS = 0;//רҵ��ʦ��
            if (string.IsNullOrEmpty(zyxx.KSJGH)) zyxx.KSJGH = "";//���������   У�ڻ����������
            if (string.IsNullOrEmpty(zyxx.ZXF)) zyxx.ZXF = "";//��ѧ��
            if (string.IsNullOrEmpty(zyxx.SSZYML)) zyxx.SSZYML = "";//����רҵĿ¼   רҵĿ¼����
            if (string.IsNullOrEmpty(zyxx.ZYLB)) zyxx.ZYLB = "";//רҵ�������
            EDU_ZZJX_01_01_ZYXX zyxx_model = db_zzjx.EDU_ZZJX_01_01_ZYXX.FirstOrDefault(e => e.ZYBH == zyxx.ZYBH
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zyxx_model != null)
            {
                zyxx_model.ZYBH = zyxx.ZYBH;//רҵ���
                zyxx_model.SCHOOLID = zyxx.SCHOOLID;//ѧУ��   ѧУ���ñ�
                zyxx_model.ZYDM = zyxx.ZYDM;//רҵ����   �Խ�רҵ����
                zyxx_model.ZYMC = zyxx.ZYMC;//רҵ����
                zyxx_model.ZYYWMC = zyxx.ZYYWMC;//רҵӢ������
                zyxx_model.XZ = zyxx.XZ;//ѧ��
                zyxx_model.ZYFXMC = zyxx.ZYFXMC;//רҵ��������
                zyxx_model.ZYJC = zyxx.ZYJC;//רҵ���
                zyxx_model.JLNY = zyxx.JLNY;//��������
                zyxx_model.ZYJSS = zyxx.ZYJSS;//רҵ��ʦ��
                zyxx_model.KSJGH = zyxx.KSJGH;//���������   У�ڻ����������
                zyxx_model.ZXF = zyxx.ZXF;//��ѧ��
                zyxx_model.SSZYML = zyxx.SSZYML;//����רҵĿ¼   רҵĿ¼����
                zyxx_model.ZYLB = zyxx.ZYLB;//רҵ�������
                db_zzjx.Entry(zyxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjx.EDU_ZZJX_01_01_ZYXX.Add(zyxx);
            }
            db_zzjx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.ZJ_ZJZYLst = ZJLDAL.GetZJ_ZJZYSelLst();
            ViewBag.ZJ_ZYMLLst = ZJLDAL.GetZJ_ZYMLSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJX_01_01_ZYXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJX_01_01_ZYXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJX_01_01_ZYXX zyxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZyxx(zyxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zyxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zyxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJX_01_01_ZYXX zyxx= db_zzjx.EDU_ZZJX_01_01_ZYXX.Single(e => e.ZYBH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zyxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJX_01_01_ZYXX zyxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdZyxx(zyxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zyxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zyxx);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZZJX_01_01_ZYXX zyxx = db_zzjx.EDU_ZZJX_01_01_ZYXX.SingleOrDefault(e => e.ZYBH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjx.EDU_ZZJX_01_01_ZYXX.Remove(zyxx);
                db_zzjx.SaveChanges();
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
                    EDU_ZZJX_01_01_ZYXX zyxx = db_zzjx.EDU_ZZJX_01_01_ZYXX.SingleOrDefault(e => e.ZYBH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_01_01_ZYXX.Remove(zyxx);
                    db_zzjx.SaveChanges();
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

        private static int Max_ZYXX_ID = 0;
        private static object syncIDLock = new object();
        //��ȡרҵ������Ϣ���ݱ����ID
        public int GetMax_ZYXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZYXX_ID == 0)
                {
                    EDU_ZZJX_01_01_ZYXX zyxx = db_zzjx.EDU_ZZJX_01_01_ZYXX.FirstOrDefault();
                    if (zyxx == null)
                    {
                        Max_ZYXX_ID = 1;
                    }
                    else
                    {
                        //Max_ZYXX_ID = db_zzjx.EDU_ZZJX_01_01_ZYXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZYXX_ID++;
                }
                maxId = Max_ZYXX_ID;
            }
            return maxId;
        }

    }
}
