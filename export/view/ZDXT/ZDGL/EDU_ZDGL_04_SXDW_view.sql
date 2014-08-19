
--送修单位信息表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_04_SXDW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[QHM]--区划码
      ,a.[SSSJQHM]--所属市级区划码
      ,a.[DWMC]--单位名称
      ,a.[DWMCPY]--单位名称拼音
      ,b.MC as b_XZQH_MC--行政区划表 名称
      ,b.QH as b_XZQH_QH--行政区划表 区号

FROM dbo.EDU_ZDGL_04_SXDW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_XZQH AS b ON a.QHM = b.DM /*区划码*/
GO
