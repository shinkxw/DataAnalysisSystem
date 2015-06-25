
--打分大类表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A11_DFDL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[GJDID]--根节点ID
      ,a.[DFDXZID]--打分对象组ID
      ,a.[SFXYSH]--是否需要审核
      ,a.[SHFS]--审核方式
      ,a.[SFKQ]--是否开启
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
      ,d.DFJSLBIDLB as d_DFJD_DFJSLBIDLB--打分节点表 打分角色类别ID列表
      ,d.SHJSLBIDLB as d_DFJD_SHJSLBIDLB--打分节点表 审核角色类别ID列表
      ,d.DFFSID as d_DFJD_DFFSID--打分节点表 打分方式ID
      ,d.DFDXCJ as d_DFJD_DFDXCJ--打分节点表 打分对象层级
      ,d.DFPC as d_DFJD_DFPC--打分节点表 打分频次
      ,d.DFZB as d_DFJD_DFZB--打分节点表 打分指标
      ,d.DFDXJDMCLB as d_DFJD_DFDXJDMCLB--打分节点表 打分对象节点名称列表
      ,d.DFJSLBMCLB as d_DFJD_DFJSLBMCLB--打分节点表 打分角色类别名称列表
      ,d.SHJSLBMCLB as d_DFJD_SHJSLBMCLB--打分节点表 审核角色类别名称列表
      ,d.DFDXCJMC as d_DFJD_DFDXCJMC--打分节点表 打分对象层级名称
      ,d.CKJSLBIDLB as d_DFJD_CKJSLBIDLB--打分节点表 查看角色类别ID列表
      ,d.CKJSLBMCLB as d_DFJD_CKJSLBMCLB--打分节点表 查看角色类别名称列表
      ,d.SFPLDF as d_DFJD_SFPLDF--打分节点表 是否批量打分
      ,d.XQKBFDW as d_DFJD_XQKBFDW--打分节点表 向前可补分单位
      ,d.XHYDFDW as d_DFJD_XHYDFDW--打分节点表 向后预打分单位

FROM dbo.EDU_OAXT_50_A11_DFDL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.GJDID = d.ID /*根节点ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/
GO
