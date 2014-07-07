
--平湖职业测评题目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A04_PHZYCPTM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DFFSID]--打分方式ID
      ,a.[CPMCID]--测评名称ID
      ,a.[CPXM]--测评项目
      ,a.[CPZB]--测评指标
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_PHZYCPDFFS_SCHOOLID--平湖职业测评打分方式表 学校
      ,c.DFFSMC as c_PHZYCPDFFS_DFFSMC--平湖职业测评打分方式表 打分方式名称
      ,c.ZT as c_PHZYCPDFFS_ZT--平湖职业测评打分方式表 状态
      ,d.SCHOOLID as d_PHZYCPMC_SCHOOLID--平湖职业测评名称表 学校
      ,d.KPMC as d_PHZYCPMC_KPMC--平湖职业测评名称表 测评名称
      ,d.BZ as d_PHZYCPMC_BZ--平湖职业测评名称表 备注

FROM dbo.EDU_ZZJG_22_A04_PHZYCPTM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A02_PHZYCPDFFS AS c ON a.DFFSID = c.ID /*打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A01_PHZYCPMC AS d ON a.CPMCID = d.ID /*测评名称ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
