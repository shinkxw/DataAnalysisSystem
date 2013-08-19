
--机构数据类表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_04_01_JG_DISP]
AS
SELECT a.[SCHOOLID]--学校名
      ,a.[JGH]--机构号
      ,a.[LSJGH]--隶属机构号
      ,a.[JGMC]--机构名称
      ,a.[JGJC]--机构简称
      ,a.[FZRGH]--负责人工号
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校类型
      ,b.XNID as b_SCHOOL_XNID--学年ID
      ,b.XQID as b_SCHOOL_XQID--学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--日志级别
      ,c.SCHOOLID as c_JG_SCHOOLID--学校名
      ,c.LSJGH as c_JG_LSJGH--隶属机构号
      ,c.JGMC as c_JG_JGMC--机构名称
      ,c.JGJC as c_JG_JGJC--机构简称
      ,c.FZRGH as c_JG_FZRGH--负责人工号

FROM dbo.EDU_ZXXX_04_01_JG AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校名*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_04_01_JG AS c ON a.LSJGH = c.JGH /*隶属机构号*/ AND a.SCHOOLID = c.SCHOOLID /*学校名*/
GO
