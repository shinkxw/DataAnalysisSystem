
--成长档案打分选项表
CREATE VIEW [dbo].[VIEW_EDU_ZXXS_55_A04_CZDADFXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DFFSID]--打分方式ID
      ,a.[XXNR]--选项内容
      ,a.[TPLJ]--图片路径
      ,c.SCHOOLID as c_CZDADFFS_SCHOOLID--成长档案打分方式表 学校
      ,c.GNID as c_CZDADFFS_GNID--成长档案打分方式表 功能ID
      ,c.DFFSMC as c_CZDADFFS_DFFSMC--成长档案打分方式表 打分方式名称
      ,c.DFXMLX as c_CZDADFFS_DFXMLX--成长档案打分方式表 打分项目类型
      ,c.ZT as c_CZDADFFS_ZT--成长档案打分方式表 状态

FROM dbo.EDU_ZXXS_55_A04_CZDADFXX AS a LEFT OUTER JOIN
      dbo.EDU_ZXXS_55_A03_CZDADFFS AS c ON a.DFFSID = c.ID /*打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
