
--视频目录
CREATE VIEW [dbo].[VIEW_EDU_XYDT_01_A01_SPML_DISP]
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
      ,c.SCHOOLID as c_SPML_SCHOOLID--视频目录 学校
      ,c.MLMC as c_SPML_MLMC--视频目录 目录名称
      ,c.FMLID as c_SPML_FMLID--视频目录 父目录ID
      ,c.PLSX as c_SPML_PLSX--视频目录 排列顺序
      ,c.SFSYZS as c_SPML_SFSYZS--视频目录 是否首页展示
      ,c.SFQY as c_SPML_SFQY--视频目录 是否启用
      ,c.URL as c_SPML_URL--视频目录 网址
      ,c.FMLIDLB as c_SPML_FMLIDLB--视频目录 父目录ID列表

FROM dbo.EDU_XYDT_01_A01_SPML AS a LEFT OUTER JOIN
      dbo.EDU_XYDT_01_A01_SPML AS c ON a.FMLID = c.ID /*父目录ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
