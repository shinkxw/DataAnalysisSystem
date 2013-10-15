
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
      ,d.SCHOOLID as d_BXLX_SCHOOLID--报修类型表 学校
      ,d.TypeName as d_BXLX_TypeName--报修类型表 类型名称
      ,d.Remark as d_BXLX_Remark--报修类型表 备注

FROM dbo.EDU_OAXT_15_A08_BXGL AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A07_BXLX AS d ON a.TypeID = d.ID /*报修类型ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
