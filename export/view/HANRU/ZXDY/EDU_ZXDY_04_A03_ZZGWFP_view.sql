
--值周岗位分配表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A03_ZZGWFP_DISP]
AS
SELECT a.[ID]--值周岗位分配表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XQID]--学期ID
      ,a.[ZCID]--周次ID
      ,a.[GZR]--工作日
      ,a.[GWID]--岗位ID
      ,a.[JSID]--教师ID
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_XQ_SCHOOLID--学校名
      ,c.XNID as c_XQ_XNID--学年
      ,c.XQM as c_XQ_XQM--学期码
      ,cb.MC as c_XQ_XQM_MC--名称
      ,c.XQMC as c_XQ_XQMC--学期名称
      ,c.XQKSRQ as c_XQ_XQKSRQ--学期开始日期
      ,c.XQJSRQ as c_XQ_XQJSRQ--学期结束日期
      ,d.SCHOOLID as d_ZZZC_SCHOOLID--学校ID
      ,d.XQID as d_ZZZC_XQID--学期ID
      ,d.ZCM as d_ZZZC_ZCM--周次名
      ,d.XQKSRQ as d_ZZZC_XQKSRQ--开始日期
      ,d.XQJSRQ as d_ZZZC_XQJSRQ--结束日期
      ,e.SCHOOLID as e_ZZGW_SCHOOLID--学校ID
      ,e.XQID as e_ZZGW_XQID--学期ID
      ,e.GWGZNR as e_ZZGW_GWGZNR--岗位工作内容
      ,f.SCHOOLID as f_USER_SCHOOLID--学校ID
      ,f.APPID as f_USER_APPID--应用ID
      ,f.PWD as f_USER_PWD--密码
      ,f.STATUS as f_USER_STATUS--用户状态
      ,f.USERTYPE as f_USER_USERTYPE--用户类别
      ,f.USERID as f_USER_USERID--用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--用户角色
      ,f.XM as f_USER_XM--姓名
      ,f.XB as f_USER_XB--性别
      ,f.QQ as f_USER_QQ--QQ
      ,f.DZYJ as f_USER_DZYJ--电子邮件
      ,f.LXDH as f_USER_LXDH--联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--用户创建时间

FROM dbo.EDU_ZXDY_04_A03_ZZGWFP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_XQ AS c ON a.XQID = c.ID /*学期ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A06_ZZZC AS d ON a.ZCID = d.ID /*周次ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS e ON a.GWID = e.ID /*岗位ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.JSID = f.LOGINNAME /*教师ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_XQ AS cb ON c.XQM = cb.DM /*学期码*/
GO
