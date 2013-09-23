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
    public class ZXXXController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ZXXX_01_01_ZXXX_DISP> model = db_zxxx.VIEW_EDU_ZXXX_01_01_ZXXX_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
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

        public void AddZxxx(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            zxxx.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdZxxx(zxxx);
        }

        public void UpdZxxx(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            //设置默认值
            if (zxxx.ID == 0) zxxx.ID = 0;//学校ID
            if (string.IsNullOrEmpty(zxxx.XXDM)) zxxx.XXDM = "";//学校代码
            if (string.IsNullOrEmpty(zxxx.XXMC)) zxxx.XXMC = "";//学校名称
            if (string.IsNullOrEmpty(zxxx.XXYWMC)) zxxx.XXYWMC = "";//学校英文名称
            if (string.IsNullOrEmpty(zxxx.XXDZ)) zxxx.XXDZ = "";//学校地址
            if (string.IsNullOrEmpty(zxxx.XXYZBM)) zxxx.XXYZBM = "";//学校邮政编码
            if (string.IsNullOrEmpty(zxxx.XZQHM)) zxxx.XZQHM = "";//行政区划码   中华人民共和国行政区划代码
            if (string.IsNullOrEmpty(zxxx.JXNY)) zxxx.JXNY = "";//建校年月
            if (string.IsNullOrEmpty(zxxx.XQR)) zxxx.XQR = "";//校庆日
            if (string.IsNullOrEmpty(zxxx.XXBXLXM)) zxxx.XXBXLXM = "";//学校办学类型码   办学类型代码表
            if (string.IsNullOrEmpty(zxxx.XXZGBMM)) zxxx.XXZGBMM = "";//学校主管部门码   学校（教育机构）举办者代码表
            if (string.IsNullOrEmpty(zxxx.FDDBRH)) zxxx.FDDBRH = "";//法定代表人号
            if (string.IsNullOrEmpty(zxxx.FRZSH)) zxxx.FRZSH = "";//法人证书号
            if (string.IsNullOrEmpty(zxxx.XZGH)) zxxx.XZGH = "";//校长工号
            if (string.IsNullOrEmpty(zxxx.XZXM)) zxxx.XZXM = "";//校长姓名
            if (string.IsNullOrEmpty(zxxx.DWFZRH)) zxxx.DWFZRH = "";//党委负责人号
            if (string.IsNullOrEmpty(zxxx.ZZJGM)) zxxx.ZZJGM = "";//组织机构码
            if (string.IsNullOrEmpty(zxxx.LXDH)) zxxx.LXDH = "";//联系电话
            if (string.IsNullOrEmpty(zxxx.CZDH)) zxxx.CZDH = "";//传真电话
            if (string.IsNullOrEmpty(zxxx.DZXX)) zxxx.DZXX = "";//电子信箱
            if (string.IsNullOrEmpty(zxxx.ZYDZ)) zxxx.ZYDZ = "";//主页地址
            if (string.IsNullOrEmpty(zxxx.LSYG)) zxxx.LSYG = "";//历史沿革
            if (string.IsNullOrEmpty(zxxx.XXBBM)) zxxx.XXBBM = "";//学校办别码   学校办别代码表
            if (string.IsNullOrEmpty(zxxx.SSZGDWM)) zxxx.SSZGDWM = "";//所属主管单位码   学校（教育机构）举办者代码表
            if (string.IsNullOrEmpty(zxxx.SZDCXLXM)) zxxx.SZDCXLXM = "";//所在地城乡类型码   所在地城乡类型代码表
            if (string.IsNullOrEmpty(zxxx.SZDJJSXM)) zxxx.SZDJJSXM = "";//所在地经济属性码   所在地区经济属性代码表
            if (string.IsNullOrEmpty(zxxx.SZDMZSX)) zxxx.SZDMZSX = "";//所在地民族属性   是否标志代码表
            if (zxxx.XXXZ == 0) zxxx.XXXZ = 0;//小学学制
            if (zxxx.XXRXNL == 0) zxxx.XXRXNL = 0;//小学入学年龄
            if (zxxx.CZXZ == 0) zxxx.CZXZ = 0;//初中学制
            if (zxxx.CZRXNL == 0) zxxx.CZRXNL = 0;//初中入学年龄
            if (zxxx.GZXZ == 0) zxxx.GZXZ = 0;//高中学制
            if (string.IsNullOrEmpty(zxxx.ZJXYYM)) zxxx.ZJXYYM = "";//主教学语言码   中国语种代码
            if (string.IsNullOrEmpty(zxxx.FJXYYM)) zxxx.FJXYYM = "";//辅教学语言码   中国语种代码
            if (string.IsNullOrEmpty(zxxx.ZSBJ)) zxxx.ZSBJ = "";//招生半径
            EDU_ZXXX_01_01_ZXXX zxxx_model = db_zxxx.EDU_ZXXX_01_01_ZXXX.FirstOrDefault(e => e.ID == zxxx.ID
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (zxxx_model != null)
            {
                zxxx_model.ID = zxxx.ID;//学校ID
                zxxx_model.XXDM = zxxx.XXDM;//学校代码
                zxxx_model.XXMC = zxxx.XXMC;//学校名称
                zxxx_model.XXYWMC = zxxx.XXYWMC;//学校英文名称
                zxxx_model.XXDZ = zxxx.XXDZ;//学校地址
                zxxx_model.XXYZBM = zxxx.XXYZBM;//学校邮政编码
                zxxx_model.XZQHM = zxxx.XZQHM;//行政区划码   中华人民共和国行政区划代码
                zxxx_model.JXNY = zxxx.JXNY;//建校年月
                zxxx_model.XQR = zxxx.XQR;//校庆日
                zxxx_model.XXBXLXM = zxxx.XXBXLXM;//学校办学类型码   办学类型代码表
                zxxx_model.XXZGBMM = zxxx.XXZGBMM;//学校主管部门码   学校（教育机构）举办者代码表
                zxxx_model.FDDBRH = zxxx.FDDBRH;//法定代表人号
                zxxx_model.FRZSH = zxxx.FRZSH;//法人证书号
                zxxx_model.XZGH = zxxx.XZGH;//校长工号
                zxxx_model.XZXM = zxxx.XZXM;//校长姓名
                zxxx_model.DWFZRH = zxxx.DWFZRH;//党委负责人号
                zxxx_model.ZZJGM = zxxx.ZZJGM;//组织机构码
                zxxx_model.LXDH = zxxx.LXDH;//联系电话
                zxxx_model.CZDH = zxxx.CZDH;//传真电话
                zxxx_model.DZXX = zxxx.DZXX;//电子信箱
                zxxx_model.ZYDZ = zxxx.ZYDZ;//主页地址
                zxxx_model.LSYG = zxxx.LSYG;//历史沿革
                zxxx_model.XXBBM = zxxx.XXBBM;//学校办别码   学校办别代码表
                zxxx_model.SSZGDWM = zxxx.SSZGDWM;//所属主管单位码   学校（教育机构）举办者代码表
                zxxx_model.SZDCXLXM = zxxx.SZDCXLXM;//所在地城乡类型码   所在地城乡类型代码表
                zxxx_model.SZDJJSXM = zxxx.SZDJJSXM;//所在地经济属性码   所在地区经济属性代码表
                zxxx_model.SZDMZSX = zxxx.SZDMZSX;//所在地民族属性   是否标志代码表
                zxxx_model.XXXZ = zxxx.XXXZ;//小学学制
                zxxx_model.XXRXNL = zxxx.XXRXNL;//小学入学年龄
                zxxx_model.CZXZ = zxxx.CZXZ;//初中学制
                zxxx_model.CZRXNL = zxxx.CZRXNL;//初中入学年龄
                zxxx_model.GZXZ = zxxx.GZXZ;//高中学制
                zxxx_model.ZJXYYM = zxxx.ZJXYYM;//主教学语言码   中国语种代码
                zxxx_model.FJXYYM = zxxx.FJXYYM;//辅教学语言码   中国语种代码
                zxxx_model.ZSBJ = zxxx.ZSBJ;//招生半径
                db_zxxx.Entry(zxxx_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_zxxx.EDU_ZXXX_01_01_ZXXX.Add(zxxx);
            }
            db_zxxx.SaveChanges();
        }
        public void InitViewBag()
        {
            ViewBag.GB_ZHRMGHGXZQHLst = GBLDAL.GetGB_ZHRMGHGXZQHSelLst();
            ViewBag.JY_BXLXLst = JBLDAL.GetJY_BXLXSelLst();
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.JY_XXBBLst = JBLDAL.GetJY_XXBBSelLst();
            ViewBag.JY_XXJYJGJBZLst = JBLDAL.GetJY_XXJYJGJBZSelLst();
            ViewBag.JY_SZDCXLXLst = JBLDAL.GetJY_SZDCXLXSelLst();
            ViewBag.JY_SZDQJJSXLst = JBLDAL.GetJY_SZDQJJSXSelLst();
            ViewBag.JY_SFBZLst = JBLDAL.GetJY_SFBZSelLst();
            ViewBag.GB_ZGYZLst = GBLDAL.GetGB_ZGYZSelLst();
            ViewBag.GB_ZGYZLst = GBLDAL.GetGB_ZGYZSelLst();
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ZXXX_01_01_ZXXX());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ZXXX_01_01_ZXXX());
        }

        [HttpPost]
        public ActionResult Create(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            InitViewBag();
            try
            {
                //
                //
                AddZxxx(zxxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxx);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ZXXX_01_01_ZXXX zxxx= db_zxxx.EDU_ZXXX_01_01_ZXXX.Single(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(zxxx);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ZXXX_01_01_ZXXX zxxx)
        {
            InitViewBag();
            try
            {
                
                
                UpdZxxx(zxxx);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(zxxx);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(zxxx);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ZXXX_01_01_ZXXX zxxx = db_zxxx.EDU_ZXXX_01_01_ZXXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_zxxx.EDU_ZXXX_01_01_ZXXX.Remove(zxxx);
                db_zxxx.SaveChanges();
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
                    EDU_ZXXX_01_01_ZXXX zxxx = db_zxxx.EDU_ZXXX_01_01_ZXXX.SingleOrDefault(e => e.ID == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_zxxx.EDU_ZXXX_01_01_ZXXX.Remove(zxxx);
                    db_zxxx.SaveChanges();
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

        private static int Max_ZXXX_ID = 0;
        private static object syncIDLock = new object();
        //获取学校基本数据子类表最大ID
        public int GetMax_ZXXX_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_ZXXX_ID == 0)
                {
                    EDU_ZXXX_01_01_ZXXX zxxx = db_zxxx.EDU_ZXXX_01_01_ZXXX.FirstOrDefault();
                    if (zxxx == null)
                    {
                        Max_ZXXX_ID = 1;
                    }
                    else
                    {
                        //Max_ZXXX_ID = db_zxxx.EDU_ZXXX_01_01_ZXXX.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_ZXXX_ID++;
                }
                maxId = Max_ZXXX_ID;
            }
            return maxId;
        }

    }
}
