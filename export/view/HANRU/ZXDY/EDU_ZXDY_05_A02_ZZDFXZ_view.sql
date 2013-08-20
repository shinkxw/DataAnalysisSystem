
--值周打分细则表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP]
AS
SELECT a.[ID]--值周打分细则表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SSDLID]--所属大类ID
      ,a.[XZNR]--细则内容
      ,a.[XZFZ]--细则分值
      ,b.SCHOOLNAME as b_SCHOOL_SCHOOLNAME--学校配置表 学校名称
      ,b.SCHOOLTYPE as b_SCHOOL_SCHOOLTYPE--学校配置表 学校类型
      ,b.XNID as b_SCHOOL_XNID--学校配置表 学年ID
      ,b.XQID as b_SCHOOL_XQID--学校配置表 学期ID
      ,b.MatchURL as b_SCHOOL_MatchURL--学校配置表 匹配url
      ,b.LogLevel as b_SCHOOL_LogLevel--学校配置表 日志级别
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--值周打分大类表 学校ID
      ,c.XQID as c_ZZDFDL_XQID--值周打分大类表 学期ID
      ,c.DLMC as c_ZZDFDL_DLMC--值周打分大类表 大类名称

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_SCHOOL AS b ON a.SCHOOLID = b.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*所属大类ID*/
GO
