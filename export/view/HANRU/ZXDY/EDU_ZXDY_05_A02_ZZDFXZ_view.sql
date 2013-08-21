
--值周打分细则表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_05_A02_ZZDFXZ_DISP]
AS
SELECT a.[ID]--值周打分细则表ID
      ,a.[SCHOOLID]--学校ID
      ,a.[SSDLID]--所属大类ID
      ,a.[XZNR]--细则内容
      ,a.[XZFZ]--细则分值
      ,c.SCHOOLID as c_ZZDFDL_SCHOOLID--值周打分大类表 学校ID
      ,c.XQID as c_ZZDFDL_XQID--值周打分大类表 学期ID
      ,c.DLMC as c_ZZDFDL_DLMC--值周打分大类表 大类名称

FROM dbo.EDU_ZXDY_05_A02_ZZDFXZ AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_05_A01_ZZDFDL AS c ON a.SSDLID = c.ID /*所属大类ID*/
GO
