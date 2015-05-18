
--审核记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_50_A18_SHJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XMID]--项目ID
      ,a.[SHJDID]--审核节点ID
      ,a.[DFJGID]--打分结果ID
      ,a.[SHJG]--审核结果
      ,a.[SHYHID]--审核用户ID
      ,a.[SHSJ]--审核时间
      ,a.[BZ]--备注
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
      ,e.SCHOOLID as e_DFJG_SCHOOLID--打分结果表 学校ID
      ,e.XMID as e_DFJG_XMID--打分结果表 项目ID
      ,e.DFDLID as e_DFJG_DFDLID--打分结果表 打分大类ID
      ,e.DFJDID as e_DFJG_DFJDID--打分结果表 打分节点ID
      ,e.DFPCID as e_DFJG_DFPCID--打分结果表 打分批次ID
      ,e.XQID as e_DFJG_XQID--打分结果表 学期ID
      ,e.BDFDXBM as e_DFJG_BDFDXBM--打分结果表 被打分对象编码
      ,e.BDFDXMC as e_DFJG_BDFDXMC--打分结果表 被打分对象名称
      ,e.DFXXID as e_DFJG_DFXXID--打分结果表 打分选项ID
      ,e.WBZ as e_DFJG_WBZ--打分结果表 文本值
      ,e.FZ as e_DFJG_FZ--打分结果表 分值
      ,e.DFYHID as e_DFJG_DFYHID--打分结果表 打分用户ID
      ,e.CKSJ as e_DFJG_CKSJ--打分结果表 参考时间
      ,e.TJSJ as e_DFJG_TJSJ--打分结果表 添加时间
      ,e.SHZT as e_DFJG_SHZT--打分结果表 审核状态
      ,e.SHJLID as e_DFJG_SHJLID--打分结果表 审核记录ID
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,'' as f_USER_PWD--应用系统用户表 密码
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,f.YHRY as f_USER_YHRY--应用系统用户表 用户荣誉
      ,f.YHJF as f_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_OAXT_50_A18_SHJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A01_DFXM AS c ON a.XMID = c.ID /*项目ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A12_DFJD AS d ON a.SHJDID = d.ID /*审核节点ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ AND a.XMID = d.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_50_A15_DFJG AS e ON a.DFJGID = e.ID /*打分结果ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ AND a.XMID = e.XMID /*项目ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SHYHID = f.LOGINNAME /*审核用户ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校ID*/
GO
