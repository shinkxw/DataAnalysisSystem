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
    public class XSSSController : OAXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZFC_08_01_XSSS_DISP> model = db_zzfc.VIEW_EDU_ZZFC_08_01_XSSS_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddXsss(EDU_ZZFC_08_01_XSSS xsss)
        {
            xsss.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdXsss(xsss);
        }

        public void UpdXsss(EDU_ZZFC_08_01_XSSS xsss)
        {
            //设置默认值
            if (xsss.SCHOOLID == 0) xsss.SCHOOLID = 0;//学校名学校ID
            if (xsss.ID == 0) xsss.ID = 0;//宿舍ID
            if (xsss.SSLID == 0) xsss.SSLID = 0;//宿舍楼ID
            if (string.IsNullOrEmpty(xsss.SSLBM)) xsss.SSLBM = "";//宿舍楼编号宿舍楼编号 编号：ZZFC080001 引用自JCBX020201 JZWH 建筑物号 C 6 M NULL 学校自编 NULL
            if (string.IsNullOrEmpty(xsss.FJBM)) xsss.FJBM = "";//房间编号房间编号 编号：ZZFC080002 
            if (string.IsNullOrEmpty(xsss.RZXB)) xsss.RZXB = "";//入住性别入住性别 编号：ZZFC080003 值空间：GB/T2261.1 解释/举例：1男性2女性 
            if (string.IsNullOrEmpty(xsss.SFKY)) xsss.SFKY = "";//是否可用是否可用 编号：ZZFC080004 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1可用0不可用 
            if (xsss.KZRS == 0) xsss.KZRS = 0;//可住人数可住人数 编号：ZZFC080005 
            if (string.IsNullOrEmpty(xsss.WLDK)) xsss.WLDK = "";//网络端口网络端口 编号：ZZFC080006 
            if (string.IsNullOrEmpty(xsss.AZDSJ)) xsss.AZDSJ = "";//安装电视机安装电视机 编号：ZZFC080007 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1已安装0未安装 
            if (string.IsNullOrEmpty(xsss.DHDK)) xsss.DHDK = "";//电话端口电话端口 编号：ZZFC080008 
            if (string.IsNullOrEmpty(xsss.DHHM)) xsss.DHHM = "";//电话号码电话号码 编号：ZZFC080009 
            if (xsss.SBDS == 0) xsss.SBDS = 0;//水表底数水表底数 编号：ZZFC080010 
            if (xsss.DBDS == 0) xsss.DBDS = 0;//电表底数电表底数 编号：ZZFC080011 
            if (string.IsNullOrEmpty(xsss.SSBZ)) xsss.SSBZ = "";//宿舍备注宿舍备注 编号：ZZFC080012 
            if (xsss.SZLZ == 0) xsss.SZLZ = 0;//所在楼层
            if (string.IsNullOrEmpty(xsss.SSM)) xsss.SSM = "";//宿舍名
            EDU_ZZFC_08_01_XSSS xsss_model = db_zzfc.EDU_ZZFC_08_01_XSSS.FirstOrDefault(e => e.SCHOOLID == xsss.SCHOOLID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (xsss_model != null)
            {
                xsss_model.SCHOOLID = xsss.SCHOOLID;//学校名学校ID
                xsss_model.ID = xsss.ID;//宿舍ID
                xsss_model.SSLID = xsss.SSLID;//宿舍楼ID
                xsss_model.SSLBM = xsss.SSLBM;//宿舍楼编号宿舍楼编号 编号：ZZFC080001 引用自JCBX020201 JZWH 建筑物号 C 6 M NULL 学校自编 NULL
                xsss_model.FJBM = xsss.FJBM;//房间编号房间编号 编号：ZZFC080002 
                xsss_model.RZXB = xsss.RZXB;//入住性别入住性别 编号：ZZFC080003 值空间：GB/T2261.1 解释/举例：1男性2女性 
                xsss_model.SFKY = xsss.SFKY;//是否可用是否可用 编号：ZZFC080004 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1可用0不可用 
                xsss_model.KZRS = xsss.KZRS;//可住人数可住人数 编号：ZZFC080005 
                xsss_model.WLDK = xsss.WLDK;//网络端口网络端口 编号：ZZFC080006 
                xsss_model.AZDSJ = xsss.AZDSJ;//安装电视机安装电视机 编号：ZZFC080007 值空间：JY/T1001SFBZ是否标志代码 解释/举例：1已安装0未安装 
                xsss_model.DHDK = xsss.DHDK;//电话端口电话端口 编号：ZZFC080008 
                xsss_model.DHHM = xsss.DHHM;//电话号码电话号码 编号：ZZFC080009 
                xsss_model.SBDS = xsss.SBDS;//水表底数水表底数 编号：ZZFC080010 
                xsss_model.DBDS = xsss.DBDS;//电表底数电表底数 编号：ZZFC080011 
                xsss_model.SSBZ = xsss.SSBZ;//宿舍备注宿舍备注 编号：ZZFC080012 
                xsss_model.SZLZ = xsss.SZLZ;//所在楼层
                xsss_model.SSM = xsss.SSM;//宿舍名
                db_zzfc.Entry(xsss_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzfc.EDU_ZZFC_08_01_XSSS.Add(xsss);
            }
            db_zzfc.SaveChanges();
        }
        public void InitViewBag()
        {
            //ViewBag.
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZFC_08_01_XSSS());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZFC_08_01_XSSS());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZFC_08_01_XSSS xsss)
        {
            InitViewBag();
            try
            {
                //
                //
                AddXsss(xsss);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsss);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsss);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZFC_08_01_XSSS xsss= db_zzfc.EDU_ZZFC_08_01_XSSS.Single(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(xsss);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZFC_08_01_XSSS xsss)
        {
            InitViewBag();
            try
            {
                
                
                UpdXsss(xsss);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(xsss);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(xsss);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZFC_08_01_XSSS xsss = db_zzfc.EDU_ZZFC_08_01_XSSS.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzfc.EDU_ZZFC_08_01_XSSS.Remove(xsss);
                db_zzfc.SaveChanges();
                return "删除成功！";
            }
            catch (DbEntityValidationException dbEx)
            {
                return "删除出错！" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "删除出错！" + e.Message;
            }
        }*/

        public String Delete(String idLst)
        {
            try
            {
                int[] idlst = Utils.Utils.GetSafeIdsArr(idLst, LDALConstant.DefSpear);
                foreach (int id in idlst)
                {
                    EDU_ZZFC_08_01_XSSS xsss = db_zzfc.EDU_ZZFC_08_01_XSSS.SingleOrDefault(e => e.SCHOOLID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzfc.EDU_ZZFC_08_01_XSSS.Remove(xsss);
                    db_zzfc.SaveChanges();
                }
                return "删除成功！"
;            }
            catch (DbEntityValidationException dbEx)
            {
                return "删除出错！" + dbEx.Message;
            }
            catch (Exception e)
            {
                return "删除出错！" + e.Message;
            }
        }

        private static int Max_XSSS_ID = 0;
        private static object syncIDLock = new object();
        //获取学生宿舍数据类表最大ID
        public int GetMax_XSSS_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_XSSS_ID == 0)
                {
                    EDU_ZZFC_08_01_XSSS xsss = db_zzfc.EDU_ZZFC_08_01_XSSS.FirstOrDefault();
                    if (xsss == null)
                    {
                        Max_XSSS_ID = 1;
                    }
                    else
                    {
                        //Max_XSSS_ID = db_zzfc.EDU_ZZFC_08_01_XSSS.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_XSSS_ID++;
                }
                maxId = Max_XSSS_ID;
            }
            return maxId;
        }

    }
}
