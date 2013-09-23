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
            //设置默认值
            if (zyxx.ZYBH == 0) zyxx.ZYBH = 0;//专业编号
            if (zyxx.SCHOOLID == 0) zyxx.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(zyxx.ZYDM)) zyxx.ZYDM = "";//专业代码   自建专业代码
            if (string.IsNullOrEmpty(zyxx.ZYMC)) zyxx.ZYMC = "";//专业名称
            if (string.IsNullOrEmpty(zyxx.ZYYWMC)) zyxx.ZYYWMC = "";//专业英文名称
            if (string.IsNullOrEmpty(zyxx.XZ)) zyxx.XZ = "";//学制
            if (string.IsNullOrEmpty(zyxx.ZYFXMC)) zyxx.ZYFXMC = "";//专业方向名称
            if (string.IsNullOrEmpty(zyxx.ZYJC)) zyxx.ZYJC = "";//专业简称
            if (string.IsNullOrEmpty(zyxx.JLNY)) zyxx.JLNY = "";//建立年月
            if (zyxx.ZYJSS == 0) zyxx.ZYJSS = 0;//专业教师数
            if (string.IsNullOrEmpty(zyxx.KSJGH)) zyxx.KSJGH = "";//开设机构号   校内机构数据类表
            if (string.IsNullOrEmpty(zyxx.ZXF)) zyxx.ZXF = "";//总学分
            if (string.IsNullOrEmpty(zyxx.SSZYML)) zyxx.SSZYML = "";//所属专业目录   专业目录代码
            if (string.IsNullOrEmpty(zyxx.ZYLB)) zyxx.ZYLB = "";//专业类别名称
            EDU_ZZJX_01_01_ZYXX zyxx_model = db_zzjx.EDU_ZZJX_01_01_ZYXX.FirstOrDefault(e => e.ZYBH == zyxx.ZYBH
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zyxx_model != null)
            {
                zyxx_model.ZYBH = zyxx.ZYBH;//专业编号
                zyxx_model.SCHOOLID = zyxx.SCHOOLID;//学校名   学校配置表
                zyxx_model.ZYDM = zyxx.ZYDM;//专业代码   自建专业代码
                zyxx_model.ZYMC = zyxx.ZYMC;//专业名称
                zyxx_model.ZYYWMC = zyxx.ZYYWMC;//专业英文名称
                zyxx_model.XZ = zyxx.XZ;//学制
                zyxx_model.ZYFXMC = zyxx.ZYFXMC;//专业方向名称
                zyxx_model.ZYJC = zyxx.ZYJC;//专业简称
                zyxx_model.JLNY = zyxx.JLNY;//建立年月
                zyxx_model.ZYJSS = zyxx.ZYJSS;//专业教师数
                zyxx_model.KSJGH = zyxx.KSJGH;//开设机构号   校内机构数据类表
                zyxx_model.ZXF = zyxx.ZXF;//总学分
                zyxx_model.SSZYML = zyxx.SSZYML;//所属专业目录   专业目录代码
                zyxx_model.ZYLB = zyxx.ZYLB;//专业类别名称
                db_zzjx.Entry(zyxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
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
                    EDU_ZZJX_01_01_ZYXX zyxx = db_zzjx.EDU_ZZJX_01_01_ZYXX.SingleOrDefault(e => e.ZYBH == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzjx.EDU_ZZJX_01_01_ZYXX.Remove(zyxx);
                    db_zzjx.SaveChanges();
                }
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
        }

        private static int Max_ZYXX_ID = 0;
        private static object syncIDLock = new object();
        //获取专业基本信息数据表最大ID
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
