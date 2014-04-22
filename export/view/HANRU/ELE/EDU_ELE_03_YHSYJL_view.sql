
--用户使用记录表
CREATE VIEW [dbo].[VIEW_EDU_ELE_03_YHSYJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[APPID]--应用ID
      ,a.[MODULEID]--功能ID
      ,a.[YHID]--用户ID
      ,a.[GNMC]--功能名称
      ,a.[LJ]--链接
      ,a.[SYSJ]--使用时间
      ,a.[XHHMS]--消耗毫秒数
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态
      ,c.TYPE as c_APP_TYPE--应用表 应用类别
      ,c.DLCSLB as c_APP_DLCSLB--应用表 登录参数列表
      ,c.MNDLJS as c_APP_MNDLJS--应用表 模拟登录JS
      ,c.SYDX as c_APP_SYDX--应用表 使用对象
      ,c.KJDX as c_APP_KJDX--应用表 可见对象
      ,d.APPID as d_MODULE_APPID--导航表 
      ,d.NAME as d_MODULE_NAME--导航表 
      ,d.Depth as d_MODULE_Depth--导航表 
      ,d.PID as d_MODULE_PID--导航表 
      ,d.MenuDisp as d_MODULE_MenuDisp--导航表 
      ,d.MenuUserType as d_MODULE_MenuUserType--导航表 
      ,d.Link as d_MODULE_Link--导航表 
      ,d.OrderIndex as d_MODULE_OrderIndex--导航表 
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.YHRY as e_USER_YHRY--应用系统用户表 用户荣誉
      ,e.YHJF as e_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_ELE_03_YHSYJL AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS d ON a.MODULEID = d.ID /*功能ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.YHID = e.LOGINNAME /*用户ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
