
--网站会员
CREATE VIEW [dbo].[VIEW_EDU_WZXT_VIP_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[WEBID]--网站ID
      ,a.[LOGINNAME]--用户名
      ,a.[LOGINPWD]--密码
      ,a.[REALNAME]--姓名
      ,a.[EMAIL]--电子邮箱
      ,a.[MOBILE]--联系电话
      ,a.[QQ]--QQ号码
      ,a.[AUDITSTATU]--审核状态
      ,a.[AUDITOR]--审核人ID
      ,a.[AUDITORNAME]--审核人
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_WZPZ_SCHOOLID--学校名
      ,c.WEBNAME as c_WZPZ_WEBNAME--网站名
      ,c.STATUID as c_WZPZ_STATUID--是否开启
      ,c.WEBURL as c_WZPZ_WEBURL--网址
      ,c.CSSID as c_WZPZ_CSSID--网站样式

FROM dbo.EDU_WZXT_VIP AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_WZXT_MHXT_WZPZ AS c ON a.WEBID = c.WEBID /*网站ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
