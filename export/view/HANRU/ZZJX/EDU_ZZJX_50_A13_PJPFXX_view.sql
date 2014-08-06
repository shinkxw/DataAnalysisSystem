
--评教评分选项表
CREATE VIEW [dbo].[VIEW_EDU_ZZJX_50_A13_PJPFXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[PFFSID]--评分方式ID
      ,a.[PFXXMC]--评分选项名称
      ,a.[FZ]--分值
      ,c.SCHOOLID as c_PJPFFS_SCHOOLID--评教评分方式表 学校
      ,c.PFFSMC as c_PJPFFS_PFFSMC--评教评分方式表 评分方式名称

FROM dbo.EDU_ZZJX_50_A13_PJPFXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJX_50_A12_PJPFFS AS c ON a.PFFSID = c.ID /*评分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
