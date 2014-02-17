
--报修管理表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A08_BXGL_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[AID]--库存表ID
      ,a.[TypeID]--报修类型ID
      ,a.[Title]--报修主题
      ,a.[Telephone]--联系电话
      ,a.[Repairplace]--报修地点
      ,a.[Repaircontent]--报修内容
      ,a.[Repairpeople]--维修人
      ,a.[RepairDate]--维修时间
      ,a.[ReadrID]--阅读情况
      ,a.[Readr]--阅读情况
      ,a.[Applicant]--申请人
      ,a.[Approver]--审批人
      ,a.[Evaluate]--评价
      ,a.[StartDate]--开始时间
      ,a.[Status]--状态
      ,a.[Remark]--备注
      ,a.[SumCount]--数量
      ,a.[GZTP]--故障图片
      ,a.[WCZT]--完成状态
      ,a.[SCZT]--删除状态
      ,c.SCHOOLID as c_ZCKC_SCHOOLID--资产库存表 学校
      ,c.TypeID as c_ZCKC_TypeID--资产库存表 资产目录表ID
      ,c.ClassID as c_ZCKC_ClassID--资产库存表 资产大类表ID
      ,c.Name as c_ZCKC_Name--资产库存表 资产名称
      ,c.Info as c_ZCKC_Info--资产库存表 资产规格
      ,c.Productdate as c_ZCKC_Productdate--资产库存表 出厂时间
      ,c.Price as c_ZCKC_Price--资产库存表 单价
      ,c.SumCount as c_ZCKC_SumCount--资产库存表 数量
      ,c.Merchant as c_ZCKC_Merchant--资产库存表 供应商
      ,c.Vender as c_ZCKC_Vender--资产库存表 厂家
      ,c.Remark as c_ZCKC_Remark--资产库存表 备注
      ,c.AllCount as c_ZCKC_AllCount--资产库存表 资产总量
      ,d.SCHOOLID as d_BXLX_SCHOOLID--报修类型表 学校
      ,d.TypeName as d_BXLX_TypeName--报修类型表 类型名称
      ,d.Remark as d_BXLX_Remark--报修类型表 备注
      ,e.SCHOOLID as e_USER_SCHOOLID--应用系统用户表 学校ID
      ,e.APPID as e_USER_APPID--应用系统用户表 应用ID
      ,e.PWD as e_USER_PWD--应用系统用户表 密码
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
      ,f.SCHOOLID as f_USER_SCHOOLID--应用系统用户表 学校ID
      ,f.APPID as f_USER_APPID--应用系统用户表 应用ID
      ,f.PWD as f_USER_PWD--应用系统用户表 密码
      ,f.STATUS as f_USER_STATUS--应用系统用户表 用户状态
      ,f.USERTYPE as f_USER_USERTYPE--应用系统用户表 用户类别
      ,f.USERID as f_USER_USERID--应用系统用户表 用户ID
      ,f.ROLEIDLst as f_USER_ROLEIDLst--应用系统用户表 用户角色
      ,f.XM as f_USER_XM--应用系统用户表 姓名
      ,f.XB as f_USER_XB--应用系统用户表 性别
      ,f.QQ as f_USER_QQ--应用系统用户表 QQ
      ,f.DZYJ as f_USER_DZYJ--应用系统用户表 电子邮件
      ,f.LXDH as f_USER_LXDH--应用系统用户表 联系电话
      ,f.ZJDLSJ as f_USER_ZJDLSJ--应用系统用户表 最近一次登录时间
      ,f.DLCGCS as f_USER_DLCGCS--应用系统用户表 登录成功次数
      ,f.YHCJSJ as f_USER_YHCJSJ--应用系统用户表 用户创建时间
      ,f.YHRY as f_USER_YHRY--应用系统用户表 用户荣誉
      ,f.YHJF as f_USER_YHJF--应用系统用户表 用户积分

FROM dbo.EDU_OAXT_15_A08_BXGL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS d ON a.TypeID = d.ID /*报修类型ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.Applicant = e.LOGINNAME /*申请人*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS f ON a.Approver = f.LOGINNAME /*审批人*/ AND a.SCHOOLID = f.SCHOOLID /*学校*/
GO
