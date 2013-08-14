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
    public class JZGLXFSController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZJG_02_01_JZGLXFS_DISP> model = db_zzjg.VIEW_EDU_ZZJG_02_01_JZGLXFS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddJzglxfs(EDU_ZZJG_02_01_JZGLXFS jzglxfs)
        {
            jzglxfs.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdJzglxfs(jzglxfs);
        }

        public void UpdJzglxfs(EDU_ZZJG_02_01_JZGLXFS jzglxfs)
        {
            //����Ĭ��ֵ
            if (jzglxfs.SCHOOLID == 0) jzglxfs.SCHOOLID = 0;//ѧУ��ѧУID
            if (jzglxfs.JZGJBSJID == 0) jzglxfs.JZGJBSJID = 0;//��ְ��ID
            if (string.IsNullOrEmpty(jzglxfs.GH)) jzglxfs.GH = "";//����
            if (string.IsNullOrEmpty(jzglxfs.XM)) jzglxfs.XM = "";//����
            if (string.IsNullOrEmpty(jzglxfs.YDDH)) jzglxfs.YDDH = "";//�ƶ��绰
            if (string.IsNullOrEmpty(jzglxfs.GDDH)) jzglxfs.GDDH = "";//�̶��绰
            if (string.IsNullOrEmpty(jzglxfs.YZBM)) jzglxfs.YZBM = "";//��������
            if (string.IsNullOrEmpty(jzglxfs.TXDZ)) jzglxfs.TXDZ = "";//ͨ�ŵ�ַ
            if (string.IsNullOrEmpty(jzglxfs.DZXX)) jzglxfs.DZXX = "";//��������
            if (string.IsNullOrEmpty(jzglxfs.WLDZ)) jzglxfs.WLDZ = "";//�����ַ
            if (string.IsNullOrEmpty(jzglxfs.JSTXH)) jzglxfs.JSTXH = "";//��ʱͨѶ��
            EDU_ZZJG_02_01_JZGLXFS jzglxfs_model = db_zzjg.EDU_ZZJG_02_01_JZGLXFS.FirstOrDefault(e => e.SCHOOLID == jzglxfs.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (jzglxfs_model != null)
            {
                jzglxfs_model.SCHOOLID = jzglxfs.SCHOOLID;//ѧУ��ѧУID
                jzglxfs_model.JZGJBSJID = jzglxfs.JZGJBSJID;//��ְ��ID
                jzglxfs_model.GH = jzglxfs.GH;//����
                jzglxfs_model.XM = jzglxfs.XM;//����
                jzglxfs_model.YDDH = jzglxfs.YDDH;//�ƶ��绰
                jzglxfs_model.GDDH = jzglxfs.GDDH;//�̶��绰
                jzglxfs_model.YZBM = jzglxfs.YZBM;//��������
                jzglxfs_model.TXDZ = jzglxfs.TXDZ;//ͨ�ŵ�ַ
                jzglxfs_model.DZXX = jzglxfs.DZXX;//��������
                jzglxfs_model.WLDZ = jzglxfs.WLDZ;//�����ַ
                jzglxfs_model.JSTXH = jzglxfs.JSTXH;//��ʱͨѶ��
                db_zzjg.Entry(jzglxfs_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zzjg.EDU_ZZJG_02_01_JZGLXFS.Add(jzglxfs);
            }
            db_zzjg.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZJG_02_01_JZGLXFS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZJG_02_01_JZGLXFS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZJG_02_01_JZGLXFS jzglxfs)
        {
            InitViewBag();
            try
            {
                //
                //
                AddJzglxfs(jzglxfs);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzglxfs);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzglxfs);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZJG_02_01_JZGLXFS jzglxfs= db_zzjg.EDU_ZZJG_02_01_JZGLXFS.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(jzglxfs);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZJG_02_01_JZGLXFS jzglxfs)
        {
            InitViewBag();
            try
            {
                
                
                UpdJzglxfs(jzglxfs);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(jzglxfs);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(jzglxfs);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZJG_02_01_JZGLXFS jzglxfs = db_zzjg.EDU_ZZJG_02_01_JZGLXFS.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzjg.EDU_ZZJG_02_01_JZGLXFS.Remove(jzglxfs);
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
                    EDU_ZZJG_02_01_JZGLXFS jzglxfs = db_zzjg.EDU_ZZJG_02_01_JZGLXFS.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjg.EDU_ZZJG_02_01_JZGLXFS.Remove(jzglxfs);
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

        private static int Max_JZGLXFS_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��ְ����ϵ��ʽ������������ID
        public int GetMax_JZGLXFS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_JZGLXFS_ID == 0)
                {
                    EDU_ZZJG_02_01_JZGLXFS jzglxfs = db_zzjg.EDU_ZZJG_02_01_JZGLXFS.FirstOrDefault();
                    if (jzglxfs == null)
                    {
                        Max_JZGLXFS_ID = 1;
                    }
                    else
                    {
                        //Max_JZGLXFS_ID = db_zzjg.EDU_ZZJG_02_01_JZGLXFS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_JZGLXFS_ID++;
                }
                maxId = Max_JZGLXFS_ID;
            }
            return maxId;
        }

    }
}
