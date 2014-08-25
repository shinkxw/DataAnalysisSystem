
--送修单表
CREATE VIEW [dbo].[VIEW_EDU_ZDGL_22_SXD_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SXDWID]--送修单位ID
      ,a.[SXDMC]--送修单名称
      ,a.[SXDH]--送修单号
      ,a.[SXRQ]--送修日期
      ,a.[GSXX]--公司信息
      ,a.[LXRXX]--联系人信息
      ,a.[LXDHXX]--联系电话信息
      ,a.[DZXX]--地址信息
      ,a.[QZXX]--签字信息
      ,a.[TJYH]--添加用户
      ,a.[TJSJ]--添加时间
      ,b.QHM as b_SXDW_QHM--送修单位信息表 区划码
      ,b.SSSJQHM as b_SXDW_SSSJQHM--送修单位信息表 所属市级区划码
      ,b.DWMC as b_SXDW_DWMC--送修单位信息表 单位名称
      ,b.DWMCPY as b_SXDW_DWMCPY--送修单位信息表 单位名称拼音
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

FROM dbo.EDU_ZDGL_22_SXD AS a LEFT OUTER JOIN
      dbo.EDU_ZDGL_04_SXDW AS b ON a.SXDWID = b.ID /*送修单位ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS c ON a.TJYH = c.LOGINNAME /*添加用户*/
GO
