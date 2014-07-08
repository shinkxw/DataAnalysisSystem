
--送修单位信息表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_04_SXDW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[QHM]--区划码
      ,a.[DWMC]--单位名称
      ,b.MC as b_ZHRMGHGXZQH_MC--中华人民共和国行政区划代码 名称

FROM dbo.EDU_ZDGL_04_SXDW AS a LEFT OUTER JOIN
      dbo.EDU_GB_ZHRMGHGXZQH AS b ON a.QHM = b.DM /*区划码*/
GO
