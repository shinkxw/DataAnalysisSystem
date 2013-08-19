
--模板分配内容表
CREATE VIEW [dbo].[VIEW_EDU_ZXDY_04_A07_MBFPNR_DISP]
AS
SELECT a.[ID]--模板内容表ID
      ,a.[MBID]--模板表ID
      ,a.[GZR]--工作日
      ,a.[GWID]--岗位ID
      ,a.[DYRYH]--对应人员号
      ,b.SCHOOLID as b_GWFPMB_SCHOOLID--学校ID
      ,b.MBMC as b_GWFPMB_MBMC--模板名称
      ,c.SCHOOLID as c_ZZGW_SCHOOLID--学校ID
      ,c.XQID as c_ZZGW_XQID--学期ID
      ,c.GWGZNR as c_ZZGW_GWGZNR--岗位工作内容

FROM dbo.EDU_ZXDY_04_A07_MBFPNR AS a LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A04_GWFPMB AS b ON a.MBID = b.ID /*模板表ID*/ LEFT OUTER JOIN
      dbo.EDU_ZXDY_04_A01_ZZGW AS c ON a.GWID = c.ID /*岗位ID*/
GO
