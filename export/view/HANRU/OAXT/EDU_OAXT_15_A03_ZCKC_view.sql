
--资产库存表
CREATE VIEW [dbo].[VIEW_EDU_OAXT_15_A03_ZCKC_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校
      ,a.[TypeID]--资产目录表ID
      ,a.[ClassID]--资产大类表ID
      ,a.[Name]--资产名称
      ,a.[Info]--资产规格
      ,a.[Productdate]--出厂时间
      ,a.[Price]--单价
      ,a.[SumCount]--数量
      ,a.[Merchant]--供应商
      ,a.[Vender]--厂家
      ,a.[Remark]--备注
      ,a.[AllCount]--资产总量
      ,a.[RKL]--入库量
      ,a.[RQ]--日期
      ,a.[DW]--单位
      ,a.[ZJ]--总价
      ,a.[SYBM]--使用部门
      ,a.[CFDW]--存放单位
      ,a.[FZR]--负责人
      ,a.[CZFS]--处置方式
      ,c.SCHOOLID as c_ZCML_SCHOOLID--资产目录表 学校
      ,c.Name as c_ZCML_Name--资产目录表 校产目录
      ,c.Superid as c_ZCML_Superid--资产目录表 父目录ID
      ,c.Remark as c_ZCML_Remark--资产目录表 备注
      ,d.SCHOOLID as d_ZCDL_SCHOOLID--资产大类表 学校
      ,d.Name as d_ZCDL_Name--资产大类表 校产类型
      ,d.Remark as d_ZCDL_Remark--资产大类表 备注

FROM dbo.EDU_OAXT_15_A03_ZCKC AS a LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A01_ZCML AS c ON a.TypeID = c.ID /*资产目录表ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校*/ LEFT OUTER JOIN
      dbo.EDU_OAXT_15_A02_ZCDL AS d ON a.ClassID = d.ID /*资产大类表ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校*/
GO
