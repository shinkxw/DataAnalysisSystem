
--财务二级分类科目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_25_A02_CWEJFLKM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[YJKMID]--一级科目ID
      ,a.[EJKMDM]--二级科目代码
      ,a.[EJKMMC]--二级科目名称
      ,c.SCHOOLID as c_CWYJFLKM_SCHOOLID--财务一级分类科目表 学校
      ,c.YJKMDM as c_CWYJFLKM_YJKMDM--财务一级分类科目表 一级科目代码
      ,c.YJKMMC as c_CWYJFLKM_YJKMMC--财务一级分类科目表 一级科目名称
      ,c.SFFT as c_CWYJFLKM_SFFT--财务一级分类科目表 是否分摊

FROM dbo.EDU_ZZJG_25_A02_CWEJFLKM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_25_A01_CWYJFLKM AS c ON a.YJKMID = c.ID /*一级科目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
