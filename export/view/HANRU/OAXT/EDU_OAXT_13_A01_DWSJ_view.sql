
--单位数据表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_13_A01_DWSJ_DISP]
AS
SELECT a.[ID]--单位ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SJDWID]--上级单位ID
      ,a.[DWFZRID]--单位负责人ID
      ,a.[DWMC]--单位名称
      ,a.[DWCYIDLB]--单位成员ID列表
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_DWSJ_SCHOOLID--学校ID
      ,c.SJDWID as c_DWSJ_SJDWID--上级单位ID
      ,c.DWFZRID as c_DWSJ_DWFZRID--单位负责人ID
      ,c.DWMC as c_DWSJ_DWMC--单位名称
      ,c.DWCYIDLB as c_DWSJ_DWCYIDLB--单位成员ID列表
      ,d.SCHOOLID as d_USER_SCHOOLID--学校ID
      ,d.APPID as d_USER_APPID--应用ID
      ,d.PWD as d_USER_PWD--密码
      ,d.STATUS as d_USER_STATUS--用户状态
      ,d.USERTYPE as d_USER_USERTYPE--用户类别
      ,d.USERID as d_USER_USERID--用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--用户角色
      ,d.XM as d_USER_XM--姓名
      ,d.XB as d_USER_XB--性别
      ,d.QQ as d_USER_QQ--QQ
      ,d.DZYJ as d_USER_DZYJ--电子邮件
      ,d.LXDH as d_USER_LXDH--联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_OAXT_13_A01_DWSJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_13_A01_DWSJ AS c ON a.SJDWID = c.ID /*上级单位ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DWFZRID = d.LOGINNAME /*单位负责人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
