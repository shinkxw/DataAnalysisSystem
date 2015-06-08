
--校产表
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_05_A03_XC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[XCLXID]--校产类型ID
      ,a.[XCMLID]--校产目录ID
      ,a.[DQBGYHID]--当前保管用户ID
      ,a.[MC]--名称
      ,a.[GG]--规格
      ,a.[DJ]--单价
      ,a.[SL]--数量
      ,a.[DW]--单位
      ,a.[SCRQ]--生产日期
      ,a.[RKSJ]--入库时间
      ,a.[SCCJ]--生产厂家
      ,a.[DQZT]--当前状态
      ,a.[BZ]--备注
      ,c.SCHOOLID as c_XCLX_SCHOOLID--校产类型表 学校ID
      ,c.LXMC as c_XCLX_LXMC--校产类型表 类型名称
      ,d.SCHOOLID as d_XCML_SCHOOLID--校产目录表 学校ID
      ,d.MLMC as d_XCML_MLMC--校产目录表 目录名称
      ,d.FMLID as d_XCML_FMLID--校产目录表 父目录ID
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,'' as e_USER_PWD--应用系统用户表 密码
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

FROM dbo.EDU_ZWXT_05_A03_XC AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A01_XCLX AS c ON a.XCLXID = c.ID /*校产类型ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ZWXT_05_A02_XCML AS d ON a.XCMLID = d.ID /*校产目录ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.DQBGYHID = e.LOGINNAME /*当前保管用户ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/
GO
