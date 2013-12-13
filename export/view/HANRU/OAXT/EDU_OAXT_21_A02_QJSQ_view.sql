
--请假申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_21_A02_QJSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCSLID]--流程实例ID
      ,a.[QJLXID]--请假类型ID
      ,a.[QJYY]--请假原因
      ,a.[KSSJ]--开始时间
      ,a.[JSSJ]--结束时间
      ,a.[QJTS]--请假天数
      ,a.[SQSJ]--申请时间
      ,a.[SQZT]--申请状态
      ,a.[SQRID]--申请人ID
      ,a.[BZ]--备注
      ,a.[BJ]--补假
      ,a.[XJ]--销假
      ,a.[XJRID]--销假人ID
      ,a.[XJSJ]--销假时间
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
      ,d.SCHOOLID as d_QJLX_SCHOOLID--请假类型表 学校
      ,d.LXMC as d_QJLX_LXMC--请假类型表 类型名称
      ,d.BZ as d_QJLX_BZ--请假类型表 备注
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
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

FROM dbo.EDU_OAXT_21_A02_QJSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_21_A01_QJLX AS d ON a.QJLXID = d.ID /*请假类型ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SQRID = e.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.XJRID = f.LOGINNAME /*销假人ID*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
