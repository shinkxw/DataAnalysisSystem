
--打分统计字段表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A51_DFTJZD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[SJJID]--数据集ID
      ,a.[ZDMC]--字段名称
      ,a.[ZDLX]--字段类型
      ,a.[SJLYLX]--数据来源类型
      ,a.[SJLYID]--数据来源ID
      ,a.[SJLYDXCJ]--数据来源对象层级
      ,a.[SJLYSJPC]--数据来源时间频次
      ,a.[ZDDXCJ]--字段对象层级
      ,a.[DXCJSFFS]--对象层级缩放方式
      ,a.[ZDSJPC]--字段时间频次
      ,a.[SJPCSFFS]--时间频次缩放方式
      ,a.[SZMRZ]--数值默认值
      ,a.[LJMRZ]--逻辑默认值
      ,a.[YXJ]--优先级
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DFTJSJJ_SCHOOLID--打分统计数据集表 学校ID
      ,d.XMID as d_DFTJSJJ_XMID--打分统计数据集表 项目ID
      ,d.SJJMC as d_DFTJSJJ_SJJMC--打分统计数据集表 数据集名称
      ,d.DFDXZID as d_DFTJSJJ_DFDXZID--打分统计数据集表 打分对象组ID
      ,d.TJDXJDBMJH as d_DFTJSJJ_TJDXJDBMJH--打分统计数据集表 统计对象节点编码集合
      ,d.TJDXJDMCLB as d_DFTJSJJ_TJDXJDMCLB--打分统计数据集表 统计对象节点名称列表
      ,d.QSSJ as d_DFTJSJJ_QSSJ--打分统计数据集表 起始时间
      ,d.JSSJ as d_DFTJSJJ_JSSJ--打分统计数据集表 结束时间
      ,d.SJSCZT as d_DFTJSJJ_SJSCZT--打分统计数据集表 数据生成状态
      ,d.DQPCBH as d_DFTJSJJ_DQPCBH--打分统计数据集表 当前批次编号

FROM dbo.EDU_OAXT_50_A51_DFTJZD AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A50_DFTJSJJ AS d ON a.SJJID = d.ID /*数据集ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/
GO
