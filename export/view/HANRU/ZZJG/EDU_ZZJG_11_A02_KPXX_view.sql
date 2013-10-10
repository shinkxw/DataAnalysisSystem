
--考评选项表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A02_KPXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XXMC]--选项名称
      ,a.[KPFSID]--考评方式ID
      ,a.[KPFZID]--考评分值ID
      ,c.SCHOOLID as c_KPFS_SCHOOLID--考评方式表 学校
      ,c.KPFSMC as c_KPFS_KPFSMC--考评方式表 考评方式名称
      ,d.SCHOOLID as d_KPFZ_SCHOOLID--考评分值表 学校
      ,d.FZMC as d_KPFZ_FZMC--考评分值表 分值名称
      ,d.FSZ as d_KPFZ_FSZ--考评分值表 分数值

FROM dbo.EDU_ZZJG_11_A02_KPXX AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS c ON a.KPFSID = c.ID /*考评方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A01_KPFZ AS d ON a.KPFZID = d.ID /*考评分值ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
