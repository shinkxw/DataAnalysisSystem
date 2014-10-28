
--学生文化素质评价项目表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_56_A21_XSWHSZPJXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KCMC]--课程名称
      ,a.[PJXM]--评价项目
      ,a.[CJDFFSID]--成绩打分方式ID
      ,a.[PJDFFSID]--评价打分方式ID
      ,a.[PLSX]--排列顺序
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_CZDADFFS_SCHOOLID--成长档案打分方式表 学校
      ,c.DFFSMC as c_CZDADFFS_DFFSMC--成长档案打分方式表 打分方式名称
      ,c.DFXMLX as c_CZDADFFS_DFXMLX--成长档案打分方式表 打分项目类型
      ,c.ZT as c_CZDADFFS_ZT--成长档案打分方式表 状态
      ,d.SCHOOLID as d_CZDADFFS_SCHOOLID--成长档案打分方式表 学校
      ,d.DFFSMC as d_CZDADFFS_DFFSMC--成长档案打分方式表 打分方式名称
      ,d.DFXMLX as d_CZDADFFS_DFXMLX--成长档案打分方式表 打分项目类型
      ,d.ZT as d_CZDADFFS_ZT--成长档案打分方式表 状态

FROM dbo.EDU_ZXXS_56_A21_XSWHSZPJXM AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS c ON a.CJDFFSID = c.ID /*成绩打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS d ON a.PJDFFSID = d.ID /*评价打分方式ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
