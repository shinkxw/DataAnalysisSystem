
--打分统计结果视图表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A54_DFTJJGST_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[SJJID]--数据集ID
      ,a.[ZSZDIDLB]--展示字段ID列表
      ,a.[ZSZDMCLB]--展示字段名称列表
      ,a.[ZSDXJDBMJH]--展示对象节点编码集合
      ,a.[ZSDXJDMCLB]--展示对象节点名称列表
      ,a.[ZSSJQSSJ]--展示数据起始时间
      ,a.[ZSSJJSSJ]--展示数据结束时间
      ,a.[SDWZ]--锁定维度
      ,a.[SFKGXZ]--是否可供选择
      ,a.[SDDX]--锁定对象
      ,a.[KCKYHIDLB]--可查看用户ID列表
      ,a.[KCKYHXMLB]--可查看用户姓名列表
      ,a.[ZSKQSJ]--展示开启时间
      ,a.[ZSGBSJ]--展示关闭时间
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
      ,d.SJJCJ as d_DFTJSJJ_SJJCJ--打分统计数据集表 数据集层级
      ,d.SJJPC as d_DFTJSJJ_SJJPC--打分统计数据集表 数据集频次
      ,d.SJJCJMC as d_DFTJSJJ_SJJCJMC--打分统计数据集表 数据集层级名称
      ,d.SJJPCMC as d_DFTJSJJ_SJJPCMC--打分统计数据集表 数据集频次名称
      ,d.SJSCZT as d_DFTJSJJ_SJSCZT--打分统计数据集表 数据生成状态
      ,d.DQPCBH as d_DFTJSJJ_DQPCBH--打分统计数据集表 当前批次编号

FROM dbo.EDU_OAXT_50_A54_DFTJJGST AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A50_DFTJSJJ AS d ON a.SJJID = d.ID /*数据集ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/
GO
