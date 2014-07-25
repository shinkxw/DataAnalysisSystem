
--返修单信息表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_10_FXDXX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[FXDH]--返修单号
      ,a.[CJYHID]--创建用户
      ,a.[CJSJ]--创建时间
      ,a.[FXSJ]--返修时间
      ,a.[QRSJ]--确认时间
      ,a.[ZT]--状态
      ,b.SCHOOLID as b_USER_SCHOOLID--应用系统用户表 学校ID
      ,b.APPID as b_USER_APPID--应用系统用户表 应用ID
      ,b.PWD as b_USER_PWD--应用系统用户表 密码
      ,b.STATUS as b_USER_STATUS--应用系统用户表 用户状态
      ,b.USERTYPE as b_USER_USERTYPE--应用系统用户表 用户类别
      ,b.USERID as b_USER_USERID--应用系统用户表 用户ID
      ,b.ROLEIDLst as b_USER_ROLEIDLst--应用系统用户表 用户角色
      ,b.XM as b_USER_XM--应用系统用户表 姓名
      ,b.XB as b_USER_XB--应用系统用户表 性别
      ,b.QQ as b_USER_QQ--应用系统用户表 QQ
      ,b.DZYJ as b_USER_DZYJ--应用系统用户表 电子邮件
      ,b.LXDH as b_USER_LXDH--应用系统用户表 联系电话
      ,b.ZJDLSJ as b_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,b.DLCGCS as b_USER_DLCGCS--应用系统用户表 登录成功次数
      ,b.YHCJSJ as b_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,b.YHRY as b_USER_YHRY--应用系统用户表 用户荣誉
      ,b.YHJF as b_USER_YHJF--应用系统用户表 用户积分
      ,b.BMID as b_USER_BMID--应用系统用户表 部门ID

FROM dbo.EDU_ZDGL_10_FXDXX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS b ON a.CJYHID = b.LOGINNAME /*创建用户*/
GO
