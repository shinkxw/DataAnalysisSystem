
--打分节点表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A12_DFJD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[DLID]--大类ID
      ,a.[FJDID]--父节点ID
      ,a.[SFDFX]--是否打分项
      ,a.[JDMC]--节点名称
      ,a.[SFJCSJSZ]--是否继承上级设置
      ,a.[DFDXJDBMJH]--打分对象节点编码集合
      ,a.[DFJSLBIDLB]--打分角色类别ID列表
      ,a.[SHJSLBIDLB]--审核角色类别ID列表
      ,a.[DFFSID]--打分方式ID
      ,a.[DFDXCJ]--打分对象层级
      ,a.[DFPC]--打分频次
      ,a.[DFZB]--打分指标
      ,a.[DFDXJDMCLB]--打分对象节点名称列表
      ,a.[DFJSLBMCLB]--打分角色类别名称列表
      ,a.[SHJSLBMCLB]--审核角色类别名称列表
      ,a.[DFDXCJMC]--打分对象层级名称
      ,a.[CKJSLBIDLB]--查看角色类别ID列表
      ,a.[CKJSLBMCLB]--查看角色类别名称列表
      ,a.[SFPLDF]--是否批量打分
      ,a.[XQKBFDW]--向前可补分单位
      ,a.[XHYDFDW]--向后预打分单位
      ,c.SCHOOLID as c_DFXM_SCHOOLID--打分项目表 学校ID
      ,c.XMMC as c_DFXM_XMMC--打分项目表 项目名称
      ,c.APPID as c_DFXM_APPID--打分项目表 所在应用ID
      ,d.SCHOOLID as d_DFDL_SCHOOLID--打分大类表 学校ID
      ,d.XMID as d_DFDL_XMID--打分大类表 项目ID
      ,d.GJDID as d_DFDL_GJDID--打分大类表 根节点ID
      ,d.DFDXZID as d_DFDL_DFDXZID--打分大类表 打分对象组ID
      ,d.SFXYSH as d_DFDL_SFXYSH--打分大类表 是否需要审核
      ,d.SHFS as d_DFDL_SHFS--打分大类表 审核方式
      ,d.SFKQ as d_DFDL_SFKQ--打分大类表 是否开启
      ,e.SCHOOLID as e_DFJD_SCHOOLID--打分节点表 学校ID
      ,e.XMID as e_DFJD_XMID--打分节点表 项目ID
      ,e.DLID as e_DFJD_DLID--打分节点表 大类ID
      ,e.FJDID as e_DFJD_FJDID--打分节点表 父节点ID
      ,e.SFDFX as e_DFJD_SFDFX--打分节点表 是否打分项
      ,e.JDMC as e_DFJD_JDMC--打分节点表 节点名称
      ,e.SFJCSJSZ as e_DFJD_SFJCSJSZ--打分节点表 是否继承上级设置
      ,e.DFDXJDBMJH as e_DFJD_DFDXJDBMJH--打分节点表 打分对象节点编码集合
      ,e.DFJSLBIDLB as e_DFJD_DFJSLBIDLB--打分节点表 打分角色类别ID列表
      ,e.SHJSLBIDLB as e_DFJD_SHJSLBIDLB--打分节点表 审核角色类别ID列表
      ,e.DFFSID as e_DFJD_DFFSID--打分节点表 打分方式ID
      ,e.DFDXCJ as e_DFJD_DFDXCJ--打分节点表 打分对象层级
      ,e.DFPC as e_DFJD_DFPC--打分节点表 打分频次
      ,e.DFZB as e_DFJD_DFZB--打分节点表 打分指标
      ,e.DFDXJDMCLB as e_DFJD_DFDXJDMCLB--打分节点表 打分对象节点名称列表
      ,e.DFJSLBMCLB as e_DFJD_DFJSLBMCLB--打分节点表 打分角色类别名称列表
      ,e.SHJSLBMCLB as e_DFJD_SHJSLBMCLB--打分节点表 审核角色类别名称列表
      ,e.DFDXCJMC as e_DFJD_DFDXCJMC--打分节点表 打分对象层级名称
      ,e.CKJSLBIDLB as e_DFJD_CKJSLBIDLB--打分节点表 查看角色类别ID列表
      ,e.CKJSLBMCLB as e_DFJD_CKJSLBMCLB--打分节点表 查看角色类别名称列表
      ,e.SFPLDF as e_DFJD_SFPLDF--打分节点表 是否批量打分
      ,e.XQKBFDW as e_DFJD_XQKBFDW--打分节点表 向前可补分单位
      ,e.XHYDFDW as e_DFJD_XHYDFDW--打分节点表 向后预打分单位
      ,f.SCHOOLID as f_DFFS_SCHOOLID--打分方式表 学校ID
      ,f.XMID as f_DFFS_XMID--打分方式表 项目ID
      ,f.DFFSMC as f_DFFS_DFFSMC--打分方式表 打分方式名称
      ,f.DFLX as f_DFFS_DFLX--打分方式表 打分类型
      ,f.ZDZ as f_DFFS_ZDZ--打分方式表 最大值
      ,f.ZXZ as f_DFFS_ZXZ--打分方式表 最小值
      ,f.MRZ as f_DFFS_MRZ--打分方式表 默认值

FROM dbo.EDU_OAXT_50_A12_DFJD AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A11_DFDL AS d ON a.DLID = d.ID /*大类ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS e ON a.FJDID = e.ID /*父节点ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.XMID = e.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A13_DFFS AS f ON a.DFFSID = f.ID /*打分方式ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ AND a.XMID = f.XMID /*项目ID*/
GO
