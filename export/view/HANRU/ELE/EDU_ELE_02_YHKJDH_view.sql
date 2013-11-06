
--用户快捷导航表
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHKJDH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[MODULEID]--MODULE表ID
      ,a.[LoginName]--用户名
      ,a.[OrderID]--序号
      ,c.APPID as c_MODULE_APPID--导航表 
      ,c.NAME as c_MODULE_NAME--导航表 
      ,c.Depth as c_MODULE_Depth--导航表 
      ,c.PID as c_MODULE_PID--导航表 
      ,c.MenuDisp as c_MODULE_MenuDisp--导航表 
      ,c.MenuUserType as c_MODULE_MenuUserType--导航表 
      ,c.Link as c_MODULE_Link--导航表 
      ,c.OrderIndex as c_MODULE_OrderIndex--导航表 
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间

FROM dbo.EDU_ELE_02_YHKJDH AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_MODULE AS c ON a.MODULEID = c.ID /*MODULE表ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.LoginName = d.LOGINNAME /*用户名*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
