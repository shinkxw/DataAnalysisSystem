
--对象组角色表
CREATE VIEW [dbo].[VIEW_EDU_ELE_11_DXZJS_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[DXZID]--对象组ID
      ,a.[JSLBID]--角色类别ID
      ,a.[JSMC]--角色名称
      ,a.[DXZJDBMJH]--对象组节点编码集合
      ,a.[DXZJDMCLB]--对象组节点名称列表
      ,c.SCHOOLID as c_DXZ_SCHOOLID--对象组表 学校ID
      ,c.DXZMC as c_DXZ_DXZMC--对象组表 对象组名称
      ,c.DXIDLB as c_DXZ_DXIDLB--对象组表 对象ID列表
      ,c.DXMCLB as c_DXZ_DXMCLB--对象组表 对象名称列表
      ,d.SCHOOLID as d_DXZJSLB_SCHOOLID--对象组角色类别表 学校ID
      ,d.DXZID as d_DXZJSLB_DXZID--对象组角色类别表 对象组ID
      ,d.JSLBMC as d_DXZJSLB_JSLBMC--对象组角色类别表 角色类别名称

FROM dbo.EDU_ELE_11_DXZJS AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*对象组ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_11_DXZJSLB AS d ON a.JSLBID = d.ID /*角色类别ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
