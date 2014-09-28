
--成长档案功能权限表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A02_CZDAGNQX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[GNID]--功能ID
      ,a.[YHLX]--用户类型
      ,a.[QXMC]--权限名称
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_CZDAGN_SCHOOLID--成长档案功能表 学校
      ,c.GNMC as c_CZDAGN_GNMC--成长档案功能表 功能名称
      ,c.WZ as c_CZDAGN_WZ--成长档案功能表 网址
      ,c.PLSX as c_CZDAGN_PLSX--成长档案功能表 排列顺序
      ,c.ZT as c_CZDAGN_ZT--成长档案功能表 状态

FROM dbo.EDU_ZXXS_55_A02_CZDAGNQX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A01_CZDAGN AS c ON a.GNID = c.ID /*功能ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
