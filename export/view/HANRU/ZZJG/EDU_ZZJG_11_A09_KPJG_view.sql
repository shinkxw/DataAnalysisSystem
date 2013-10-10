
--考评结果表
CREATE VIEW [dbo].[VIEW_EDU_ZZJG_11_A09_KPJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KPBHNRID]--考评包含内容表ID
      ,a.[KPNRXMID]--考评内容项目ID
      ,a.[KPFSID]--考评方式ID
      ,a.[KPRID]--考评人ID
      ,a.[BPRID]--被评人ID
      ,a.[KPZTID]--考评主体ID
      ,a.[KPFZ]--考评分值
      ,c.SCHOOLID as c_KPBHNR_SCHOOLID--考评包含内容表 学校
      ,c.KPID as c_KPBHNR_KPID--考评包含内容表 考评ID
      ,c.KPNRID as c_KPBHNR_KPNRID--考评包含内容表 考评内容ID
      ,c.QZ as c_KPBHNR_QZ--考评包含内容表 权重
      ,c.XSFS as c_KPBHNR_XSFS--考评包含内容表 显示方式
      ,d.SCHOOLID as d_KPNRXM_SCHOOLID--考评内容项目表 学校
      ,d.XMMC as d_KPNRXM_XMMC--考评内容项目表 项目名称
      ,d.XMXX as d_KPNRXM_XMXX--考评内容项目表 项目信息
      ,d.KPNRID as d_KPNRXM_KPNRID--考评内容项目表 考评内容ID
      ,d.KPFSID as d_KPNRXM_KPFSID--考评内容项目表 考评方式ID
      ,d.QZ as d_KPNRXM_QZ--考评内容项目表 权重
      ,e.SCHOOLID as e_KPFS_SCHOOLID--考评方式表 学校
      ,e.KPFSMC as e_KPFS_KPFSMC--考评方式表 考评方式名称
      ,f.MC as f_KPZT_MC--考评主体代码 名称

FROM dbo.EDU_ZZJG_11_A09_KPJG AS a LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A07_KPBHNR AS c ON a.KPBHNRID = c.ID /*考评包含内容表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A06_KPNRXM AS d ON a.KPNRXMID = d.ID /*考评内容项目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZZJG_11_A03_KPFS AS e ON a.KPFSID = e.ID /*考评方式ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZJ_KPZT AS f ON a.KPZTID = f.DM /*考评主体ID*/
GO
