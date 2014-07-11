
--公文申请表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_23_A01_GWSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[LCSLID]--流程实例ID
      ,a.[GWBT]--公文标题
      ,a.[GWNR]--公文内容
      ,a.[FJ]--附件
      ,a.[SJRIDLB]--收件人ID列表
      ,a.[SJRXMLB]--收件人姓名列表
      ,a.[YDQK]--阅读情况
      ,a.[SQSJ]--申请时间
      ,a.[SQRID]--申请人ID
      ,a.[SQZT]--申请状态
      ,a.[BZ]--备注
      ,a.[SWDW]--收文单位
      ,a.[YGDCS]--已归档次数
      ,a.[WJBH]--文件编号
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
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,d.PWD as d_USER_PWD--应用系统用户表 密码
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
      ,d.BMID as d_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_23_A01_GWSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
