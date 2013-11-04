
--考评内容项目表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A06_KPNRXM_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[XMMC]--项目名称
      ,a.[XMXX]--项目信息
      ,a.[KPNRID]--考评内容ID
      ,a.[KPFSID]--考评方式ID
      ,a.[QZ]--权重
      ,c.SCHOOLID as c_KPNRSJ_SCHOOLID--考评内容数据表 学校
      ,c.KPNRMC as c_KPNRSJ_KPNRMC--考评内容数据表 考评内容名称
      ,c.KPNRLX as c_KPNRSJ_KPNRLX--考评内容数据表 考评内容类型
      ,c.KPZTID as c_KPNRSJ_KPZTID--考评内容数据表 考评主体ID
      ,[cb].MC as c_KPNRSJ_KPZTID_MC--考评主体代码 名称
      ,d.SCHOOLID as d_KPFS_SCHOOLID--考评方式表 学校
      ,d.KPFSMC as d_KPFS_KPFSMC--考评方式表 考评方式名称

FROM dbo.EDU_ZZJG_11_A06_KPNRXM AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A05_KPNRSJ AS c ON a.KPNRID = c.ID /*考评内容ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS d ON a.KPFSID = d.ID /*考评方式ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS [cb] ON c.KPZTID = [cb].DM /*考评主体ID*/
GO
