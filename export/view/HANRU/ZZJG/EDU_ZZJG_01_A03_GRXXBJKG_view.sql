
--个人信息编辑开关表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_01_A03_GRXXBJKG_DISP]
AS
SELECT a.[SCHOOLID]--学校
      ,a.[SCSJ]--开始时间
      ,a.[HDSJ]--结束时间
      ,a.[SFKQ]--是否开启
      ,a.[JBXXKG]--基本信息开关
      ,a.[KZXXKG]--扩展信息开关
      ,a.[QTXXKG]--其他信息开关
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称
      ,d.MC as d_SFBZ_MC--是否标志代码表 名称
      ,e.MC as e_SFBZ_MC--是否标志代码表 名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZZJG_01_A03_GRXXBJKG AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFKQ = c.DM /*是否开启*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS d ON a.JBXXKG = d.DM /*基本信息开关*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS e ON a.KZXXKG = e.DM /*扩展信息开关*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.QTXXKG = f.DM /*其他信息开关*/
GO
