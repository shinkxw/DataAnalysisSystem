
--财务三级分类科目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A03_CWSJFLKM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YJKMID]--一级科目ID
      ,a.[EJKMID]--二级科目ID
      ,a.[SJKMDM]--三级科目代码
      ,a.[SJKMMC]--三级科目名称
      ,a.[SFHJDY]--是否合计打印
      ,c.SCHOOLID as c_CWYJFLKM_SCHOOLID--财务一级分类科目表 学校
      ,c.YJKMDM as c_CWYJFLKM_YJKMDM--财务一级分类科目表 一级科目代码
      ,c.YJKMMC as c_CWYJFLKM_YJKMMC--财务一级分类科目表 一级科目名称
      ,c.SFFT as c_CWYJFLKM_SFFT--财务一级分类科目表 是否分摊
      ,d.SCHOOLID as d_CWEJFLKM_SCHOOLID--财务二级分类科目表 学校
      ,d.YJKMID as d_CWEJFLKM_YJKMID--财务二级分类科目表 一级科目ID
      ,d.EJKMDM as d_CWEJFLKM_EJKMDM--财务二级分类科目表 二级科目代码
      ,d.EJKMMC as d_CWEJFLKM_EJKMMC--财务二级分类科目表 二级科目名称

FROM dbo.EDU_ZZJG_25_A03_CWSJFLKM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A01_CWYJFLKM AS c ON a.YJKMID = c.ID /*一级科目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A02_CWEJFLKM AS d ON a.EJKMID = d.ID /*二级科目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
