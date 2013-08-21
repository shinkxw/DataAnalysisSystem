
--应用系统用户表
CREATE VIEW [dbo].[VIEW_EDU_ELE_01_USER_DISP]
AS
SELECT a.[LOGINNAME]--用户名
      ,a.[SCHOOLID]--学校ID
      ,a.[APPID]--应用ID
      ,a.[PWD]--密码
      ,a.[STATUS]--用户状态
      ,a.[USERTYPE]--用户类别
      ,a.[USERID]--用户ID
      ,a.[ROLEIDLst]--用户角色
      ,a.[XM]--姓名
      ,a.[XB]--性别
      ,a.[QQ]--QQ
      ,a.[DZYJ]--电子邮件
      ,a.[LXDH]--联系电话
      ,a.[ZJDLSJ]--最近一次登录时间
      ,a.[DLCGCS]--登录成功次数
      ,a.[YHCJSJ]--用户创建时间
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.MenhuURL as b_SCHOOL_MenhuURL--学校配置表 门户url
      ,b.MenhuWebid as b_SCHOOL_MenhuWebid--学校配置表 门户webid
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,b.ModuleIdList as b_SCHOOL_ModuleIdList--学校配置表 权限列表
      ,c.SCHOOLID as c_APP_SCHOOLID--应用表 学校ID
      ,c.NAME as c_APP_NAME--应用表 应用名称
      ,c.URL as c_APP_URL--应用表 网址
      ,c.AUTHIP as c_APP_AUTHIP--应用表 限用IP
      ,c.SM as c_APP_SM--应用表 说明
      ,c.DLFS as c_APP_DLFS--应用表 登录方式
      ,c.STATUS as c_APP_STATUS--应用表 应用状态

FROM dbo.EDU_ELE_01_USER AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_APP AS c ON a.APPID = c.ID /*应用ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
