
--对象组划分层级表
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DXZHFCJ_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[DXZID]--对象组ID
      ,a.[HFFSID]--划分方式ID
      ,a.[CJMC]--层级名称
      ,a.[PLSX]--排列顺序
      ,c.SCHOOLID as c_DXZ_SCHOOLID--对象组表 学校ID
      ,c.DXZMC as c_DXZ_DXZMC--对象组表 对象组名称
      ,c.DXIDLB as c_DXZ_DXIDLB--对象组表 对象ID列表
      ,c.DXMCLB as c_DXZ_DXMCLB--对象组表 对象名称列表
      ,d.SCHOOLID as d_DXZHFFS_SCHOOLID--对象组划分方式表 学校ID
      ,d.DXZID as d_DXZHFFS_DXZID--对象组划分方式表 对象组ID
      ,d.HFFSMC as d_DXZHFFS_HFFSMC--对象组划分方式表 划分方式名称

FROM dbo.EDU_ELE_10_DXZHFCJ AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*对象组ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFFS AS d ON a.HFFSID = d.ID /*划分方式ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/
GO
