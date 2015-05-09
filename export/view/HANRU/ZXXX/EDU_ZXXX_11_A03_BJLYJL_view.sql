
--班级领用记录表
CREATE VIEW [dbo].[VIEW_EDU_ZXXX_11_A03_BJLYJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[BJID]--班级ID
      ,a.[ZCID]--资产ID
      ,a.[LYR]--领用人
      ,a.[LYSL]--领用数量
      ,a.[LYSJ]--领用时间
      ,a.[SHZT]--审核状态
      ,a.[SHYHID]--审核用户ID
      ,c.SCHOOLID as c_BJ_SCHOOLID--班级数据类表 学校名
      ,c.NJ as c_BJ_NJ--班级数据类表 年级号
      ,c.BJ as c_BJ_BJ--班级数据类表 班级名称
      ,c.JBNY as c_BJ_JBNY--班级数据类表 建班年月
      ,c.BZRGH as c_BJ_BZRGH--班级数据类表 班主任工号
      ,c.BZXH as c_BJ_BZXH--班级数据类表 班长学号
      ,c.BJRYCH as c_BJ_BJRYCH--班级数据类表 班级荣誉称号
      ,c.XZ as c_BJ_XZ--班级数据类表 学制
      ,c.BJLXM as c_BJ_BJLXM--班级数据类表 班级类型码
      ,[cb].MC as c_BJ_BJLXM_MC--中小学班级类型代码表 名称
      ,c.WLLX as c_BJ_WLLX--班级数据类表 文理类型
      ,c.BYRQ as c_BJ_BYRQ--班级数据类表 毕业日期
      ,c.SFSSMZSYJXB as c_BJ_SFSSMZSYJXB--班级数据类表 是否少数民族双语教学班
      ,[cc].MC as c_BJ_SFSSMZSYJXB_MC--是否标志代码表 名称
      ,c.SYJXMSM as c_BJ_SYJXMSM--班级数据类表 双语教学模式码
      ,[cd].MC as c_BJ_SYJXMSM_MC--少数民族双语教学模式代码表 名称
      ,[cd].SM as c_BJ_SYJXMSM_SM--少数民族双语教学模式代码表 说明
      ,c.BZRID as c_BJ_BZRID--班级数据类表 班主任ID
      ,c.ZT as c_BJ_ZT--班级数据类表 状态
      ,c.PLSX as c_BJ_PLSX--班级数据类表 排列顺序
      ,c.BJLBID as c_BJ_BJLBID--班级数据类表 班级类别ID
      ,d.SCHOOLID as d_RKJL_SCHOOLID--入库记录表 学校
      ,d.ZCM as d_RKJL_ZCM--入库记录表 资产名
      ,d.SL as d_RKJL_SL--入库记录表 数量
      ,d.DJ as d_RKJL_DJ--入库记录表 单价
      ,d.RKSJ as d_RKJL_RKSJ--入库记录表 入库时间
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

FROM dbo.EDU_ZXXX_11_A03_BJLYJL AS a LEFT OUTER JOIN
      dbo.EDU_ZXXX_03_01_BJ AS c ON a.BJID = c.BH /*班级ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ZXXX_11_A01_RKJL AS d ON a.ZCID = d.ID /*资产ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.SHYHID = e.LOGINNAME /*审核用户ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_JY_ZXXBJLX AS [cb] ON c.BJLXM = [cb].DM /*班级类型码*/ LEFT OUTER JOIN
      dbo.EDU_JY_SFBZ AS [cc] ON c.SFSSMZSYJXB = [cc].DM /*是否少数民族双语教学班*/ LEFT OUTER JOIN
      dbo.EDU_JY_SSMZSYJXMS AS [cd] ON c.SYJXMSM = [cd].DM /*双语教学模式码*/
GO
