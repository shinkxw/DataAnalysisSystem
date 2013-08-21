
--学校实习计划表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_07_A01_XXSXJH_DISP]
AS
SELECT a.[ID]--实习计划ID
      ,a.[SCHOOLID]--学校ID
      ,a.[JHBT]--计划标题
      ,a.[NJ]--年级
      ,a.[BGXS]--报告形式
      ,a.[SFSX]--计划是否生效
      ,c.MC as c_SKFS_MC--授课方式代码表 名称

FROM dbo.EDU_ZZJX_07_A01_XXSXJH AS a LEFT OUTER JOIN
      dbo.EDU_JY_SKFS AS c ON a.SFSX = c.DM /*计划是否生效*/
GO
