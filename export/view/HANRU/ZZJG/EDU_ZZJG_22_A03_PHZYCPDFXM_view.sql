
--平湖职业测评打分项目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_22_A03_PHZYCPDFXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[DFFSID]--打分方式ID
      ,a.[DFXMMC]--打分项目名称
      ,a.[FZ]--分值
      ,c.SCHOOLID as c_PHZYCPDFFS_SCHOOLID--平湖职业测评打分方式表 学校
      ,c.DFFSMC as c_PHZYCPDFFS_DFFSMC--平湖职业测评打分方式表 打分方式名称
      ,c.ZT as c_PHZYCPDFFS_ZT--平湖职业测评打分方式表 状态

FROM dbo.EDU_ZZJG_22_A03_PHZYCPDFXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_22_A02_PHZYCPDFFS AS c ON a.DFFSID = c.ID /*打分方式ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
