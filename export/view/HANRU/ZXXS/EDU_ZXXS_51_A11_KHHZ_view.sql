
--考核汇总表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A11_KHHZ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MC]--名称
      ,a.[HZFS]--汇总方式
      ,a.[KHDX]--考核对象
      ,a.[YXDLIDLB]--优先大类ID列表
      ,a.[YXDLMCLB]--优先大类名称列表
      ,a.[YXPXFS]--优先排序方式
      ,a.[CXDLIDLB]--次先大类ID列表
      ,a.[CXDLMCLB]--次先大类名称列表
      ,a.[CXPXFS]--次先排序方式
      ,a.[DDPXFS]--等第评选方式
      ,a.[SFXSWDD]--是否显示无等第
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXXS_51_A11_KHHZ AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFXSWDD = c.DM /*是否显示无等第*/
GO
