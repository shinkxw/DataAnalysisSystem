
--打分大类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A11_DFDL_DISP]
AS
SELECT a.[ID]--根节点ID
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[SFXYSH]--是否需要审核
      ,a.[SHFS]--审核方式
      ,b.SCHOOLID as b_DFJD_SCHOOLID--打分节点表 学校ID
      ,b.XMID as b_DFJD_XMID--打分节点表 项目ID
      ,b.FJDID as b_DFJD_FJDID--打分节点表 父节点ID
      ,b.SFDFX as b_DFJD_SFDFX--打分节点表 是否打分项
      ,b.JDMC as b_DFJD_JDMC--打分节点表 节点名称
      ,b.SFJCSJSZ as b_DFJD_SFJCSJSZ--打分节点表 是否继承上级设置
      ,b.DFDXJDBMJH as b_DFJD_DFDXJDBMJH--打分节点表 打分对象节点编码集合
      ,b.DFJSGXIDLB as b_DFJD_DFJSGXIDLB--打分节点表 打分角色关系ID列表
      ,b.SHJSGXIDLB as b_DFJD_SHJSGXIDLB--打分节点表 审核角色关系ID列表
      ,b.DFFSID as b_DFJD_DFFSID--打分节点表 打分方式ID
      ,b.DFDXCJ as b_DFJD_DFDXCJ--打分节点表 打分对象层级
      ,b.DFPC as b_DFJD_DFPC--打分节点表 打分频次
      ,b.DFZB as b_DFJD_DFZB--打分节点表 打分指标
      ,d.SCHOOLID as d_DFXM_SCHOOLID--打分项目表 学校ID
      ,d.XMMC as d_DFXM_XMMC--打分项目表 项目名称
      ,d.APPID as d_DFXM_APPID--打分项目表 所在应用ID

FROM dbo.EDU_OAXT_50_A11_DFDL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS b ON a.ID = b.ID /*根节点ID*/ AND a.SCHOOLID = b.SCHOOLID /*学校ID*/ AND a.XMID = b.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS d ON a.XMID = d.ID /*项目ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
