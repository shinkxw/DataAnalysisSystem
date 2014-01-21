
--个人信息编辑开关表
CREATE VIEW [dbo].[VIEW_EDU_ZXJZ_01_A03_GRXXBJKG_DISP]
AS
SELECT a.[SCHOOLID]--学校
      ,a.[SCSJ]--开始时间
      ,a.[HDSJ]--结束时间
      ,a.[SFKQ]--是否开启
      ,c.MC as c_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_ZXJZ_01_A03_GRXXBJKG AS a LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS c ON a.SFKQ = c.DM /*是否开启*/
GO
