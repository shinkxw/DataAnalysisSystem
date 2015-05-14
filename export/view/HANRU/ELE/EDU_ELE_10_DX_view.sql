
--对象表
CREATE VIEW [dbo].[VIEW_EDU_ELE_10_DX_DISP]
AS
SELECT a.[ID]--编号
      ,a.[SCHOOLID]--学校ID
      ,a.[DXZID]--对象组ID
      ,a.[HFFSID]--划分方式ID
      ,a.[JDID]--节点ID
      ,a.[DXMC]--对象名称
      ,a.[DXLX]--对象类型
      ,a.[DXID]--对象ID
      ,c.SCHOOLID as c_DXZ_SCHOOLID--对象组表 学校ID
      ,c.DXZMC as c_DXZ_DXZMC--对象组表 对象组名称
      ,c.DXIDLB as c_DXZ_DXIDLB--对象组表 对象ID列表
      ,c.DXMCLB as c_DXZ_DXMCLB--对象组表 对象名称列表
      ,d.SCHOOLID as d_DXZHFFS_SCHOOLID--对象组划分方式表 学校ID
      ,d.DXZID as d_DXZHFFS_DXZID--对象组划分方式表 对象组ID
      ,d.HFFSMC as d_DXZHFFS_HFFSMC--对象组划分方式表 划分方式名称
      ,e.SCHOOLID as e_DXZJD_SCHOOLID--对象组节点表 学校ID
      ,e.DXZID as e_DXZJD_DXZID--对象组节点表 对象组ID
      ,e.HFFSID as e_DXZJD_HFFSID--对象组节点表 划分方式ID
      ,e.HFCJID as e_DXZJD_HFCJID--对象组节点表 划分层级ID
      ,e.FJDID as e_DXZJD_FJDID--对象组节点表 父节点ID
      ,e.JDMC as e_DXZJD_JDMC--对象组节点表 节点名称

FROM dbo.EDU_ELE_10_DX AS a LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZ AS c ON a.DXZID = c.ID /*对象组ID*/ AND a.SCHOOLID = c.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZHFFS AS d ON a.HFFSID = d.ID /*划分方式ID*/ AND a.SCHOOLID = d.SCHOOLID /*学校ID*/ LEFT OUTER JOIN
      dbo.EDU_ELE_10_DXZJD AS e ON a.JDID = e.ID /*节点ID*/ AND a.SCHOOLID = e.SCHOOLID /*学校ID*/
GO
