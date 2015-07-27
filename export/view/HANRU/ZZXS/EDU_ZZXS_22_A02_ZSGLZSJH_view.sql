
--招生管理招生计划表
CREATE VIEW [dbo].[VIEW_EDU_ZZXS_22_A02_ZSGLZSJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[JHMC]--计划名称
      ,a.[XNID]--学年ID
      ,a.[KG]--开关
      ,c.SCHOOLID as c_XN_SCHOOLID--学年表 学校名
      ,c.XN as c_XN_XN--学年表 学年

FROM dbo.EDU_ZZXS_22_A02_ZSGLZSJH AS a LEFT OUTER JOIN
      dbo.EDU_SYS_01_XN AS c ON a.XNID = c.ID /*学年ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
