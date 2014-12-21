
--流程实例表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_20_A05_LCSL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCMBID]--流程模板ID
      ,a.[SQRID]--申请人ID
      ,a.[SPRID]--审批人ID
      ,a.[SQSJ]--申请时间
      ,a.[DQBZID]--当前步骤ID
      ,a.[DQBZZXZT]--当前步骤执行状态
      ,a.[YXQ]--有效期
      ,a.[SLZT]--实例状态
      ,a.[FJ]--附件
      ,a.[BZ]--备注
      ,a.[LXID]--类型ID
      ,a.[LXMC]--类型名称
      ,c.SCHOOLID as c_LCMB_SCHOOLID--流程模板表 学校
      ,c.MBLXID as c_LCMB_MBLXID--流程模板表 模板类型ID
      ,c.MBMC as c_LCMB_MBMC--流程模板表 模板名称
      ,c.BDID as c_LCMB_BDID--流程模板表 表单ID
      ,c.QSBZID as c_LCMB_QSBZID--流程模板表 起始步骤ID
      ,c.JSBZID as c_LCMB_JSBZID--流程模板表 结束步骤ID
      ,c.TJSJ as c_LCMB_TJSJ--流程模板表 添加时间
      ,c.BZ as c_LCMB_BZ--流程模板表 备注
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.STATUS as d_USER_STATUS--应用系统用户表 用户状态
      ,d.USERTYPE as d_USER_USERTYPE--应用系统用户表 用户类别
      ,d.USERID as d_USER_USERID--应用系统用户表 用户ID
      ,d.ROLEIDLst as d_USER_ROLEIDLst--应用系统用户表 用户角色
      ,d.XM as d_USER_XM--应用系统用户表 姓名
      ,d.XB as d_USER_XB--应用系统用户表 性别
      ,d.QQ as d_USER_QQ--应用系统用户表 QQ
      ,d.DZYJ as d_USER_DZYJ--应用系统用户表 电子邮件
      ,d.LXDH as d_USER_LXDH--应用系统用户表 联系电话
      ,d.ZJDLSJ as d_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,d.DLCGCS as d_USER_DLCGCS--应用系统用户表 登录成功次数
      ,d.YHCJSJ as d_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,d.YHRY as d_USER_YHRY--应用系统用户表 用户荣誉
      ,d.YHJF as d_USER_YHJF--应用系统用户表 用户积分
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.STATUS as e_USER_STATUS--应用系统用户表 用户状态
      ,e.USERTYPE as e_USER_USERTYPE--应用系统用户表 用户类别
      ,e.USERID as e_USER_USERID--应用系统用户表 用户ID
      ,e.ROLEIDLst as e_USER_ROLEIDLst--应用系统用户表 用户角色
      ,e.XM as e_USER_XM--应用系统用户表 姓名
      ,e.XB as e_USER_XB--应用系统用户表 性别
      ,e.QQ as e_USER_QQ--应用系统用户表 QQ
      ,e.DZYJ as e_USER_DZYJ--应用系统用户表 电子邮件
      ,e.LXDH as e_USER_LXDH--应用系统用户表 联系电话
      ,e.ZJDLSJ as e_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,e.DLCGCS as e_USER_DLCGCS--应用系统用户表 登录成功次数
      ,e.YHCJSJ as e_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,e.YHRY as e_USER_YHRY--应用系统用户表 用户荣誉
      ,e.YHJF as e_USER_YHJF--应用系统用户表 用户积分
      ,f.SCHOOLID as f_LCBZ_SCHOOLID--流程步骤表 学校
      ,f.BZMC as f_LCBZ_BZMC--流程步骤表 步骤名称
      ,f.LCMBID as f_LCBZ_LCMBID--流程步骤表 流程模板ID
      ,f.SPRIDLB as f_LCBZ_SPRIDLB--流程步骤表 审批人ID列表
      ,f.SPRMCLB as f_LCBZ_SPRMCLB--流程步骤表 审批人名称列表
      ,f.SYBZID as f_LCBZ_SYBZID--流程步骤表 上一步骤ID
      ,f.XYBZID as f_LCBZ_XYBZID--流程步骤表 下一步骤ID
      ,f.BZ as f_LCBZ_BZ--流程步骤表 备注

FROM dbo.EDU_OAXT_20_A05_LCSL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A03_LCMB AS c ON a.LCMBID = c.ID /*流程模板ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SPRID = e.LOGINNAME /*审批人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A04_LCBZ AS f ON a.DQBZID = f.ID /*当前步骤ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
