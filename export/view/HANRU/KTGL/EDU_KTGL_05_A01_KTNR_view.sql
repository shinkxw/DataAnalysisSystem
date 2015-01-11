
--课题内容
CREATE VIEW [dbo].[VIEW_EDU_KTGL_05_A01_KTNR_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[KTJBID]--课题级别ID
      ,a.[KTMC]--课题名称
      ,a.[KTFZRID]--课题负责人
      ,a.[KTFZRQQ]--课题负责人QQ
      ,a.[KTFZRDH]--课题负责人电话
      ,a.[CYRYMD]--参与人员名单
      ,a.[YJFA]--研究方案
      ,a.[YJCG]--研究成果
      ,a.[JTBG]--结题报告
      ,c.SCHOOLID as c_KTJB_SCHOOLID--课题级别 学校
      ,c.JBMC as c_KTJB_JBMC--课题级别 级别名称
      ,d.SCHOOLID as d_USER_SCHOOLID--应用系统用户表 学校ID
      ,d.APPID as d_USER_APPID--应用系统用户表 应用ID
      ,'' as d_USER_PWD--应用系统用户表 密码
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

FROM dbo.EDU_KTGL_05_A01_KTNR AS a LEFT OUTER JOIN
      dbo.EDU_KTGL_01_A03_KTJB AS c ON a.KTJBID = c.ID /*课题级别ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.KTFZRID = d.LOGINNAME /*课题负责人*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
