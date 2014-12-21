
--教师点菜表
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_03_A03_JSDC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[DCSJ]--点菜时间
      ,a.[YHID]--用户ID
      ,a.[CPID]--菜品ID
      ,a.[JG]--价格
      ,a.[DGSL]--订购数量
      ,a.[ZT]--状态
      ,c.SCHOOLID as c_USER_SCHOOLID--应用系统用户表 学校ID
      ,c.APPID as c_USER_APPID--应用系统用户表 应用ID
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
      ,d.SCHOOLID as d_CPGL_SCHOOLID--菜品管理表 学校ID
      ,d.SJ as d_CPGL_SJ--菜品管理表 时间
      ,d.CPMC as d_CPGL_CPMC--菜品管理表 菜品名称
      ,d.CPLX as d_CPGL_CPLX--菜品管理表 菜品类型
      ,d.ZL as d_CPGL_ZL--菜品管理表 主料
      ,d.CKJ as d_CPGL_CKJ--菜品管理表 参考价
      ,d.JS as d_CPGL_JS--菜品管理表 介绍

FROM dbo.EDU_ZWXT_03_A03_JSDC AS a LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.YHID = c.LOGINNAME /*用户ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZWXT_03_A02_CPGL AS d ON a.CPID = d.ID /*菜品ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
