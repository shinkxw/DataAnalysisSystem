
--考核权限表
CREATE VIEW [dbo].[VIEW_EDU_ZYFZ_01_A05_KHQX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[FZMC]--分组名称
      ,a.[KHRID]--考核人ID
      ,a.[BKHRIDLB]--被考核人ID列表
      ,a.[BKHRMCLB]--被考核人名称列表
      ,a.[KHDJ]--考核等级
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
      ,'' as c_USER_PWD--应用系统用户表 密码
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

FROM dbo.EDU_ZYFZ_01_A05_KHQX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.KHRID = c.LOGINNAME /*考核人ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
