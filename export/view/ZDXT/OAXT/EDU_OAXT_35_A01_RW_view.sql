
--任务表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_35_A01_RW_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[RWBT]--任务标题
      ,a.[JSYHIDLB]--接收用户ID列表
      ,a.[JSYHXMLB]--接收用户姓名列表
      ,a.[JZRQ]--截止日期
      ,a.[NR]--内容
      ,a.[FBRID]--发布人ID
      ,a.[FBRXM]--发布人姓名
      ,a.[FBBMMC]--发布部门名称
      ,a.[FBSJ]--发布时间
      ,a.[RWZT]--任务状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,c.PWD as c_USER_PWD--应用系统用户表 密码
      ,c.STATUS as c_USER_STATUS--应用系统用户表 用户状态
      ,c.USERTYPE as c_USER_USERTYPE--应用系统用户表 用户类别
      ,c.USERID as c_USER_USERID--应用系统用户表 用户ID
      ,c.ROLEIDLst as c_USER_ROLEIDLst--应用系统用户表 用户角色
      ,c.XM as c_USER_XM--应用系统用户表 姓名
      ,c.XB as c_USER_XB--应用系统用户表 性别
      ,c.QQ as c_USER_QQ--应用系统用户表 QQ
      ,c.DZYJ as c_USER_DZYJ--应用系统用户表 电子邮件
      ,c.LXDH as c_USER_LXDH--应用系统用户表 联系电话
      ,c.ZJDLSJ as c_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,c.DLCGCS as c_USER_DLCGCS--应用系统用户表 登录成功次数
      ,c.YHCJSJ as c_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,c.YHRY as c_USER_YHRY--应用系统用户表 用户荣誉
      ,c.YHJF as c_USER_YHJF--应用系统用户表 用户积分
      ,c.BMID as c_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_OAXT_35_A01_RW AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.FBRID = c.LOGINNAME /*发布人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
