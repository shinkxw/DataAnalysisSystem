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
    public class ZSXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZZZS_01_01_ZSXX_DISP> model = db_zzzs.VIEW_EDU_ZZZS_01_01_ZSXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.XSXXID.Contains(searchkey)).ToList();
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

        public void AddZsxx(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            zsxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZsxx(zsxx);
        }

        public void UpdZsxx(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            //设置默认值
            if (zsxx.XSXXID == 0) zsxx.XSXXID = 0;//学生信息数据表   学生信息数据表
            if (zsxx.SCHOOLID == 0) zsxx.SCHOOLID = 0;//学校名   学校配置表
            if (string.IsNullOrEmpty(zsxx.ZKZH)) zsxx.ZKZH = "";//准考证号
            if (string.IsNullOrEmpty(zsxx.KSH)) zsxx.KSH = "";//考生号
            if (string.IsNullOrEmpty(zsxx.KQXZQHM)) zsxx.KQXZQHM = "";//考区行政区划码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(zsxx.RXNY)) zsxx.RXNY = "";//入学年月
            if (string.IsNullOrEmpty(zsxx.YSWGYZM)) zsxx.YSWGYZM = "";//应试外国语种码   语种名称代码2字母代码
            if (string.IsNullOrEmpty(zsxx.BKZYM1)) zsxx.BKZYM1 = "";//报考专业码1
            if (string.IsNullOrEmpty(zsxx.BKZYM2)) zsxx.BKZYM2 = "";//报考专业码2
            if (string.IsNullOrEmpty(zsxx.BKZYM3)) zsxx.BKZYM3 = "";//报考专业码3
            if (string.IsNullOrEmpty(zsxx.BKZYM4)) zsxx.BKZYM4 = "";//报考专业码4
            if (string.IsNullOrEmpty(zsxx.BKZYM5)) zsxx.BKZYM5 = "";//报考专业码5
            if (string.IsNullOrEmpty(zsxx.BKZYM6)) zsxx.BKZYM6 = "";//报考专业码6
            if (string.IsNullOrEmpty(zsxx.KSFSM)) zsxx.KSFSM = "";//考试方式码   考试方式代码表
            if (string.IsNullOrEmpty(zsxx.BYZX)) zsxx.BYZX = "";//毕业中学
            if (string.IsNullOrEmpty(zsxx.BYZXYZBM)) zsxx.BYZXYZBM = "";//毕业中学邮政编码
            if (string.IsNullOrEmpty(zsxx.KSTC)) zsxx.KSTC = "";//考生特长
            if (string.IsNullOrEmpty(zsxx.JLYCC)) zsxx.JLYCC = "";//奖励与惩处
            if (string.IsNullOrEmpty(zsxx.JSHJ)) zsxx.JSHJ = "";//竞赛获奖
            if (string.IsNullOrEmpty(zsxx.SHGZ)) zsxx.SHGZ = "";//社会工作
            if (string.IsNullOrEmpty(zsxx.TJJL)) zsxx.TJJL = "";//体检结论
            if (string.IsNullOrEmpty(zsxx.JZBS)) zsxx.JZBS = "";//家族病史
            if (string.IsNullOrEmpty(zsxx.KSJWBS)) zsxx.KSJWBS = "";//考生既往病史
            if (zsxx.SG == 0) zsxx.SG = 0;//身高
            if (zsxx.KSSL == 0) zsxx.KSSL = 0;//考生视力
            EDU_ZZZS_01_01_ZSXX zsxx_model = db_zzzs.EDU_ZZZS_01_01_ZSXX.FirstOrDefault(e => e.XSXXID == zsxx.XSXXID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zsxx_model != null)
            {
                zsxx_model.XSXXID = zsxx.XSXXID;//学生信息数据表   学生信息数据表
                zsxx_model.SCHOOLID = zsxx.SCHOOLID;//学校名   学校配置表
                zsxx_model.ZKZH = zsxx.ZKZH;//准考证号
                zsxx_model.KSH = zsxx.KSH;//考生号
                zsxx_model.KQXZQHM = zsxx.KQXZQHM;//考区行政区划码   中华人民共和国行政区划代码
                zsxx_model.RXNY = zsxx.RXNY;//入学年月
                zsxx_model.YSWGYZM = zsxx.YSWGYZM;//应试外国语种码   语种名称代码2字母代码
                zsxx_model.BKZYM1 = zsxx.BKZYM1;//报考专业码1
                zsxx_model.BKZYM2 = zsxx.BKZYM2;//报考专业码2
                zsxx_model.BKZYM3 = zsxx.BKZYM3;//报考专业码3
                zsxx_model.BKZYM4 = zsxx.BKZYM4;//报考专业码4
                zsxx_model.BKZYM5 = zsxx.BKZYM5;//报考专业码5
                zsxx_model.BKZYM6 = zsxx.BKZYM6;//报考专业码6
                zsxx_model.KSFSM = zsxx.KSFSM;//考试方式码   考试方式代码表
                zsxx_model.BYZX = zsxx.BYZX;//毕业中学
                zsxx_model.BYZXYZBM = zsxx.BYZXYZBM;//毕业中学邮政编码
                zsxx_model.KSTC = zsxx.KSTC;//考生特长
                zsxx_model.JLYCC = zsxx.JLYCC;//奖励与惩处
                zsxx_model.JSHJ = zsxx.JSHJ;//竞赛获奖
                zsxx_model.SHGZ = zsxx.SHGZ;//社会工作
                zsxx_model.TJJL = zsxx.TJJL;//体检结论
                zsxx_model.JZBS = zsxx.JZBS;//家族病史
                zsxx_model.KSJWBS = zsxx.KSJWBS;//考生既往病史
                zsxx_model.SG = zsxx.SG;//身高
                zsxx_model.KSSL = zsxx.KSSL;//考生视力
                db_zzzs.Entry(zsxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zzzs.EDU_ZZZS_01_01_ZSXX.Add(zsxx);
            }
            db_zzzs.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.GB_YZMCEZMLst = GBLDAL.GetGB_YZMCEZMSelLst();
            ViewBag.JY_KSFSLst = JBLDAL.GetJY_KSFSSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZZZS_01_01_ZSXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZZZS_01_01_ZSXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZsxx(zsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZZZS_01_01_ZSXX zsxx= db_zzzs.EDU_ZZZS_01_01_ZSXX.Single(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zsxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZZZS_01_01_ZSXX zsxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdZsxx(zsxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zsxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zsxx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZZZS_01_01_ZSXX zsxx = db_zzzs.EDU_ZZZS_01_01_ZSXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zzzs.EDU_ZZZS_01_01_ZSXX.Remove(zsxx);
                db_zzzs.SaveChanges();
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
                    EDU_ZZZS_01_01_ZSXX zsxx = db_zzzs.EDU_ZZZS_01_01_ZSXX.SingleOrDefault(e => e.XSXXID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zzzs.EDU_ZZZS_01_01_ZSXX.Remove(zsxx);
                    db_zzzs.SaveChanges();
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

        private static int Max_ZSXX_ID = 0;
        private static object syncIDLock = new object();
        //获取考生数据表最大ID
        public int GetMax_ZSXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZSXX_ID == 0)
                {
                    EDU_ZZZS_01_01_ZSXX zsxx = db_zzzs.EDU_ZZZS_01_01_ZSXX.FirstOrDefault();
                    if (zsxx == null)
                    {
                        Max_ZSXX_ID = 1;
                    }
                    else
                    {
                        //Max_ZSXX_ID = db_zzzs.EDU_ZZZS_01_01_ZSXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZSXX_ID++;
                }
                maxId = Max_ZSXX_ID;
            }
            return maxId;
        }

    }
}
