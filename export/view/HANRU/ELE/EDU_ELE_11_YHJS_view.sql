
--用户角色表
CREATE VIEW [dbo].[VIEW_EDU_ELE_11_YHJS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[YHID]--用户ID
      ,a.[DXZID]--对象组ID
      ,a.[JSID]--角色ID
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
      ,d.SCHOOLID as d_DXZ_SCHOOLID--对象组表 学校ID
      ,d.DXZMC as d_DXZ_DXZMC--对象组表 对象组名称
      ,d.DXIDLB as d_DXZ_DXIDLB--对象组表 对象ID列表
      ,d.DXMCLB as d_DXZ_DXMCLB--对象组表 对象名称列表
      ,e.SCHOOLID as e_DXZJS_SCHOOLID--对象组角色表 学校ID
      ,e.DXZID as e_DXZJS_DXZID--对象组角色表 对象组ID
      ,e.JSLBID as e_DXZJS_JSLBID--对象组角色表 角色类别ID
      ,e.JSMC as e_DXZJS_JSMC--对象组角色表 角色名称
      ,e.DXZJDBMJH as e_DXZJS_DXZJDBMJH--对象组角色表 对象组节点编码集合
      ,e.DXZJDMCLB as e_DXZJS_DXZJDMCLB--对象组角色表 对象组节点名称列表

FROM dbo.EDU_ELE_11_YHJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS d ON a.DXZID = d.ID /*对象组ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_11_DXZJS AS e ON a.JSID = e.ID /*角色ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/
GO
