
--平湖职业调查题目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A04_PHZYDCTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DFFSID]--打分方式ID
      ,a.[DCMCID]--调查名称ID
      ,a.[DCXM]--调查项目
      ,a.[DCZB]--调查指标
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_PHZYDCDFFS_SCHOOLID--平湖职业调查打分方式表 学校
      ,c.DFFSMC as c_PHZYDCDFFS_DFFSMC--平湖职业调查打分方式表 打分方式名称
      ,c.ZT as c_PHZYDCDFFS_ZT--平湖职业调查打分方式表 状态
      ,d.SCHOOLID as d_PHZYDCMC_SCHOOLID--平湖职业调查名称表 学校
      ,d.DCMC as d_PHZYDCMC_DCMC--平湖职业调查名称表 调查名称
      ,d.BZ as d_PHZYDCMC_BZ--平湖职业调查名称表 备注
      ,d.ZT as d_PHZYDCMC_ZT--平湖职业调查名称表 状态

FROM dbo.EDU_ZZJG_23_A04_PHZYDCTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A02_PHZYDCDFFS AS c ON a.DFFSID = c.ID /*打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A01_PHZYDCMC AS d ON a.DCMCID = d.ID /*调查名称ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
