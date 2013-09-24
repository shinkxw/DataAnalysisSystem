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
    public class WZPZController : JPXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_MHXT_WZPZ_DISP> model = db_zyzx.VIEW_EDU_ZYZX_MHXT_WZPZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.WEBID.Contains(searchkey)).ToList();
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

        public void AddWzpz(EDU_ZYZX_MHXT_WZPZ wzpz)
        {
            wzpz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdWzpz(wzpz);
        }

        public void UpdWzpz(EDU_ZYZX_MHXT_WZPZ wzpz)
        {
            //����Ĭ��ֵ
            if (wzpz.WEBID == 0) wzpz.WEBID = 0;//��վID   ��վ����
            if (wzpz.SCHOOLID == 0) wzpz.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (string.IsNullOrEmpty(wzpz.WEBNAME)) wzpz.WEBNAME = "";//��վ��
            if (wzpz.STATUID == 0) wzpz.STATUID = 0;//�Ƿ���
            if (string.IsNullOrEmpty(wzpz.WEBURL)) wzpz.WEBURL = "";//��ַ
            if (wzpz.CSSID == 0) wzpz.CSSID = 0;//��վ��ʽ   ��ʽ��
            EDU_ZYZX_MHXT_WZPZ wzpz_model = db_zyzx.EDU_ZYZX_MHXT_WZPZ.FirstOrDefault(e => e.WEBID == wzpz.WEBID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (wzpz_model != null)
            {
                wzpz_model.WEBID = wzpz.WEBID;//��վID   ��վ����
                wzpz_model.SCHOOLID = wzpz.SCHOOLID;//ѧУ��   ѧУ���ñ�
                wzpz_model.WEBNAME = wzpz.WEBNAME;//��վ��
                wzpz_model.STATUID = wzpz.STATUID;//�Ƿ���
                wzpz_model.WEBURL = wzpz.WEBURL;//��ַ
                wzpz_model.CSSID = wzpz.CSSID;//��վ��ʽ   ��ʽ��
                db_zyzx.Entry(wzpz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zyzx.EDU_ZYZX_MHXT_WZPZ.Add(wzpz);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_MHXT_WZPZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_MHXT_WZPZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_MHXT_WZPZ wzpz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddWzpz(wzpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzpz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_MHXT_WZPZ wzpz= db_zyzx.EDU_ZYZX_MHXT_WZPZ.Single(e => e.WEBID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(wzpz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_MHXT_WZPZ wzpz)
        {
            InitViewBag();
            try
            {
                
                
                UpdWzpz(wzpz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(wzpz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(wzpz);
            }
        }

        /*public String Delete(String id)
        {
            try
            {
                EDU_ZYZX_MHXT_WZPZ wzpz = db_zyzx.EDU_ZYZX_MHXT_WZPZ.SingleOrDefault(e => e.WEBID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_MHXT_WZPZ.Remove(wzpz);
                db_zyzx.SaveChanges();
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
                    EDU_ZYZX_MHXT_WZPZ wzpz = db_zyzx.EDU_ZYZX_MHXT_WZPZ.SingleOrDefault(e => e.WEBID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_MHXT_WZPZ.Remove(wzpz);
                    db_zyzx.SaveChanges();
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

        private static int Max_WZPZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ��վ�������ID
        public int GetMax_WZPZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_WZPZ_ID == 0)
                {
                    EDU_ZYZX_MHXT_WZPZ wzpz = db_zyzx.EDU_ZYZX_MHXT_WZPZ.FirstOrDefault();
                    if (wzpz == null)
                    {
                        Max_WZPZ_ID = 1;
                    }
                    else
                    {
                        //Max_WZPZ_ID = db_zyzx.EDU_ZYZX_MHXT_WZPZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_WZPZ_ID++;
                }
                maxId = Max_WZPZ_ID;
            }
            return maxId;
        }

    }
}
