
--打分统计数据集表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A50_DFTJSJJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[SJJMC]--数据集名称
      ,a.[DFDXZID]--打分对象组ID
      ,a.[TJDXJDBMJH]--统计对象节点编码集合
      ,a.[TJDXJDMCLB]--统计对象节点名称列表
      ,a.[QSSJ]--起始时间
      ,a.[JSSJ]--结束时间
      ,a.[SJSCZT]--数据生成状态
      ,a.[DQPCBH]--当前批次编号
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DXZ_SCHOOLID--对象组表 学校ID
      ,d.DXZMC as d_DXZ_DXZMC--对象组表 对象组名称
      ,d.DXIDLB as d_DXZ_DXIDLB--对象组表 对象ID列表
      ,d.DXMCLB as d_DXZ_DXMCLB--对象组表 对象名称列表

FROM dbo.EDU_OAXT_50_A50_DFTJSJJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS d ON a.DFDXZID = d.ID /*打分对象组ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
