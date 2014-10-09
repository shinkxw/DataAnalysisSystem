
--成长档案功能表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A01_CZDAGN_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[GNMC]--功能名称
      ,a.[XSCKWZ]--学生查看网址
      ,a.[XSBJWZ]--学生编辑网址
      ,a.[JSCKWZ]--教师查看网址
      ,a.[BZRBJWZ]--班主任编辑网址
      ,a.[SFXYDF]--是否需要打分
      ,a.[DFFSID]--打分方式ID
      ,a.[PLSX]--排列顺序
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_CZDADFFS_SCHOOLID--成长档案打分方式表 学校
      ,c.DFFSMC as c_CZDADFFS_DFFSMC--成长档案打分方式表 打分方式名称
      ,c.DFXMLX as c_CZDADFFS_DFXMLX--成长档案打分方式表 打分项目类型
      ,c.ZT as c_CZDADFFS_ZT--成长档案打分方式表 状态

FROM dbo.EDU_ZXXS_55_A01_CZDAGN AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS c ON a.DFFSID = c.ID /*打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
