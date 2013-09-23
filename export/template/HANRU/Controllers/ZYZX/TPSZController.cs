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
    public class TPSZController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZYZX_TPXT_TPSZ_DISP> model = db_zyzx.VIEW_EDU_ZYZX_TPXT_TPSZ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddTpsz(EDU_ZYZX_TPXT_TPSZ tpsz)
        {
            tpsz.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdTpsz(tpsz);
        }

        public void UpdTpsz(EDU_ZYZX_TPXT_TPSZ tpsz)
        {
            //����Ĭ��ֵ
            if (tpsz.ID == 0) tpsz.ID = 0;//ͶƱ����ID
            if (tpsz.SCHOOLID == 0) tpsz.SCHOOLID = 0;//ѧУ��   ѧУ���ñ�
            if (tpsz.WEBID == 0) tpsz.WEBID = 0;//��վID   ��վ����
            if (string.IsNullOrEmpty(tpsz.TITLE)) tpsz.TITLE = "";//����
            if (string.IsNullOrEmpty(tpsz.CONTENT)) tpsz.CONTENT = "";//����
            if (tpsz.SHOWSTYLEID == 0) tpsz.SHOWSTYLEID = 0;//��ʾ��ʽ
            if (tpsz.CSSID == 0) tpsz.CSSID = 0;//��ʾ��ʽ   ͶƱ��ʽ��
            if (string.IsNullOrEmpty(tpsz.LOGINNAMELIST)) tpsz.LOGINNAMELIST = "";//ͶƱ��
            if (tpsz.STARTSTATU == 0) tpsz.STARTSTATU = 0;//�Ƿ���
            EDU_ZYZX_TPXT_TPSZ tpsz_model = db_zyzx.EDU_ZYZX_TPXT_TPSZ.FirstOrDefault(e => e.ID == tpsz.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (tpsz_model != null)
            {
                tpsz_model.ID = tpsz.ID;//ͶƱ����ID
                tpsz_model.SCHOOLID = tpsz.SCHOOLID;//ѧУ��   ѧУ���ñ�
                tpsz_model.WEBID = tpsz.WEBID;//��վID   ��վ����
                tpsz_model.TITLE = tpsz.TITLE;//����
                tpsz_model.CONTENT = tpsz.CONTENT;//����
                tpsz_model.SHOWSTYLEID = tpsz.SHOWSTYLEID;//��ʾ��ʽ
                tpsz_model.CSSID = tpsz.CSSID;//��ʾ��ʽ   ͶƱ��ʽ��
                tpsz_model.LOGINNAMELIST = tpsz.LOGINNAMELIST;//ͶƱ��
                tpsz_model.STARTSTATU = tpsz.STARTSTATU;//�Ƿ���
                db_zyzx.Entry(tpsz_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zyzx.EDU_ZYZX_TPXT_TPSZ.Add(tpsz);
            }
            db_zyzx.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZYZX_TPXT_TPSZ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZYZX_TPXT_TPSZ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZYZX_TPXT_TPSZ tpsz)
        {
            InitViewBag();
            try
            {
                //
                //
                AddTpsz(tpsz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpsz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpsz);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZYZX_TPXT_TPSZ tpsz= db_zyzx.EDU_ZYZX_TPXT_TPSZ.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(tpsz);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZYZX_TPXT_TPSZ tpsz)
        {
            InitViewBag();
            try
            {
                
                
                UpdTpsz(tpsz);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(tpsz);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(tpsz);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZYZX_TPXT_TPSZ tpsz = db_zyzx.EDU_ZYZX_TPXT_TPSZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zyzx.EDU_ZYZX_TPXT_TPSZ.Remove(tpsz);
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
                    EDU_ZYZX_TPXT_TPSZ tpsz = db_zyzx.EDU_ZYZX_TPXT_TPSZ.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zyzx.EDU_ZYZX_TPXT_TPSZ.Remove(tpsz);
                    db_zyzx.SaveChanges();
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

        private static int Max_TPSZ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡͶƱ�������ID
        public int GetMax_TPSZ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_TPSZ_ID == 0)
                {
                    EDU_ZYZX_TPXT_TPSZ tpsz = db_zyzx.EDU_ZYZX_TPXT_TPSZ.FirstOrDefault();
                    if (tpsz == null)
                    {
                        Max_TPSZ_ID = 1;
                    }
                    else
                    {
                        //Max_TPSZ_ID = db_zyzx.EDU_ZYZX_TPXT_TPSZ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_TPSZ_ID++;
                }
                maxId = Max_TPSZ_ID;
            }
            return maxId;
        }

    }
}
