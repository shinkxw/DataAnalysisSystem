
--打分统计数据集表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A50_DFTJSJJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[SJJMC]--数据集名称
      ,a.[DFDXZID]--打分对象组ID
      ,a.[DFDXZMC]--打分对象组名称
      ,a.[TJDXJDBMJH]--统计对象节点编码集合
      ,a.[TJDXJDMCLB]--统计对象节点名称列表
      ,a.[QSSJ]--起始时间
      ,a.[JSSJ]--结束时间
      ,a.[SJJCJ]--数据集层级
      ,a.[SJJPC]--数据集频次
      ,a.[SJJCJMC]--数据集层级名称
      ,a.[SJJPCMC]--数据集频次名称
      ,a.[SJSCZT]--数据生成状态
      ,a.[DQPCBH]--当前批次编号
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID

FROM dbo.EDU_OAXT_50_A50_DFTJSJJ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
