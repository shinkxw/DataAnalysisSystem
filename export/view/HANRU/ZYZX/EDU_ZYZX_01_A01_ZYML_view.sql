
--资源目录
CREATE VIEW [dbo].[VIEW_EDU_ZYZX_01_A01_ZYML_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MLMC]--目录名称
      ,a.[FMLID]--父目录ID
      ,a.[PLSX]--排列顺序
      ,a.[SFSYZS]--是否首页展示
      ,a.[SFQY]--是否启用
      ,a.[URL]--网址
      ,a.[FMLIDLB]--父目录ID列表
      ,c.SCHOOLID as c_ZYML_SCHOOLID--资源目录 学校
      ,c.MLMC as c_ZYML_MLMC--资源目录 目录名称
      ,c.FMLID as c_ZYML_FMLID--资源目录 父目录ID
      ,c.PLSX as c_ZYML_PLSX--资源目录 排列顺序
      ,c.SFSYZS as c_ZYML_SFSYZS--资源目录 是否首页展示
      ,c.SFQY as c_ZYML_SFQY--资源目录 是否启用
      ,c.URL as c_ZYML_URL--资源目录 网址
      ,c.FMLIDLB as c_ZYML_FMLIDLB--资源目录 父目录ID列表

FROM dbo.EDU_ZYZX_01_A01_ZYML AS a LEFT OUTER JOIN
      dbo.EDU_ZYZX_01_A01_ZYML AS c ON a.FMLID = c.ID /*父目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
