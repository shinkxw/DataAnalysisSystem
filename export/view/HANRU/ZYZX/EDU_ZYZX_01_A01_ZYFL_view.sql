
--资源分类
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A01_ZYFL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[FLMC]--分类名称
      ,a.[FFLID]--父分类ID
      ,a.[PLSX]--排列顺序
      ,a.[SFSYZS]--是否首页展示
      ,a.[SFQY]--是否启用
      ,c.SCHOOLID as c_ZYFL_SCHOOLID--资源分类 学校
      ,c.FLMC as c_ZYFL_FLMC--资源分类 分类名称
      ,c.FFLID as c_ZYFL_FFLID--资源分类 父分类ID
      ,c.PLSX as c_ZYFL_PLSX--资源分类 排列顺序
      ,c.SFSYZS as c_ZYFL_SFSYZS--资源分类 是否首页展示
      ,c.SFQY as c_ZYFL_SFQY--资源分类 是否启用

FROM dbo.EDU_ZYZX_01_A01_ZYFL AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYFL AS c ON a.FFLID = c.ID /*父分类ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
