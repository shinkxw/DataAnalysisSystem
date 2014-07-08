
--维修计划表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A09_WXJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[AID]--库存表ID
      ,a.[Title]--计划标题
      ,a.[Content]--维修内容
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
      ,c.RQ as c_ZCKC_RQ--资产库存表 日期
      ,c.DW as c_ZCKC_DW--资产库存表 单位
      ,c.ZJ as c_ZCKC_ZJ--资产库存表 总价
      ,c.SYBM as c_ZCKC_SYBM--资产库存表 使用部门
      ,c.CFDW as c_ZCKC_CFDW--资产库存表 存放单位
      ,c.FZR as c_ZCKC_FZR--资产库存表 负责人
      ,c.CZFS as c_ZCKC_CZFS--资产库存表 处置方式

FROM dbo.EDU_OAXT_15_A09_WXJH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS c ON a.AID = c.ID /*库存表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/
GO
