
--流程审核记录表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A06_LCSHJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCMBMC]--流程模板名称
      ,a.[LCSLID]--流程实例ID
      ,a.[BZMC]--步骤名称
      ,a.[BZID]--步骤ID
      ,a.[LCMBLXID]--流程模板类型ID
      ,a.[SQRID]--申请人ID
      ,a.[SPRID]--审批人ID
      ,a.[SHZT]--审核状态
      ,a.[TJSJ]--添加时间
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_LCSL_SCHOOLID--流程实例表 学校
      ,c.LCMBID as c_LCSL_LCMBID--流程实例表 流程模板ID
      ,c.SQRID as c_LCSL_SQRID--流程实例表 申请人ID
      ,c.SPRID as c_LCSL_SPRID--流程实例表 审批人ID
      ,c.SQSJ as c_LCSL_SQSJ--流程实例表 申请时间
      ,c.DQBZID as c_LCSL_DQBZID--流程实例表 当前步骤ID
      ,c.DQBZZXZT as c_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,c.YXQ as c_LCSL_YXQ--流程实例表 有效期
      ,c.SLZT as c_LCSL_SLZT--流程实例表 实例状态
      ,c.FJ as c_LCSL_FJ--流程实例表 附件
      ,c.BZ as c_LCSL_BZ--流程实例表 备注
      ,c.LXID as c_LCSL_LXID--流程实例表 类型ID
      ,c.LXMC as c_LCSL_LXMC--流程实例表 类型名称
      ,d.SCHOOLID as d_LCBZ_SCHOOLID--流程步骤表 学校
      ,d.BZMC as d_LCBZ_BZMC--流程步骤表 步骤名称
      ,d.LCMBID as d_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,d.SPRIDLB as d_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,d.SPRMCLB as d_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,d.SYBZID as d_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,d.XYBZID as d_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,d.BZ as d_LCBZ_BZ--流程步骤表 备注
      ,e.LXMC as e_LCMBLX_LXMC--流程模板类型表 类型名称
      ,e.BZ as e_LCMBLX_BZ--流程模板类型表 备注
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.PWD as f_USER_PWD--应用系统用户表 密码
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
      ,g.SCHOOLID as g_USER_SCHOOLID--应用系统用户表 学校ID
      ,g.APPID as g_USER_APPID--应用系统用户表 应用ID
      ,g.PWD as g_USER_PWD--应用系统用户表 密码
      ,g.STATUS as g_USER_STATUS--应用系统用户表 用户状态
      ,g.USERTYPE as g_USER_USERTYPE--应用系统用户表 用户类别
      ,g.USERID as g_USER_USERID--应用系统用户表 用户ID
      ,g.ROLEIDLst as g_USER_ROLEIDLst--应用系统用户表 用户角色
      ,g.XM as g_USER_XM--应用系统用户表 姓名
      ,g.XB as g_USER_XB--应用系统用户表 性别
      ,g.QQ as g_USER_QQ--应用系统用户表 QQ
      ,g.DZYJ as g_USER_DZYJ--应用系统用户表 电子邮件
      ,g.LXDH as g_USER_LXDH--应用系统用户表 联系电话
      ,g.ZJDLSJ as g_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,g.DLCGCS as g_USER_DLCGCS--应用系统用户表 登录成功次数
      ,g.YHCJSJ as g_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,g.YHRY as g_USER_YHRY--应用系统用户表 用户荣誉
      ,g.YHJF as g_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_OAXT_20_A06_LCSHJL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS d ON a.BZID = d.ID /*步骤ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A01_LCMBLX AS e ON a.LCMBLXID = e.ID /*流程模板类型ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.SQRID = f.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS g ON a.SPRID = g.LOGINNAME /*审批人ID*/ AND a.SCHOOLID = g.SCHOOLID /*学校*/
GO
