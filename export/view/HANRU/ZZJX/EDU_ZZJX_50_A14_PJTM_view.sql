
--评教题目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A14_PJTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[PJID]--评教ID
      ,a.[PFFSID]--评分方式ID
      ,a.[TMMC]--题目名称
      ,a.[PJZB]--评教指标
      ,c.SCHOOLID as c_XKXSPJ_SCHOOLID--选课学生评教表 学校
      ,c.PJMC as c_XKXSPJ_PJMC--选课学生评教表 评教名称
      ,c.KSSJ as c_XKXSPJ_KSSJ--选课学生评教表 开始时间
      ,c.JSSJ as c_XKXSPJ_JSSJ--选课学生评教表 结束时间
      ,d.SCHOOLID as d_PJPFFS_SCHOOLID--评教评分方式表 学校
      ,d.PFFSMC as d_PJPFFS_PFFSMC--评教评分方式表 评分方式名称

FROM dbo.EDU_ZZJX_50_A14_PJTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A11_XKXSPJ AS c ON a.PJID = c.ID /*评教ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A12_PJPFFS AS d ON a.PFFSID = d.ID /*评分方式ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
