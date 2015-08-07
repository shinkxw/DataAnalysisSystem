
--打分结果表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A15_DFJG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[DFDLID]--打分大类ID
      ,a.[DFJDID]--打分节点ID
      ,a.[DFPCID]--打分批次ID
      ,a.[XQID]--学期ID
      ,a.[BDFDXBM]--被打分对象编码
      ,a.[BDFDXMC]--被打分对象名称
      ,a.[DFXXID]--打分选项ID
      ,a.[WBZ]--文本值
      ,a.[FZ]--分值
      ,a.[DFYHID]--打分用户ID
      ,a.[CKSJ]--参考时间
      ,a.[TJSJ]--添加时间
      ,a.[SHZT]--审核状态
      ,a.[SHJLID]--审核记录ID
      ,a.[CKSJMC]--参考时间名称
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
      ,f.SCHOOLID as f_DFPC_SCHOOLID--打分批次表 学校ID
      ,f.XMID as f_DFPC_XMID--打分批次表 项目ID
      ,f.DFDLID as f_DFPC_DFDLID--打分批次表 打分大类ID
      ,f.DFJDID as f_DFPC_DFJDID--打分批次表 打分节点ID
      ,f.XQID as f_DFPC_XQID--打分批次表 学期ID
      ,f.DFPCMC as f_DFPC_DFPCMC--打分批次表 打分批次名称
      ,f.CKSJ as f_DFPC_CKSJ--打分批次表 参考时间
      ,f.TJSJ as f_DFPC_TJSJ--打分批次表 添加时间
      ,g.SCHOOLID as g_DFXX_SCHOOLID--打分选项表 学校ID
      ,g.XMID as g_DFXX_XMID--打分选项表 项目ID
      ,g.DFFSID as g_DFXX_DFFSID--打分选项表 打分方式ID
      ,g.XXMC as g_DFXX_XXMC--打分选项表 选项名称
      ,g.XXFZ as g_DFXX_XXFZ--打分选项表 选项分值
      ,g.PLSX as g_DFXX_PLSX--打分选项表 排列顺序
      ,h.SCHOOLID as h_USER_SCHOOLID--应用系统用户表 学校ID
      ,h.APPID as h_USER_APPID--应用系统用户表 应用ID
      ,'' as h_USER_PWD--应用系统用户表 密码
      ,h.STATUS as h_USER_STATUS--应用系统用户表 用户状态
      ,h.USERTYPE as h_USER_USERTYPE--应用系统用户表 用户类别
      ,h.USERID as h_USER_USERID--应用系统用户表 用户ID
      ,h.ROLEIDLst as h_USER_ROLEIDLst--应用系统用户表 用户角色
      ,h.XM as h_USER_XM--应用系统用户表 姓名
      ,h.XB as h_USER_XB--应用系统用户表 性别
      ,h.QQ as h_USER_QQ--应用系统用户表 QQ
      ,h.DZYJ as h_USER_DZYJ--应用系统用户表 电子邮件
      ,h.LXDH as h_USER_LXDH--应用系统用户表 联系电话
      ,h.ZJDLSJ as h_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,h.DLCGCS as h_USER_DLCGCS--应用系统用户表 登录成功次数
      ,h.YHCJSJ as h_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,h.YHRY as h_USER_YHRY--应用系统用户表 用户荣誉
      ,h.YHJF as h_USER_YHJF--应用系统用户表 用户积分
      ,i.SCHOOLID as i_SHJL_SCHOOLID--审核记录表 学校ID
      ,i.XMID as i_SHJL_XMID--审核记录表 项目ID
      ,i.SHJDID as i_SHJL_SHJDID--审核记录表 审核节点ID
      ,i.DFJGID as i_SHJL_DFJGID--审核记录表 打分结果ID
      ,i.SHJG as i_SHJL_SHJG--审核记录表 审核结果
      ,i.SHYHID as i_SHJL_SHYHID--审核记录表 审核用户ID
      ,i.SHSJ as i_SHJL_SHSJ--审核记录表 审核时间
      ,i.BZ as i_SHJL_BZ--审核记录表 备注

FROM dbo.EDU_OAXT_50_A15_DFJG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A11_DFDL AS d ON a.DFDLID = d.ID /*打分大类ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS e ON a.DFJDID = e.ID /*打分节点ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.XMID = e.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A19_DFPC AS f ON a.DFPCID = f.ID /*打分批次ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/ AND a.XMID = f.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A14_DFXX AS g ON a.DFXXID = g.ID /*打分选项ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校ID*/ AND a.XMID = g.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS h ON a.DFYHID = h.LOGINNAME /*打分用户ID*/ AND a.SCHOOLID = h.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A18_SHJL AS i ON a.SHJLID = i.ID /*审核记录ID*/ AND a.SCHOOLID = i.SCHOOLID /*学校ID*/ AND a.XMID = i.XMID /*项目ID*/
GO
