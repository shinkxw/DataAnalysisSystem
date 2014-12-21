
--新闻报送申请
CREATE VIEW [dbo].[VIEW_EDU_OAXT_38_A02_XWBSSQ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[LCSLID]--流程实例ID
      ,a.[SQSJ]--申请时间
      ,a.[SQRID]--申请人ID
      ,a.[SQZT]--申请状态
      ,a.[BZ]--备注
      ,a.[BSR]--报送人
      ,a.[SSBM]--所属部门
      ,a.[WZBT]--文章标题
      ,a.[NR]--内容
      ,a.[WZLBID]--文章类别ID
      ,a.[ZS]--字数
      ,a.[SFLY]--是否录用
      ,a.[LYMT]--录用媒体
      ,a.[JLJE]--奖励金额（元）
      ,a.[FBSJ]--发布时间
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
      ,e.SCHOOLID as e_XWBSWZLB_SCHOOLID--新闻报送文章类别 学校ID
      ,e.LBMC as e_XWBSWZLB_LBMC--新闻报送文章类别 类别名称
      ,f.MC as f_SFBZ_MC--是否标志代码表 名称

FROM dbo.EDU_OAXT_38_A02_XWBSSQ AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_20_A05_LCSL AS c ON a.LCSLID = c.ID /*流程实例ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.SQRID = d.LOGINNAME /*申请人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_38_A01_XWBSWZLB AS e ON a.WZLBID = e.ID /*文章类别ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS f ON a.SFLY = f.DM /*是否录用*/
GO
