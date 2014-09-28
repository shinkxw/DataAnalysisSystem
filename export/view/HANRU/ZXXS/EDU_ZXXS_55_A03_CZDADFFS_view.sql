
--成长档案打分方式表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A03_CZDADFFS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[GNID]--功能ID
      ,a.[DFFSMC]--打分方式名称
      ,a.[DFXMLX]--打分项目类型
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_CZDAGN_SCHOOLID--成长档案功能表 学校
      ,c.GNMC as c_CZDAGN_GNMC--成长档案功能表 功能名称
      ,c.WZ as c_CZDAGN_WZ--成长档案功能表 网址
      ,c.PLSX as c_CZDAGN_PLSX--成长档案功能表 排列顺序
      ,c.ZT as c_CZDAGN_ZT--成长档案功能表 状态

FROM dbo.EDU_ZXXS_55_A03_CZDADFFS AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A01_CZDAGN AS c ON a.GNID = c.ID /*功能ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
