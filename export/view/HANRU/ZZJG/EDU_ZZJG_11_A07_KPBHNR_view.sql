
--考评包含内容表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A07_KPBHNR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KPID]--考评ID
      ,a.[KPNRID]--考评内容ID
      ,a.[QZ]--权重
      ,a.[XSFS]--显示方式
      ,c.SCHOOLID as c_KPSJ_SCHOOLID--考评数据表 学校
      ,c.XNID as c_KPSJ_XNID--考评数据表 学年ID
      ,c.XQID as c_KPSJ_XQID--考评数据表 学期ID
      ,c.KPMC as c_KPSJ_KPMC--考评数据表 考评名称
      ,c.BPRIDLB as c_KPSJ_BPRIDLB--考评数据表 被评人ID列表
      ,c.KSSJ as c_KPSJ_KSSJ--考评数据表 开始时间
      ,c.JSSJ as c_KPSJ_JSSJ--考评数据表 结束时间
      ,c.ZT as c_KPSJ_ZT--考评数据表 状态
      ,d.SCHOOLID as d_KPNRSJ_SCHOOLID--考评内容数据表 学校
      ,d.KPNRMC as d_KPNRSJ_KPNRMC--考评内容数据表 考评内容名称
      ,d.KPNRLX as d_KPNRSJ_KPNRLX--考评内容数据表 考评内容类型
      ,d.KPZTID as d_KPNRSJ_KPZTID--考评内容数据表 考评主体ID
      ,db.MC as d_KPNRSJ_KPZTID_MC--考评主体代码 名称

FROM dbo.EDU_ZZJG_11_A07_KPBHNR AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A04_KPSJ AS c ON a.KPID = c.ID /*考评ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A05_KPNRSJ AS d ON a.KPNRID = d.ID /*考评内容ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS db ON d.KPZTID = db.DM /*考评主体ID*/
GO
