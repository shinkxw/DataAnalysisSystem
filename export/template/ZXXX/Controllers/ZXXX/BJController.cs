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
    public class BJController : XGXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_03_01_BJ_DISP> model = db_zxxx.VIEW_EDU_ZXXX_03_01_BJ_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddBj(EDU_ZXXX_03_01_BJ bj)
        {
            bj.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdBj(bj);
        }

        public void UpdBj(EDU_ZXXX_03_01_BJ bj)
        {
            //����Ĭ��ֵ
            if (bj.SCHOOLID == 0) bj.SCHOOLID = 0;//ѧУ��ѧУID
            if (string.IsNullOrEmpty(bj.BH)) bj.BH = "";//���ѧУ�Ա�
            if (string.IsNullOrEmpty(bj.NJ)) bj.NJ = "";//�꼶��
            if (string.IsNullOrEmpty(bj.BJ)) bj.BJ = "";//�༶����
            if (string.IsNullOrEmpty(bj.JBNY)) bj.JBNY = "";//���������磺200604��ʾ2006��4��
            if (string.IsNullOrEmpty(bj.BZRGH)) bj.BZRGH = "";//�����ι���
            if (string.IsNullOrEmpty(bj.BZXH)) bj.BZXH = "";//�೤ѧ��
            if (string.IsNullOrEmpty(bj.BJRYCH)) bj.BJRYCH = "";//�༶�����ƺŽ���/�������༶��õ������ƺ� 
            if (bj.XZ == 0) bj.XZ = 0;//ѧ�ƽ���/����������ѧ��������Уѧϰ���ѧҵ�涨������
            if (string.IsNullOrEmpty(bj.BJLXM)) bj.BJLXM = "";//�༶������ֵ�ռ䣺JY/T1001ZXXBJLX��Сѧ�༶���ʹ��� 
            if (string.IsNullOrEmpty(bj.WLLX)) bj.WLLX = "";//�������ͽ���/��������������:���н׶�����Ʒְ� 
            if (string.IsNullOrEmpty(bj.BYRQ)) bj.BYRQ = "";//��ҵ�����磺20060412��ʾ2006��4��12��
            if (string.IsNullOrEmpty(bj.SFSSMZSYJXB)) bj.SFSSMZSYJXB = "";//�Ƿ���������˫���ѧ��ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
            if (string.IsNullOrEmpty(bj.SYJXMSM)) bj.SYJXMSM = "";//˫���ѧģʽ��ֵ�ռ䣺JY/T1001SSMZSYJXMS��������˫���ѧģʽ���� 
            EDU_ZXXX_03_01_BJ bj_model = db_zxxx.EDU_ZXXX_03_01_BJ.FirstOrDefault(e => e.SCHOOLID == bj.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (bj_model != null)
            {
                bj_model.SCHOOLID = bj.SCHOOLID;//ѧУ��ѧУID
                bj_model.BH = bj.BH;//���ѧУ�Ա�
                bj_model.NJ = bj.NJ;//�꼶��
                bj_model.BJ = bj.BJ;//�༶����
                bj_model.JBNY = bj.JBNY;//���������磺200604��ʾ2006��4��
                bj_model.BZRGH = bj.BZRGH;//�����ι���
                bj_model.BZXH = bj.BZXH;//�೤ѧ��
                bj_model.BJRYCH = bj.BJRYCH;//�༶�����ƺŽ���/�������༶��õ������ƺ� 
                bj_model.XZ = bj.XZ;//ѧ�ƽ���/����������ѧ��������Уѧϰ���ѧҵ�涨������
                bj_model.BJLXM = bj.BJLXM;//�༶������ֵ�ռ䣺JY/T1001ZXXBJLX��Сѧ�༶���ʹ��� 
                bj_model.WLLX = bj.WLLX;//�������ͽ���/��������������:���н׶�����Ʒְ� 
                bj_model.BYRQ = bj.BYRQ;//��ҵ�����磺20060412��ʾ2006��4��12��
                bj_model.SFSSMZSYJXB = bj.SFSSMZSYJXB;//�Ƿ���������˫���ѧ��ֵ�ռ䣺JY/T1001SFBZ�Ƿ��־���� 
                bj_model.SYJXMSM = bj.SYJXMSM;//˫���ѧģʽ��ֵ�ռ䣺JY/T1001SSMZSYJXMS��������˫���ѧģʽ���� 
                db_zxxx.Entry(bj_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("��¼������");
                //db_zxxx.EDU_ZXXX_03_01_BJ.Add(bj);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_03_01_BJ());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_03_01_BJ());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_03_01_BJ bj)
        {
            InitViewBag();
            try
            {
                //
                //
                AddBj(bj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(bj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(bj);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_03_01_BJ bj= db_zxxx.EDU_ZXXX_03_01_BJ.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(bj);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_03_01_BJ bj)
        {
            InitViewBag();
            try
            {
                
                
                UpdBj(bj);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(bj);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(bj);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXX_03_01_BJ bj = db_zxxx.EDU_ZXXX_03_01_BJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_03_01_BJ.Remove(bj);
                db_zxxx.SaveChanges();
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
                    EDU_ZXXX_03_01_BJ bj = db_zxxx.EDU_ZXXX_03_01_BJ.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_03_01_BJ.Remove(bj);
                    db_zxxx.SaveChanges();
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

        private static int Max_BJ_ID = 0;
        private static object syncIDLock = new object();
        //��ȡ�༶����������ID
        public int GetMax_BJ_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_BJ_ID == 0)
                {
                    EDU_ZXXX_03_01_BJ bj = db_zxxx.EDU_ZXXX_03_01_BJ.FirstOrDefault();
                    if (bj == null)
                    {
                        Max_BJ_ID = 1;
                    }
                    else
                    {
                        //Max_BJ_ID = db_zxxx.EDU_ZXXX_03_01_BJ.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_BJ_ID++;
                }
                maxId = Max_BJ_ID;
            }
            return maxId;
        }

    }
}
