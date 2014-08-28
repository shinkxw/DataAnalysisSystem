
--平湖职业调查打分项目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_23_A03_PHZYDCDFXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DFFSID]--打分方式ID
      ,a.[DFXMMC]--打分项目名称
      ,a.[FZ]--分值
      ,c.SCHOOLID as c_PHZYDCDFFS_SCHOOLID--平湖职业调查打分方式表 学校
      ,c.DFFSMC as c_PHZYDCDFFS_DFFSMC--平湖职业调查打分方式表 打分方式名称
      ,c.ZT as c_PHZYDCDFFS_ZT--平湖职业调查打分方式表 状态

FROM dbo.EDU_ZZJG_23_A03_PHZYDCDFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_23_A02_PHZYDCDFFS AS c ON a.DFFSID = c.ID /*打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
