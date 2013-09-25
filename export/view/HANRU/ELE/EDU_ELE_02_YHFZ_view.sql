
--用户分组表
CREATE VIEW [dbo].[VIEW_EDU_ELE_02_YHFZ_DISP]
AS
SELECT a.[ID]--分组ID
      ,a.[SCHOOLID]--学校ID
      ,a.[APPID]--应用ID
      ,a.[YHID]--用户ID
      ,a.[SJFZID]--上级分组ID
      ,a.[FZMC]--分组名称
      ,a.[FZYHID]--分组用户ID列表
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态
      ,c.TYPE as c_APP_TYPE--应用表 应用类别
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
      ,e.SCHOOLID as e_YHFZ_SCHOOLID--用户分组表 学校ID
      ,e.APPID as e_YHFZ_APPID--用户分组表 应用ID
      ,e.YHID as e_YHFZ_YHID--用户分组表 用户ID
      ,e.SJFZID as e_YHFZ_SJFZID--用户分组表 上级分组ID
      ,e.FZMC as e_YHFZ_FZMC--用户分组表 分组名称
      ,e.FZYHID as e_YHFZ_FZYHID--用户分组表 分组用户ID列表

FROM dbo.EDU_ELE_02_YHFZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.YHID = d.LOGINNAME /*用户ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_02_YHFZ AS e ON a.SJFZID = e.ID /*上级分组ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.APPID = e.APPID /*应用ID*/
GO
