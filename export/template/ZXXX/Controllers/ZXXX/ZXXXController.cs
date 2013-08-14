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
    public class ZXXXController : XGXTController
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
            if (string.IsNullOrEmpty(zxxx.XZQHM)) zxxx.XZQHM = "";//行政区划码学校所在地行政区划码
            if (string.IsNullOrEmpty(zxxx.JXNY)) zxxx.JXNY = "";//建校年月如：200604表示2006年4月
            if (string.IsNullOrEmpty(zxxx.XQR)) zxxx.XQR = "";//校庆日
            if (string.IsNullOrEmpty(zxxx.XXBXLXM)) zxxx.XXBXLXM = "";//学校办学类型码JY/T1001BXLX办学类型代码
            if (string.IsNullOrEmpty(zxxx.XXZGBMM)) zxxx.XXZGBMM = "";//学校主管部门码JY/T1001XXJYJGJBZ学校（教育机构）举办者代码
            if (string.IsNullOrEmpty(zxxx.FDDBRH)) zxxx.FDDBRH = "";//法定代表人号
            if (string.IsNullOrEmpty(zxxx.FRZSH)) zxxx.FRZSH = "";//法人证书号
            if (string.IsNullOrEmpty(zxxx.XZGH)) zxxx.XZGH = "";//校长工号
            if (string.IsNullOrEmpty(zxxx.XZXM)) zxxx.XZXM = "";//校长姓名
            if (string.IsNullOrEmpty(zxxx.DWFZRH)) zxxx.DWFZRH = "";//党委负责人号
            if (string.IsNullOrEmpty(zxxx.ZZJGM)) zxxx.ZZJGM = "";//组织机构码学校组织机构代码(中华人民共和国事业法人代码)，由八位本体代码和一位校验码组成
            if (string.IsNullOrEmpty(zxxx.LXDH)) zxxx.LXDH = "";//联系电话即电话号码
            if (string.IsNullOrEmpty(zxxx.CZDH)) zxxx.CZDH = "";//传真电话传真电话
            if (string.IsNullOrEmpty(zxxx.DZXX)) zxxx.DZXX = "";//电子信箱电子邮件地址
            if (string.IsNullOrEmpty(zxxx.ZYDZ)) zxxx.ZYDZ = "";//主页地址如主页、博客、微博网址
            if (string.IsNullOrEmpty(zxxx.LSYG)) zxxx.LSYG = "";//历史沿革指学校发展过程中的重大变化或事件
            if (string.IsNullOrEmpty(zxxx.XXBBM)) zxxx.XXBBM = "";//学校办别码值空间：JY/T1001XXBB学校办别代码 
            if (string.IsNullOrEmpty(zxxx.SSZGDWM)) zxxx.SSZGDWM = "";//所属主管单位码值空间：GB/T2260 
            if (string.IsNullOrEmpty(zxxx.SZDCXLXM)) zxxx.SZDCXLXM = "";//所在地城乡类型码值空间：JY/T1001SZDCXLX所在地城乡类型代码 
            if (string.IsNullOrEmpty(zxxx.SZDJJSXM)) zxxx.SZDJJSXM = "";//所在地经济属性码值空间：JY/T1001SZDJJSX所在地经济属性代码 
            if (string.IsNullOrEmpty(zxxx.SZDMZSX)) zxxx.SZDMZSX = "";//所在地民族属性值空间：JY/T1001SFBZ是否标志代码 解释/举例：1民族自治县0非民族自治县 
            if (zxxx.XXXZ == 0) zxxx.XXXZ = 0;//小学学制
            if (zxxx.XXRXNL == 0) zxxx.XXRXNL = 0;//小学入学年龄
            if (zxxx.CZXZ == 0) zxxx.CZXZ = 0;//初中学制
            if (zxxx.CZRXNL == 0) zxxx.CZRXNL = 0;//初中入学年龄
            if (zxxx.GZXZ == 0) zxxx.GZXZ = 0;//高中学制
            if (string.IsNullOrEmpty(zxxx.ZJXYYM)) zxxx.ZJXYYM = "";//主教学语言码值空间：GB/T4881 解释/举例：用三位数字代码 
            if (string.IsNullOrEmpty(zxxx.FJXYYM)) zxxx.FJXYYM = "";//辅教学语言码值空间：GB/T4881 解释/举例：用三位数字代码 
            if (string.IsNullOrEmpty(zxxx.ZSBJ)) zxxx.ZSBJ = "";//招生半径解释/举例：招生的地区范围 
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
                zxxx_model.XZQHM = zxxx.XZQHM;//行政区划码学校所在地行政区划码
                zxxx_model.JXNY = zxxx.JXNY;//建校年月如：200604表示2006年4月
                zxxx_model.XQR = zxxx.XQR;//校庆日
                zxxx_model.XXBXLXM = zxxx.XXBXLXM;//学校办学类型码JY/T1001BXLX办学类型代码
                zxxx_model.XXZGBMM = zxxx.XXZGBMM;//学校主管部门码JY/T1001XXJYJGJBZ学校（教育机构）举办者代码
                zxxx_model.FDDBRH = zxxx.FDDBRH;//法定代表人号
                zxxx_model.FRZSH = zxxx.FRZSH;//法人证书号
                zxxx_model.XZGH = zxxx.XZGH;//校长工号
                zxxx_model.XZXM = zxxx.XZXM;//校长姓名
                zxxx_model.DWFZRH = zxxx.DWFZRH;//党委负责人号
                zxxx_model.ZZJGM = zxxx.ZZJGM;//组织机构码学校组织机构代码(中华人民共和国事业法人代码)，由八位本体代码和一位校验码组成
                zxxx_model.LXDH = zxxx.LXDH;//联系电话即电话号码
                zxxx_model.CZDH = zxxx.CZDH;//传真电话传真电话
                zxxx_model.DZXX = zxxx.DZXX;//电子信箱电子邮件地址
                zxxx_model.ZYDZ = zxxx.ZYDZ;//主页地址如主页、博客、微博网址
                zxxx_model.LSYG = zxxx.LSYG;//历史沿革指学校发展过程中的重大变化或事件
                zxxx_model.XXBBM = zxxx.XXBBM;//学校办别码值空间：JY/T1001XXBB学校办别代码 
                zxxx_model.SSZGDWM = zxxx.SSZGDWM;//所属主管单位码值空间：GB/T2260 
                zxxx_model.SZDCXLXM = zxxx.SZDCXLXM;//所在地城乡类型码值空间：JY/T1001SZDCXLX所在地城乡类型代码 
                zxxx_model.SZDJJSXM = zxxx.SZDJJSXM;//所在地经济属性码值空间：JY/T1001SZDJJSX所在地经济属性代码 
                zxxx_model.SZDMZSX = zxxx.SZDMZSX;//所在地民族属性值空间：JY/T1001SFBZ是否标志代码 解释/举例：1民族自治县0非民族自治县 
                zxxx_model.XXXZ = zxxx.XXXZ;//小学学制
                zxxx_model.XXRXNL = zxxx.XXRXNL;//小学入学年龄
                zxxx_model.CZXZ = zxxx.CZXZ;//初中学制
                zxxx_model.CZRXNL = zxxx.CZRXNL;//初中入学年龄
                zxxx_model.GZXZ = zxxx.GZXZ;//高中学制
                zxxx_model.ZJXYYM = zxxx.ZJXYYM;//主教学语言码值空间：GB/T4881 解释/举例：用三位数字代码 
                zxxx_model.FJXYYM = zxxx.FJXYYM;//辅教学语言码值空间：GB/T4881 解释/举例：用三位数字代码 
                zxxx_model.ZSBJ = zxxx.ZSBJ;//招生半径解释/举例：招生的地区范围 
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
            //ViewBag.
            
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
