
--打分统计字段计算方式表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A52_DFTJZDJSFS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[SJJID]--数据集ID
      ,a.[ZDID]--字段ID
      ,a.[JSLX]--计算类型
      ,a.[ZDYID]--字段一ID
      ,a.[ZDEID]--字段二ID
      ,a.[ZDESZ]--字段二数值
      ,a.[JSCS]--计算参数
      ,a.[JSFSSM]--计算方式说明
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DFTJSJJ_SCHOOLID--打分统计数据集表 学校ID
      ,d.XMID as d_DFTJSJJ_XMID--打分统计数据集表 项目ID
      ,d.SJJMC as d_DFTJSJJ_SJJMC--打分统计数据集表 数据集名称
      ,d.DFDXZID as d_DFTJSJJ_DFDXZID--打分统计数据集表 打分对象组ID
      ,d.DFDXZMC as d_DFTJSJJ_DFDXZMC--打分统计数据集表 打分对象组名称
      ,d.TJDXJDBMJH as d_DFTJSJJ_TJDXJDBMJH--打分统计数据集表 统计对象节点编码集合
      ,d.TJDXJDMCLB as d_DFTJSJJ_TJDXJDMCLB--打分统计数据集表 统计对象节点名称列表
      ,d.QSSJ as d_DFTJSJJ_QSSJ--打分统计数据集表 起始时间
      ,d.JSSJ as d_DFTJSJJ_JSSJ--打分统计数据集表 结束时间
      ,d.SJSCZT as d_DFTJSJJ_SJSCZT--打分统计数据集表 数据生成状态
      ,d.DQPCBH as d_DFTJSJJ_DQPCBH--打分统计数据集表 当前批次编号
      ,d.SJJCJ as d_DFTJSJJ_SJJCJ--打分统计数据集表 数据集层级
      ,d.SJJPC as d_DFTJSJJ_SJJPC--打分统计数据集表 数据集频次
      ,d.SJJCJMC as d_DFTJSJJ_SJJCJMC--打分统计数据集表 数据集层级名称
      ,d.SJJPCMC as d_DFTJSJJ_SJJPCMC--打分统计数据集表 数据集频次名称
      ,e.SCHOOLID as e_DFTJZD_SCHOOLID--打分统计字段表 学校ID
      ,e.XMID as e_DFTJZD_XMID--打分统计字段表 项目ID
      ,e.SJJID as e_DFTJZD_SJJID--打分统计字段表 数据集ID
      ,e.ZDMC as e_DFTJZD_ZDMC--打分统计字段表 字段名称
      ,e.ZDLX as e_DFTJZD_ZDLX--打分统计字段表 字段类型
      ,e.SJLYLX as e_DFTJZD_SJLYLX--打分统计字段表 数据来源类型
      ,e.SJLYID as e_DFTJZD_SJLYID--打分统计字段表 数据来源ID
      ,e.SJLYMC as e_DFTJZD_SJLYMC--打分统计字段表 数据来源名称
      ,e.SJLYDXCJ as e_DFTJZD_SJLYDXCJ--打分统计字段表 数据来源对象层级
      ,e.SJLYSJPC as e_DFTJZD_SJLYSJPC--打分统计字段表 数据来源时间频次
      ,e.SJLYDXCJMC as e_DFTJZD_SJLYDXCJMC--打分统计字段表 数据来源对象层级名称
      ,e.SJLYSJPCMC as e_DFTJZD_SJLYSJPCMC--打分统计字段表 数据来源时间频次名称
      ,e.DXCJSFFS as e_DFTJZD_DXCJSFFS--打分统计字段表 对象层级缩放方式
      ,e.SJPCSFFS as e_DFTJZD_SJPCSFFS--打分统计字段表 时间频次缩放方式
      ,e.SZMRZ as e_DFTJZD_SZMRZ--打分统计字段表 数值默认值
      ,e.LJMRZ as e_DFTJZD_LJMRZ--打分统计字段表 逻辑默认值
      ,e.YXJ as e_DFTJZD_YXJ--打分统计字段表 优先级

FROM dbo.EDU_OAXT_50_A52_DFTJZDJSFS AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A50_DFTJSJJ AS d ON a.SJJID = d.ID /*数据集ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A51_DFTJZD AS e ON a.ZDID = e.ID /*字段ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.XMID = e.XMID /*项目ID*/
GO
