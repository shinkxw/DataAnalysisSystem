
--第三方应用用户表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_APPUSER_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YHID]--用户ID
      ,a.[APPID]--应用ID
      ,a.[YHMC]--用户名称
      ,a.[YHZT]--用户状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,d.SCHOOLID as d_APP_SCHOOLID--应用表 学校ID
      ,d.NAME as d_APP_NAME--应用表 应用名称
      ,d.URL as d_APP_URL--应用表 网址
      ,d.AUTHIP as d_APP_AUTHIP--应用表 限用IP
      ,d.SM as d_APP_SM--应用表 说明
      ,d.DLFS as d_APP_DLFS--应用表 登录方式
      ,d.STATUS as d_APP_STATUS--应用表 应用状态
      ,d.TYPE as d_APP_TYPE--应用表 应用类别
      ,d.DLCSLB as d_APP_DLCSLB--应用表 登录参数列表
      ,d.MNDLJS as d_APP_MNDLJS--应用表 模拟登录JS

FROM dbo.EDU_ELE_01_APPUSER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS d ON a.APPID = d.ID /*应用ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
