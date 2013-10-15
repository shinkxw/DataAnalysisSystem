
--资产变更表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A06_ZCBG_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TypeID]--类别(领用、借用、报损)
      ,a.[TypeName]--类别名称
      ,a.[AID]--库存表ID
      ,a.[Name]--资产名称
      ,a.[Option]--操作
      ,a.[RegistTime]--登记时间
      ,a.[Remark]--备注
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

FROM dbo.EDU_OAXT_15_A06_ZCBG AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
