
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
      ,c.XSCKWZ as c_CZDAGN_XSCKWZ--成长档案功能表 学生查看网址
      ,c.XSBJWZ as c_CZDAGN_XSBJWZ--成长档案功能表 学生编辑网址
      ,c.JSCKWZ as c_CZDAGN_JSCKWZ--成长档案功能表 教师查看网址
      ,c.BZRBJWZ as c_CZDAGN_BZRBJWZ--成长档案功能表 班主任编辑网址
      ,c.SFXYDF as c_CZDAGN_SFXYDF--成长档案功能表 是否需要打分
      ,c.DFFSID as c_CZDAGN_DFFSID--成长档案功能表 打分方式ID
      ,c.PLSX as c_CZDAGN_PLSX--成长档案功能表 排列顺序
      ,c.ZT as c_CZDAGN_ZT--成长档案功能表 状态

FROM dbo.EDU_ZXXS_55_A02_CZDAGNQX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A01_CZDAGN AS c ON a.GNID = c.ID /*功能ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
