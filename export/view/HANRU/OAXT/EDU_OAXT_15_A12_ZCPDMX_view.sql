
--资产盘点明细表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A12_ZCPDMX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[AID]--库存表ID
      ,a.[PID]--盘点表ID
      ,a.[PUserID]--盘点人ID
      ,a.[Storesum]--库存数
      ,a.[RealSum]--实存数
      ,a.[Name]--资产名称
      ,a.[AllCount]--资产总量
      ,a.[Remark]--备注
      ,a.[BorrowCount]--借用数量
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
      ,c.RKL as c_ZCKC_RKL--资产库存表 入库量
      ,d.SCHOOLID as d_ZCPD_SCHOOLID--资产盘点表 学校
      ,d.Title as d_ZCPD_Title--资产盘点表 盘点名称
      ,d.PanDate as d_ZCPD_PanDate--资产盘点表 盘点日期
      ,d.PanTypeIDs as d_ZCPD_PanTypeIDs--资产盘点表 盘点目录ID列表
      ,d.Remark as d_ZCPD_Remark--资产盘点表 备注
      ,d.Statu as d_ZCPD_Statu--资产盘点表 状态
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

FROM dbo.EDU_OAXT_15_A12_ZCPDMX AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A11_ZCPD AS d ON a.PID = d.ID /*盘点表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_ELE_01_USER AS e ON a.PUserID = e.LOGINNAME /*盘点人ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
