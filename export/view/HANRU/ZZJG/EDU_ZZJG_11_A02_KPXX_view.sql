
--考评选项表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A02_KPXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XXMC]--选项名称
      ,a.[KPFSID]--考评方式ID
      ,a.[KPFZ]--考评分值
      ,c.SCHOOLID as c_KPFS_SCHOOLID--考评方式表 学校
      ,c.KPFSMC as c_KPFS_KPFSMC--考评方式表 考评方式名称

FROM dbo.EDU_ZZJG_11_A02_KPXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS c ON a.KPFSID = c.ID /*考评方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
