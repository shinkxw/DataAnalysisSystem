
--对象表
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[DXZID]--对象组ID
      ,a.[DXMC]--对象名称
      ,a.[DXLX]--对象类型
      ,a.[DXID]--对象ID
      ,c.SCHOOLID as c_DXZ_SCHOOLID--对象组表 学校ID
      ,c.DXZMC as c_DXZ_DXZMC--对象组表 对象组名称
      ,c.DXIDLB as c_DXZ_DXIDLB--对象组表 对象ID列表
      ,c.DXMCLB as c_DXZ_DXMCLB--对象组表 对象名称列表

FROM dbo.EDU_ELE_10_DX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*对象组ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/
GO
