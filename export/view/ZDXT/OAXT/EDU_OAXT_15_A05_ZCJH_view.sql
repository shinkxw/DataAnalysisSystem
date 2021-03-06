
--资产借还表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A05_ZCJH_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TypeID]--资产目录表ID
      ,a.[ClassID]--资产大类表ID
      ,a.[AID]--库存表ID
      ,a.[SumCount]--数量
      ,a.[Unit]--单位
      ,a.[Borrower]--借用方
      ,a.[Remark]--备注
      ,a.[Registdate]--登记时间
      ,c.SCHOOLID as c_ZCML_SCHOOLID--资产目录表 学校
      ,c.Name as c_ZCML_Name--资产目录表 校产目录
      ,c.Superid as c_ZCML_Superid--资产目录表 父目录ID
      ,c.Remark as c_ZCML_Remark--资产目录表 备注
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--资产大类表 学校
      ,d.Name as d_ZCDL_Name--资产大类表 校产类型
      ,d.Remark as d_ZCDL_Remark--资产大类表 备注
      ,e.SCHOOLID as e_ZCKC_SCHOOLID--资产库存表 学校
      ,e.TypeID as e_ZCKC_TypeID--资产库存表 资产目录表ID
      ,e.ClassID as e_ZCKC_ClassID--资产库存表 资产大类表ID
      ,e.Name as e_ZCKC_Name--资产库存表 资产名称
      ,e.Info as e_ZCKC_Info--资产库存表 资产规格
      ,e.Productdate as e_ZCKC_Productdate--资产库存表 出厂时间
      ,e.Price as e_ZCKC_Price--资产库存表 单价
      ,e.SumCount as e_ZCKC_SumCount--资产库存表 数量
      ,e.Merchant as e_ZCKC_Merchant--资产库存表 供应商
      ,e.Vender as e_ZCKC_Vender--资产库存表 厂家
      ,e.Remark as e_ZCKC_Remark--资产库存表 备注
      ,e.AllCount as e_ZCKC_AllCount--资产库存表 资产总量
      ,e.RKL as e_ZCKC_RKL--资产库存表 入库量
      ,e.RQ as e_ZCKC_RQ--资产库存表 日期
      ,e.DW as e_ZCKC_DW--资产库存表 单位
      ,e.ZJ as e_ZCKC_ZJ--资产库存表 总价
      ,e.SYBM as e_ZCKC_SYBM--资产库存表 使用部门
      ,e.CFDW as e_ZCKC_CFDW--资产库存表 存放单位
      ,e.FZR as e_ZCKC_FZR--资产库存表 负责人
      ,e.CZFS as e_ZCKC_CZFS--资产库存表 处置方式

FROM dbo.EDU_OAXT_15_A05_ZCJH AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*资产目录表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*资产大类表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A03_ZCKC AS e ON a.AID = e.ID /*库存表ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校*/
GO
