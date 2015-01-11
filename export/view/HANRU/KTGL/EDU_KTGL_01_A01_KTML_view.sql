
--课题目录
CREATE VIEW [dbo].[VIEW_EDU_KTGL_01_A01_KTML_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[MLMC]--目录名称
      ,a.[FMLID]--父目录ID
      ,a.[PLSX]--排列顺序
      ,a.[SFSYZS]--是否首页展示
      ,a.[SFQY]--是否启用
      ,a.[URL]--网址
      ,c.SCHOOLID as c_KTML_SCHOOLID--课题目录 学校
      ,c.MLMC as c_KTML_MLMC--课题目录 目录名称
      ,c.FMLID as c_KTML_FMLID--课题目录 父目录ID
      ,c.PLSX as c_KTML_PLSX--课题目录 排列顺序
      ,c.SFSYZS as c_KTML_SFSYZS--课题目录 是否首页展示
      ,c.SFQY as c_KTML_SFQY--课题目录 是否启用
      ,c.URL as c_KTML_URL--课题目录 网址

FROM dbo.EDU_KTGL_01_A01_KTML AS a LEFT OUTER JOIN
      dbo.EDU_KTGL_01_A01_KTML AS c ON a.FMLID = c.ID /*父目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
