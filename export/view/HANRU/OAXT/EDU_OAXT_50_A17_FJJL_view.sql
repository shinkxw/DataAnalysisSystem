
--附加记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A17_FJJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[DFJDID]--打分节点ID
      ,a.[DFJGID]--打分结果ID
      ,a.[FJZDID]--附加字段ID
      ,a.[FJZ]--附加值
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DFJD_SCHOOLID--打分节点表 学校ID
      ,d.XMID as d_DFJD_XMID--打分节点表 项目ID
      ,d.DLID as d_DFJD_DLID--打分节点表 大类ID
      ,d.FJDID as d_DFJD_FJDID--打分节点表 父节点ID
      ,d.SFDFX as d_DFJD_SFDFX--打分节点表 是否打分项
      ,d.JDMC as d_DFJD_JDMC--打分节点表 节点名称
      ,d.SFJCSJSZ as d_DFJD_SFJCSJSZ--打分节点表 是否继承上级设置
      ,d.DFDXJDBMJH as d_DFJD_DFDXJDBMJH--打分节点表 打分对象节点编码集合
      ,d.DFJSGXIDLB as d_DFJD_DFJSGXIDLB--打分节点表 打分角色关系ID列表
      ,d.SHJSGXIDLB as d_DFJD_SHJSGXIDLB--打分节点表 审核角色关系ID列表
      ,d.DFFSID as d_DFJD_DFFSID--打分节点表 打分方式ID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--打分节点表 打分对象层级
      ,d.DFPC as d_DFJD_DFPC--打分节点表 打分频次
      ,d.DFZB as d_DFJD_DFZB--打分节点表 打分指标
      ,e.SCHOOLID as e_DFJG_SCHOOLID--打分结果表 学校ID
      ,e.XMID as e_DFJG_XMID--打分结果表 项目ID
      ,e.DFJDID as e_DFJG_DFJDID--打分结果表 打分节点ID
      ,e.DFXXID as e_DFJG_DFXXID--打分结果表 打分选项ID
      ,e.WBZ as e_DFJG_WBZ--打分结果表 文本值
      ,e.FZ as e_DFJG_FZ--打分结果表 分值
      ,e.DFYHID as e_DFJG_DFYHID--打分结果表 打分用户ID
      ,e.DFSJ as e_DFJG_DFSJ--打分结果表 打分时间
      ,f.SCHOOLID as f_FJZD_SCHOOLID--附加字段表 学校ID
      ,f.XMID as f_FJZD_XMID--附加字段表 项目ID
      ,f.DFJDID as f_FJZD_DFJDID--附加字段表 打分节点ID
      ,f.ZDMC as f_FJZD_ZDMC--附加字段表 字段名称
      ,f.MRZ as f_FJZD_MRZ--附加字段表 默认值
      ,f.PLSX as f_FJZD_PLSX--附加字段表 排列顺序

FROM dbo.EDU_OAXT_50_A17_FJJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.DFJDID = d.ID /*打分节点ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A15_DFJG AS e ON a.DFJGID = e.ID /*打分结果ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.XMID = e.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A16_FJZD AS f ON a.FJZDID = f.ID /*附加字段ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ AND a.XMID = f.XMID /*项目ID*/
GO
