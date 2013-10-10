
--考评人员表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A08_KPRY_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KPBHNRID]--考评包含内容表ID
      ,a.[KPRIDLB]--考评人ID列表
      ,a.[BPRIDLB]--被评人ID列表
      ,a.[KPZTID]--考评主体ID
      ,c.SCHOOLID as c_KPBHNR_SCHOOLID--考评包含内容表 学校
      ,c.KPID as c_KPBHNR_KPID--考评包含内容表 考评ID
      ,c.KPNRID as c_KPBHNR_KPNRID--考评包含内容表 考评内容ID
      ,c.QZ as c_KPBHNR_QZ--考评包含内容表 权重
      ,c.XSFS as c_KPBHNR_XSFS--考评包含内容表 显示方式
      ,d.MC as d_KPZT_MC--考评主体代码 名称

FROM dbo.EDU_ZZJG_11_A08_KPRY AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A07_KPBHNR AS c ON a.KPBHNRID = c.ID /*考评包含内容表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS d ON a.KPZTID = d.DM /*考评主体ID*/
GO
