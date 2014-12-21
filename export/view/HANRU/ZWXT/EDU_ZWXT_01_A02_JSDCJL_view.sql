
--教师订餐记录表
CREATE VIEW [dbo].[VIEW_EDU_ZWXT_01_A02_JSDCJL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[CPID]--菜品ID
      ,a.[DCSJ]--订餐时间
      ,a.[DCRID]--订餐人ID
      ,a.[SDSL]--所订数量
      ,c.SCHOOLID as c_JSDCCP_SCHOOLID--教师订餐菜品表 学校
      ,c.MC as c_JSDCCP_MC--教师订餐菜品表 名称
      ,c.JG as c_JSDCCP_JG--教师订餐菜品表 价格
      ,c.ZL as c_JSDCCP_ZL--教师订餐菜品表 主料
      ,c.TP as c_JSDCCP_TP--教师订餐菜品表 图片
      ,c.JS as c_JSDCCP_JS--教师订餐菜品表 介绍
      ,c.GYSL as c_JSDCCP_GYSL--教师订餐菜品表 供应数量
      ,c.SFKQ as c_JSDCCP_SFKQ--教师订餐菜品表 是否开启
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

FROM dbo.EDU_ZWXT_01_A02_JSDCJL AS a LEFT OUTER JOIN
      dbo.EDU_ZWXT_01_A01_JSDCCP AS c ON a.CPID = c.ID /*菜品ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS d ON a.DCRID = d.LOGINNAME /*订餐人ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
