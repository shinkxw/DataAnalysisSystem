
--考核汇总档位表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_51_A15_KHHZDW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KHHZID]--考核汇总ID
      ,a.[DWMC]--档位名称
      ,a.[HFSX]--划分上限
      ,a.[HFXX]--划分下限
      ,c.SCHOOLID as c_KHHZ_SCHOOLID--考核汇总表 学校
      ,c.MC as c_KHHZ_MC--考核汇总表 名称
      ,c.HZFS as c_KHHZ_HZFS--考核汇总表 汇总方式
      ,c.KHDX as c_KHHZ_KHDX--考核汇总表 考核对象
      ,c.YXDLIDLB as c_KHHZ_YXDLIDLB--考核汇总表 优先大类ID列表
      ,c.YXDLMCLB as c_KHHZ_YXDLMCLB--考核汇总表 优先大类名称列表
      ,c.YXPXFS as c_KHHZ_YXPXFS--考核汇总表 优先排序方式
      ,c.CXDLIDLB as c_KHHZ_CXDLIDLB--考核汇总表 次先大类ID列表
      ,c.CXDLMCLB as c_KHHZ_CXDLMCLB--考核汇总表 次先大类名称列表
      ,c.CXPXFS as c_KHHZ_CXPXFS--考核汇总表 次先排序方式
      ,c.DDPXFS as c_KHHZ_DDPXFS--考核汇总表 等第评选方式
      ,c.SFXSWDD as c_KHHZ_SFXSWDD--考核汇总表 是否显示无等第
      ,[cb].MC as c_KHHZ_SFXSWDD_MC--是否标志代码表 名称

FROM dbo.EDU_ZXXS_51_A15_KHHZDW AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_51_A11_KHHZ AS c ON a.KHHZID = c.ID /*考核汇总ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cb] ON c.SFXSWDD = [cb].DM /*是否显示无等第*/
GO
