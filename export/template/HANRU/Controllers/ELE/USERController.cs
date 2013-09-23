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
    public class USERController : JWXTController
    {
        public string index_jsonstr(string searchkey = "", string sort = "", int page = LDALConstant.DefPage, int rows = LDALConstant.DefPageRows, string order = "desc")
        {
            List<VIEW_EDU_ELE_01_USER_DISP> model = db_ele.VIEW_EDU_ELE_01_USER_DISP.Where(e => e.SCHOOLID == CurUser.ele01Usr.SCHOOLID).ToList();
            if (!String.IsNullOrEmpty(searchkey))
            {
                //model = model.Where(e => e.LOGINNAME.Contains(searchkey)).ToList();
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

        public void AddUser(EDU_ELE_01_USER user)
        {
            user.SCHOOLID = CurUser.ele01Usr.SCHOOLID;
            UpdUser(user);
        }

        public void UpdUser(EDU_ELE_01_USER user)
        {
            //设置默认值
            if (string.IsNullOrEmpty(user.LOGINNAME)) user.LOGINNAME = "";//用户名
            if (user.SCHOOLID == 0) user.SCHOOLID = 0;//学校ID   学校配置表
            if (user.APPID == 0) user.APPID = 0;//应用ID   应用表
            if (string.IsNullOrEmpty(user.PWD)) user.PWD = "";//密码
            if (user.STATUS == 0) user.STATUS = 0;//用户状态
            if (user.USERTYPE == 0) user.USERTYPE = 0;//用户类别
            if (user.USERID == 0) user.USERID = 0;//用户ID
            if (string.IsNullOrEmpty(user.ROLEIDLst)) user.ROLEIDLst = "";//用户角色
            if (string.IsNullOrEmpty(user.XM)) user.XM = "";//姓名
            if (string.IsNullOrEmpty(user.XB)) user.XB = "";//性别
            if (string.IsNullOrEmpty(user.QQ)) user.QQ = "";//QQ
            if (string.IsNullOrEmpty(user.DZYJ)) user.DZYJ = "";//电子邮件
            if (string.IsNullOrEmpty(user.LXDH)) user.LXDH = "";//联系电话
            if (user.ZJDLSJ == 0) user.ZJDLSJ = 0;//最近一次登录时间
            if (user.DLCGCS == 0) user.DLCGCS = 0;//登录成功次数
            if (user.YHCJSJ == 0) user.YHCJSJ = 0;//用户创建时间
            EDU_ELE_01_USER user_model = db_ele.EDU_ELE_01_USER.FirstOrDefault(e => e.LOGINNAME == user.LOGINNAME
                && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);

            if (user_model != null)
            {
                user_model.LOGINNAME = user.LOGINNAME;//用户名
                user_model.SCHOOLID = user.SCHOOLID;//学校ID   学校配置表
                user_model.APPID = user.APPID;//应用ID   应用表
                user_model.PWD = user.PWD;//密码
                user_model.STATUS = user.STATUS;//用户状态
                user_model.USERTYPE = user.USERTYPE;//用户类别
                user_model.USERID = user.USERID;//用户ID
                user_model.ROLEIDLst = user.ROLEIDLst;//用户角色
                user_model.XM = user.XM;//姓名
                user_model.XB = user.XB;//性别
                user_model.QQ = user.QQ;//QQ
                user_model.DZYJ = user.DZYJ;//电子邮件
                user_model.LXDH = user.LXDH;//联系电话
                user_model.ZJDLSJ = user.ZJDLSJ;//最近一次登录时间
                user_model.DLCGCS = user.DLCGCS;//登录成功次数
                user_model.YHCJSJ = user.YHCJSJ;//用户创建时间
                db_ele.Entry(user_model).State = EntityState.Modified;
            }
            else
            {
                throw new Exception("记录不存在");
                //db_ele.EDU_ELE_01_USER.Add(user);
            }
            db_ele.SaveChanges();
        }
        public void InitViewBag()
        {
            
        }

        public ActionResult Index()
        {
            return View(new EDU_ELE_01_USER());
        }
        public ActionResult Create()
        {
            InitViewBag();
            
            return View(new EDU_ELE_01_USER());
        }

        [HttpPost]
        public ActionResult Create(EDU_ELE_01_USER user)
        {
            InitViewBag();
            try
            {
                //
                //
                AddUser(user);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(user);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(user);
            }
        }

        public ActionResult Edit(int id)
        {
            InitViewBag();
            
            EDU_ELE_01_USER user= db_ele.EDU_ELE_01_USER.Single(e => e.LOGINNAME == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
            return View(user);
        }

        [HttpPost]
        public ActionResult Edit(EDU_ELE_01_USER user)
        {
            InitViewBag();
            try
            {
                
                
                UpdUser(user);
                return RedirectToAction("Index");
            }
            catch (DbEntityValidationException dbEx)
            {
                SetTopCenter(dbEx.Message);
                return View(user);
            }
            catch (Exception e)
            {
                SetTopCenter(e.Message);
                return View(user);
            }
        }

        /*public String Delete(string id)
        {
            try
            {
                EDU_ELE_01_USER user = db_ele.EDU_ELE_01_USER.SingleOrDefault(e => e.LOGINNAME == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                db_ele.EDU_ELE_01_USER.Remove(user);
                db_ele.SaveChanges();
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
                    EDU_ELE_01_USER user = db_ele.EDU_ELE_01_USER.SingleOrDefault(e => e.LOGINNAME == id && e.SCHOOLID == CurUser.ele01Usr.SCHOOLID);
                    db_ele.EDU_ELE_01_USER.Remove(user);
                    db_ele.SaveChanges();
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

        private static int Max_USER_ID = 0;
        private static object syncIDLock = new object();
        //获取应用系统用户表最大ID
        public int GetMax_USER_ID()
        {
            int maxId = 0;
            lock (syncIDLock)
            {
                if (Max_USER_ID == 0)
                {
                    EDU_ELE_01_USER user = db_ele.EDU_ELE_01_USER.FirstOrDefault();
                    if (user == null)
                    {
                        Max_USER_ID = 1;
                    }
                    else
                    {
                        //Max_USER_ID = db_ele.EDU_ELE_01_USER.Max(e => e.ID) + 1;
                    }
                }
                else
                {
                    Max_USER_ID++;
                }
                maxId = Max_USER_ID;
            }
            return maxId;
        }

    }
}
