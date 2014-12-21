
--实验室申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_26_A03_SYSSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[SYSID]--实验室ID
      ,a.[LCSLID]--流程实例ID
      ,a.[SYQC]--实验器材
      ,a.[SYMC]--实验名称
      ,a.[KM]--科目
      ,a.[BJ]--班级
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[SQSJ]--申请时间
      ,a.[SQZT]--申请状态
      ,a.[SQRID]--申请人ID
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_SYSSJ_SCHOOLID--实验室数据表 学校
      ,c.MC as c_SYSSJ_MC--实验室数据表 名称
      ,c.DD as c_SYSSJ_DD--实验室数据表 地点
      ,c.FZR as c_SYSSJ_FZR--实验室数据表 负责人
      ,d.SCHOOLID as d_LCSL_SCHOOLID--流程实例表 学校
      ,d.LCMBID as d_LCSL_LCMBID--流程实例表 流程模板ID
      ,d.SQRID as d_LCSL_SQRID--流程实例表 申请人ID
      ,d.SPRID as d_LCSL_SPRID--流程实例表 审批人ID
      ,d.SQSJ as d_LCSL_SQSJ--流程实例表 申请时间
      ,d.DQBZID as d_LCSL_DQBZID--流程实例表 当前步骤ID
      ,d.DQBZZXZT as d_LCSL_DQBZZXZT--流程实例表 当前步骤执行状态
      ,d.YXQ as d_LCSL_YXQ--流程实例表 有效期
      ,d.SLZT as d_LCSL_SLZT--流程实例表 实例状态
      ,d.FJ as d_LCSL_FJ--流程实例表 附件
      ,d.BZ as d_LCSL_BZ--流程实例表 备注
      ,d.LXID as d_LCSL_LXID--流程实例表 类型ID
      ,d.LXMC as d_LCSL_LXMC--流程实例表 类型名称
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

FROM dbo.EDU_OAXT_26_A03_SYSSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_26_A01_SYSSJ AS c ON a.SYSID = c.ID /*实验室ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS d ON a.LCSLID = d.ID /*流程实例ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SQRID = e.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
